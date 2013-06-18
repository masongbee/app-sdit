<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class	: M_mapelkelas
 * 
 * Table	: mapelkelas
 *  
 * @author masongbee
 *
 */
class M_mapelkelas extends CI_Model{

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
	
	function getAllMapel(){
		$sql = "SELECT mapel_id, mapel_nama
			FROM mapel";
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
	
	function getAllGuru(){
		$sql = "SELECT guru_id, guru_nama, CONCAT('[', guru_nik, '] - ', guru_nama) AS guru_niknama
			FROM guru";
		$query  = $this->db->query($sql)->result();
		$total  = $this->db->get('guru')->num_rows();
		
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
		$sql = "SELECT mapel_kelas.*, kelas.kelas_tingkat, kelas.kelas_nama,
				CONCAT('[', kelas.kelas_tingkat, '] - ', kelas.kelas_nama) AS kelas_tingkatnama,
				mapel.mapel_id, mapel.mapel_nama, guru.guru_id, guru_nama,
				CONCAT('[', guru.guru_nik, '] - ', guru.guru_nama) AS guru_niknama
			FROM mapel_kelas JOIN kelas ON(kelas.kelas_id = mapel_kelas.kelas_id)
			JOIN guru ON(guru.guru_id = mapel_kelas.guru_id)
			JOIN mapel ON(mapel.mapel_id = mapel_kelas.mapel_id)";
		if($thn_pelajaran!='' && $kelas!=''){
			$sql .= " WHERE mapel_kelas.mapelkelas_thnpelajaran = '".$thn_pelajaran."' AND mapel_kelas.kelas_id = ".$kelas;
		}
		$sql .= " LIMIT ".$start.",".$limit;
		
		/* query untuk mendapatkan total record */
		$sql_total = "SELECT COUNT(*) AS total
			FROM mapel_kelas JOIN kelas ON(kelas.kelas_id = mapel_kelas.kelas_id)
			JOIN guru ON(guru.guru_id = mapel_kelas.guru_id)
			JOIN mapel ON(mapel.mapel_id = mapel_kelas.mapel_id)";
		if($thn_pelajaran!='' && $kelas!=''){
			$sql_total .= " WHERE mapel_kelas.mapelkelas_thnpelajaran = '".$thn_pelajaran."' AND mapel_kelas.kelas_id = ".$kelas;
		}
		
		$query  = $this->db->query($sql)->result();
		//$total  = $this->db->get('mapel_kelas')->num_rows();
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
		
		$pkey = array('mapelkelas_id'=>$data->mapelkelas_id);
		$arrdata = array(
			'mapelkelas_thnpelajaran'=>$data->mapelkelas_thnpelajaran
		);
		if(is_numeric($data->kelas_tingkatnama)){
			$arrdata['kelas_id'] = $data->kelas_tingkatnama;
		}
		if(is_numeric($data->guru_nama)){
			$arrdata['guru_id'] = $data->guru_nama;
		}
		if(is_numeric($data->mapel_nama)){
			$arrdata['mapel_id'] = $data->mapel_nama;
		}
		
		if($this->db->get_where('mapel_kelas', $pkey)->num_rows() > 0){
			/*
			 * Data Exist
			 */
			$this->db->where($pkey)->update('mapel_kelas', $arrdata);
			$last   = $data;
			
		}else{
			/*
			 * Data Not Exist
			 * 
			 * Process Insert
			 */
			$this->db->insert('mapel_kelas', $arrdata);
			$last   = $this->db->order_by('kelas_id', 'ASC')->get('mapel_kelas')->row();
			
		}
		
		$total  = $this->db->get('mapel_kelas')->num_rows();
		
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
		$pkey = array('mapelkelas_id'=>$data->mapelkelas_id);
		
		$this->db->where($pkey)->delete('mapel_kelas');
		
		$total  = $this->db->get('mapel_kelas')->num_rows();
		$last = $this->db->get('mapel_kelas')->result();
		
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