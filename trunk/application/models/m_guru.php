<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class	: M_guru
 * 
 * Table	: guru
 *  
 * @author masongbee
 *
 */
class M_guru extends CI_Model{

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
		$query  = $this->db->limit($limit, $start)->order_by('guru_nama', 'ASC')->get('m_guru')->result();
		$total  = $this->db->get('m_guru')->num_rows();
		
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
		
		$pkey = array('guru_id'=>$data->guru_id);
		
		if($this->db->get_where('m_guru', $pkey)->num_rows() > 0){
			/*
			 * Data Exist
			 */
			$this->db->where($pkey)->update('m_guru', $data);
			$last   = $data;
			
		}else{
			/*
			 * Data Not Exist
			 * 
			 * Process Insert
			 */
			$this->firephp->log($data);
			$arrdata = array(
							 'guru_nik'=>$data->guru_nik,
							 'guru_nama'=>$data->guru_nama,
							 'guru_tmptlahir'=>$data->guru_tmptlahir,
							 'guru_tgllahir'=>date('Y-m-d', strtotime($data->guru_tgllahir)),
							 'guru_alamat'=>$data->guru_alamat,
							 'guru_telp'=>$data->guru_telp,
							 'guru_hp'=>$data->guru_hp,
							 'guru_status'=>$data->guru_status,
							 'guru_pendidikan'=>$data->guru_pendidikan,
							 'guru_thnmasuk'=>$data->guru_thnmasuk,
							 'guru_jabatan'=>$data->guru_jabatan
						);
			$this->db->insert('m_guru', $arrdata);
			$last   = $this->db->order_by('guru_nama', 'ASC')->get('m_guru')->row();
			
		}
		
		$total  = $this->db->get('m_guru')->num_rows();
		
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
		$pkey = array('guru_id'=>$data->guru_id);
		
		$this->db->where($pkey)->delete('m_guru');
		
		$total  = $this->db->get('m_guru')->num_rows();
		$last = $this->db->get('m_guru')->result();
		
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