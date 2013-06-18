<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class	: M_raport
 * 
 * Table	: nilai_siswa
 *
 */
class M_raport extends CI_Model{

	function __construct(){
		parent::__construct();
	}
	
	function getAllMapel($kelas){
		$sql = "SELECT mapel.mapel_id, mapel.mapel_nama
			FROM mapel_kelas JOIN mapel ON(mapel.mapel_id = mapel_kelas.mapel_id)
			WHERE mapel_kelas.kelas_id = ".$kelas;
		$query  = $this->db->query($sql)->result();
		$total  = $this->db->query($sql)->num_rows();
		
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
	
	function getMapelByKelas($thn_pelajaran, $kelas){
		$sql = "SELECT mapel_id
			FROM mapel_kelas
			WHERE mapel_kelas.mapelkelas_thnpelajaran = '".$thn_pelajaran."'
				AND mapel_kelas.kelas_id = ".$kelas;
		return $this->db->query($sql)->result();
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
	function getAll($kelas, $thn_pelajaran, $mapel){
		$sql = "SELECT nilai_id
			FROM nilai_siswa JOIN siswa_kelas ON(siswa_kelas.siswakelas_id = nilai_siswa.siswakelas_id)
			WHERE siswa_kelas.kelas_id = ".$kelas."
				AND siswa_kelas.siswakelas_thnpelajaran = '".$thn_pelajaran."'
				AND nilai_siswa.mapel_id = ".$mapel."
			LIMIT 1";
		if($this->db->query($sql)->num_rows() == 0){
			//get mapel berdasarkan kelas
			$mapel_kelas = $this->getMapelByKelas($thn_pelajaran, $kelas);
			//generate data nilai siswa ke dalam db.nilai_siswa
			$lock_tbl = "LOCK TABLE nilai_siswa WRITE, siswa_kelas WRITE";
			$this->db->query($lock_tbl);
			if(sizeof($mapel_kelas) > 0){
				foreach($mapel_kelas as $row){
					$sql_pre_data = "INSERT INTO nilai_siswa (nilai_siswa.siswakelas_id, nilai_siswa.mapel_id)
						SELECT siswa_kelas.siswakelas_id, ".$row->mapel_id." AS mapel_id
						FROM siswa_kelas
						WHERE siswa_kelas.kelas_id = ".$kelas."
							AND siswa_kelas.siswakelas_thnpelajaran = '".$thn_pelajaran."'";
					$this->db->query($sql_pre_data);
				}
			}
			$unlock_tbl = "UNLOCK TABLES";
			$this->db->query($unlock_tbl);
		}
		
		$sql = "SELECT nilai_siswa.*, siswa.siswa_nama, siswa.siswa_nis, CONCAT('[', siswa.siswa_nis, '] - ', siswa.siswa_nama) AS siswa_nisnama
			FROM nilai_siswa JOIN siswa_kelas ON(siswa_kelas.siswakelas_id = nilai_siswa.siswakelas_id)
			LEFT JOIN siswa ON(siswa.siswa_id = siswa_kelas.siswa_id)
			WHERE siswa_kelas.kelas_id = ".$kelas."
				AND siswa_kelas.siswakelas_thnpelajaran = '".$thn_pelajaran."'
				AND nilai_siswa.mapel_id = ".$mapel;
		$query  = $this->db->query($sql)->result();
		$total  = $this->db->query($sql)->num_rows();
		
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
		
		$pkey = array('nilai_id'=>$data->nilai_id);
		
		if($this->db->get_where('nilai_siswa', $pkey)->num_rows() > 0){
			/*
			 * Data Exist
			 */
			$this->firephp->log($data);
			$arrdatau = array(
				'nilai_uh1'=>$data->nilai_uh1,
				'nilai_uh2'=>$data->nilai_uh2,
				'nilai_uh3'=>$data->nilai_uh3,
				'nilai_uh_rt2'=>$data->nilai_uh_rt2,
				'nilai_uts'=>$data->nilai_uts,
				'nilai_t1'=>$data->nilai_t1,
				'nilai_t2'=>$data->nilai_t2,
				'nilai_t3'=>$data->nilai_t3,
				'nilai_t_rt2'=>$data->nilai_t_rt2,
				'nilai_uas'=>$data->nilai_uas,
				'nilai_total'=>$data->nilai_total
			);
			$this->db->where($pkey)->update('nilai_siswa', $arrdatau);
			$last   = $data;
			
		}
		
		$total  = $this->db->get('nilai_siswa')->num_rows();
		
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
		$pkey = array('nilai_id'=>$data->nilai_id);
		
		$this->db->where($pkey)->delete('nilai_siswa');
		
		$total  = $this->db->get('nilai_siswa')->num_rows();
		$last = $this->db->get('nilai_siswa')->result();
		
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