<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class	: M_user
 * 
 * Table	: user
 *  
 * @author masongbee
 *
 */
class M_user extends CI_Model{

	function __construct(){
		parent::__construct();
	}
	
	function getAllGuru(){
		$sql = "SELECT guru_id, guru_nama
			FROM guru";
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
	function getAll($start, $page, $limit){
		$sql = "SELECT user_id, user_name, '[hidden]' AS user_password, user_aktif, user_guru, guru_id, guru_nama
			FROM users JOIN guru ON(guru.guru_id = users.user_guru)";
		$sql_total = "SELECT COUNT(*) AS total
			FROM users JOIN guru ON(guru.guru_id = users.user_guru)";
		
		$query  = $this->db->query($sql)->result();
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
		
		$pkey = array('user_id'=>$data->user_id);
		$arrdata = array(
			'user_name'=>$data->user_name,
			'user_password'=>md5($data->user_password)
		);
		if(is_numeric($data->guru_nama)){
			$arrdata['user_guru'] = $data->guru_nama;
		}
		
		if($this->db->get_where('users', $pkey)->num_rows() > 0){
			/*
			 * Data Exist
			 */
			$this->db->where($pkey)->update('users', $arrdata);
			$last   = $data;
			
		}else{
			/*
			 * Data Not Exist
			 * 
			 * Process Insert
			 */
			$this->db->insert('users', $arrdata);
			$last   = $this->db->order_by('user_name', 'ASC')->get('users')->row();
			
		}
		
		$total  = $this->db->get('users')->num_rows();
		
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
		$pkey = array('user_id'=>$data->user_id);
		
		$this->db->where($pkey)->delete('users');
		
		$total  = $this->db->get('users')->num_rows();
		$last = $this->db->get('users')->result();
		
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