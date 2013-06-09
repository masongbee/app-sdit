<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class	: M_siswakelas
 * 
 * Table	: siswakelas
 *  
 * @author masongbee
 *
 */
class M_siswakelas extends CI_Model{

	function __construct(){
		parent::__construct();
	}
	
	function getAllKelas(){
		$sql = "SELECT kelas_id, kelas_tingkat, kelas_nama, CONCAT('[', kelas_tingkat, '] - ', kelas_nama) AS kelas_tingkatnama
			FROM kelas";
		$query  = $this->db->query($sql)->result();
		$total  = $this->db->get('kelas')->num_rows();
		
		$data   = array();
		foreach($query as $result){
			$data[] = $result;
		}
		
		$json	= array(
						'success'   => TRUE,
						'message'   => "Loaded data",
						'total'     => $total,
						'data'      => $data
		);
		
		return $json;
	}
	
	function getAllSiswa(){
		$sql = "SELECT siswa_id, siswa_nama, CONCAT('[', siswa_nis, '] - ', siswa_nama) AS siswa_nisnama
			FROM siswa";
		$query  = $this->db->query($sql)->result();
		$total  = $this->db->get('kelas')->num_rows();
		
		$data   = array();
		foreach($query as $result){
			$data[] = $result;
		}
		
		$json	= array(
						'success'   => TRUE,
						'message'   => "Loaded data",
						'total'     => $total,
						'data'      => $data
		);
		
		return $json;
	}
	
	/**
	 * Fungsi	: getAll
	 * 
	 * Untuk mengambil all-data
	 * 
	 * @param number $start
	 * @param number $page
	 * @param number $limit
	 * @return json
	 */
	function getAll($thn_pelajaran, $kelas, $start, $page, $limit){
		$sql = "SELECT siswa_kelas.*, kelas.kelas_tingkat, kelas.kelas_nama,
				CONCAT('[', kelas.kelas_tingkat, '] - ', kelas.kelas_nama) AS kelas_tingkatnama,
				siswa.siswa_nama,
				CONCAT('[', siswa.siswa_nis, '] - ', siswa.siswa_nama) AS siswa_nisnama
			FROM siswa_kelas JOIN kelas ON(kelas.kelas_id = siswa_kelas.kelas_id)
			JOIN siswa ON(siswa.siswa_id = siswa_kelas.siswa_id)";
		if($thn_pelajaran!='' && $kelas!=''){
			$sql .= " WHERE siswa_kelas.siswakelas_thnpelajaran = '".$thn_pelajaran."' AND siswa_kelas.kelas_id = ".$kelas;
		}
		$sql .= " LIMIT ".$start.",".$limit;
		
		/* query untuk mendapatkan total record */
		$sql_total = "SELECT COUNT(*) AS total
			FROM siswa_kelas JOIN kelas ON(kelas.kelas_id = siswa_kelas.kelas_id)
			JOIN siswa ON(siswa.siswa_id = siswa_kelas.siswa_id)";
		if($thn_pelajaran!='' && $kelas!=''){
			$sql_total .= " WHERE siswa_kelas.siswakelas_thnpelajaran = '".$thn_pelajaran."' AND siswa_kelas.kelas_id = ".$kelas;
		}
		
		$query  = $this->db->query($sql)->result();
		//$total  = $this->db->get('siswa_kelas')->num_rows();
		$total 	= $this->db->query($sql_total)->row()->total;
		
		$data   = array();
		foreach($query as $result){
			$data[] = $result;
		}
		
		$json	= array(
						'success'   => TRUE,
						'message'   => "Loaded data",
						'total'     => $total,
						'data'      => $data
		);
		
		return $json;
	}
	
	/**
	 * Fungsi	: save
	 * 
	 * Untuk menambah data baru atau mengubah data lama
	 * 
	 * @param array $data
	 * @return json
	 */
	function save($data){
		$last   = NULL;
		
		$pkey = array('siswakelas_id'=>$data->siswakelas_id);
		
		if($this->db->get_where('siswa_kelas', $pkey)->num_rows() > 0){
			/*
			 * Data Exist
			 */
			$this->db->where($pkey)->update('siswa_kelas', $data);
			$last   = $data;
			
		}else{
			/*
			 * Data Not Exist
			 * 
			 * Process Insert
			 */
			$this->firephp->log($data);
			$arrdata = array(
				'siswakelas_tingkat'=>$data->siswakelas_tingkat,
				'siswakelas_nama'=>$data->siswakelas_nama
			);
			$this->db->insert('siswa_kelas', $arrdata);
			$last   = $this->db->order_by('siswakelas_nama', 'ASC')->get('siswa_kelas')->row();
			
		}
		
		$total  = $this->db->get('siswa_kelas')->num_rows();
		
		$json   = array(
						"success"   => TRUE,
						"message"   => 'Data berhasil disimpan',
						'total'     => $total,
						"data"      => $last
		);
		
		return $json;
	}
	
	/**
	 * Fungsi	: delete
	 * 
	 * Untuk menghapus satu data
	 * 
	 * @param array $data
	 * @return json
	 */
	function delete($data){
		$this->firephp->log($data);
		$pkey = array('siswakelas_id'=>$data->siswakelas_id);
		
		$this->db->where($pkey)->delete('siswa_kelas');
		
		$total  = $this->db->get('siswa_kelas')->num_rows();
		$last = $this->db->get('siswa_kelas')->result();
		
		$json   = array(
						"success"   => TRUE,
						"message"   => 'Data berhasil dihapus',
						'total'     => $total,
						"data"      => $last
		);				
		return $json;
	}
}
?>