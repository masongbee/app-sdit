<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class	: M_siswa
 * 
 * Table	: siswa
 *  
 * @author masongbee
 *
 */
class M_siswa extends CI_Model{

	function __construct(){
		parent::__construct();
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
	function getAll($start, $page, $limit){
		$query  = $this->db->limit($limit, $start)->order_by('siswa_nama', 'ASC')->get('siswa')->result();
		$total  = $this->db->get('siswa')->num_rows();
		
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
		$this->firephp->log($data->siswa_tgllahir);
		$this->firephp->log(strtotime($data->siswa_tgllahir));
		$this->firephp->log(date('Y-m-d', strtotime('19 Jun, 2013')));
		$pkey = array('siswa_id'=>$data->siswa_id);
		$arrdata = array(
			'siswa_nis'=>$data->siswa_nis,
			'siswa_nama'=>$data->siswa_nama,
			'siswa_tmptlahir'=>$data->siswa_tmptlahir,
			'siswa_tgllahir'=>date('Y-m-d', strtotime($data->siswa_tgllahir)),
			'siswa_alamat'=>$data->siswa_alamat,
			'siswa_telp'=>$data->siswa_telp,
			'siswa_hp'=>$data->siswa_hp,
			'siswa_sekolah_asal'=>$data->siswa_sekolah_asal,
			'siswa_wali_nama'=>$data->siswa_wali_nama,
			'siswa_wali_pekerjaan'=>$data->siswa_wali_pekerjaan
		);
		
		if($this->db->get_where('siswa', $pkey)->num_rows() > 0){
			/*
			 * Data Exist
			 */
			$this->db->where($pkey)->update('siswa', $arrdata);
			$last   = $data;
			
		}else{
			/*
			 * Data Not Exist
			 * 
			 * Process Insert
			 */
			$this->db->insert('siswa', $arrdata);
			$last   = $this->db->order_by('siswa_nama', 'ASC')->get('siswa')->row();
			
		}
		
		$total  = $this->db->get('siswa')->num_rows();
		
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
		$pkey = array('siswa_id'=>$data->siswa_id);
		
		$this->db->where($pkey)->delete('siswa');
		
		$total  = $this->db->get('siswa')->num_rows();
		$last = $this->db->get('siswa')->result();
		
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