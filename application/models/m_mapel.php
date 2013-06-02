<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class	: M_mapel
 * 
 * Table	: mapel
 *  
 * @author masongbee
 *
 */
class M_mapel extends CI_Model{

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
		$query  = $this->db->limit($limit, $start)->order_by('mapel_nama', 'ASC')->get('mapel')->result();
		$total  = $this->db->get('mapel')->num_rows();
		
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
		
		$pkey = array('mapel_id'=>$data->mapel_id);
		
		if($this->db->get_where('mapel', $pkey)->num_rows() > 0){
			/*
			 * Data Exist
			 */
			$this->db->where($pkey)->update('mapel', $data);
			$last   = $data;
			
		}else{
			/*
			 * Data Not Exist
			 * 
			 * Process Insert
			 */
			/* Cek db.mapel.mapel_nama ==> Jika sudah ada maka tidak boleh ditambahkan */
			if($this->db->get_where('mapel', array('mapel_nama'=>$data->mapel_nama))->num_rows() > 0){
				$json   = array(
								"success"   => FALSE,
								"message"   => 'Data sudah pernah ditambahkan',
								'total'     => 0,
								"data"      => ''
				);
				
				return $json;
			}
			
			$this->firephp->log($data);
			$arrdata = array(
				'mapel_nama'=>$data->mapel_nama
			);
			$this->db->insert('mapel', $arrdata);
			$last   = $this->db->order_by('mapel_nama', 'ASC')->get('mapel')->row();
			
		}
		
		$total  = $this->db->get('mapel')->num_rows();
		
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
		$pkey = array('mapel_id'=>$data->mapel_id);
		
		$this->db->where($pkey)->delete('mapel');
		
		$total  = $this->db->get('mapel')->num_rows();
		$last = $this->db->get('mapel')->result();
		
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