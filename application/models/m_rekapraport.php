<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class	: M_rekapraport
 * 
 * Table	: nilai_siswa
 *
 */
class M_rekapraport extends CI_Model{

	function __construct(){
		parent::__construct();
	}
	
	function getAllMapel(){
		$query  = $this->db->get('mapel')->result();
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
	 * Fungsi	: getAll
	 * 
	 * Untuk mengambil all-data-nilai untuk Rekap Buku Raport
	 * 
	 * @param number $kelas
	 * @param number $thn_pelajaran
	 * @return json
	 */
	function getAll($kelas, $thn_pelajaran){
		$sql = "SELECT nilai_id
			FROM nilai_siswa JOIN siswa_kelas ON(siswa_kelas.siswakelas_id = nilai_siswa.siswakelas_id)
			WHERE siswa_kelas.kelas_id = ".$kelas."
				AND siswa_kelas.siswakelas_thnpelajaran = '".$thn_pelajaran."'
				AND nilai_siswa.mapel_id = ".$mapel."
			LIMIT 1";
		if($this->db->query($sql)->num_rows() == 0){
			//generate data nilai siswa ke dalam db.nilai_siswa
			$lock_tbl = "LOCK TABLE nilai_siswa WRITE, siswa_kelas WRITE";
			$this->db->query($lock_tbl);
			$sql_pre_data = "INSERT INTO nilai_siswa (nilai_siswa.siswakelas_id, nilai_siswa.mapel_id)
				SELECT siswa_kelas.siswakelas_id, ".$mapel." AS mapel_id
				FROM siswa_kelas
				WHERE siswa_kelas.kelas_id = ".$kelas."
					AND siswa_kelas.siswakelas_thnpelajaran = '".$thn_pelajaran."'";
			$this->db->query($sql_pre_data);
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
}
?>