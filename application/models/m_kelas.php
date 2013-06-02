<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class	: M_kelas
 * 
 * Table	: kelas
 *  
 * @author masongbee
 *
 */
class M_kelas extends CI_Model{

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
		$query  = $this->db->limit($limit, $start)->order_by('kelas_tingkat asc, kelas_nama asc')->get('kelas')->result();
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
	 * Fungsi	: save
	 * 
	 * Untuk menambah data baru atau mengubah data lama
	 * 
	 * @param array $data
	 * @return json
	 */
	function save($data){
		$last   = NULL;
		
		$pkey = array('kelas_id'=>$data->kelas_id);
		
		if($this->db->get_where('kelas', $pkey)->num_rows() > 0){
			/*
			 * Data Exist
			 */
			$this->db->where($pkey)->update('kelas', $data);
			$last   = $data;
			
		}else{
			/*
			 * Data Not Exist
			 * 
			 * Process Insert
			 */
			$this->firephp->log($data);
			$arrdata = array(
				'kelas_tingkat'=>$data->kelas_tingkat,
				'kelas_nama'=>$data->kelas_nama
			);
			$this->db->insert('kelas', $arrdata);
			$last   = $this->db->order_by('kelas_nama', 'ASC')->get('kelas')->row();
			
		}
		
		$total  = $this->db->get('kelas')->num_rows();
		
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
		$pkey = array('kelas_id'=>$data->kelas_id);
		
		$this->db->where($pkey)->delete('kelas');
		
		$total  = $this->db->get('kelas')->num_rows();
		$last = $this->db->get('kelas')->result();
		
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