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
		$sql = "SET @sql = NULL";
		$this->db->query($sql);
		
		$sql = "SELECT
				GROUP_CONCAT(DISTINCT
				  CONCAT(
					'MAX(IF(nilai_siswa.mapel_id = ''',
					mapel.mapel_id,
					''', nilai_siswa.nilai_total, NULL)) AS ',
					LCASE(REPLACE(REPLACE(mapel.mapel_nama,' ',''),'.',''))
				  )
				) INTO @sql
			FROM nilai_siswa 
			LEFT JOIN mapel ON mapel.mapel_id = nilai_siswa.mapel_id";
		$this->db->query($sql);
		
		/*$sql = "SET @sql = CONCAT('SELECT vu_all.*,
				((IFNULL(vu_all.qh,0) + IFNULL(vu_all.aa,0) + IFNULL(vu_all.fiqh,0) + IFNULL(vu_all.sn,0)
				+ IFNULL(vu_all.pkn,0) + IFNULL(vu_all.bhsindo,0) + IFNULL(vu_all.mtk,0)
				+ IFNULL(vu_all.ipa,0) + IFNULL(vu_all.ips,0) + IFNULL(vu_all.sbk,0)
				+ IFNULL(vu_all.penjasorkes,0) + IFNULL(vu_all.bhsarab,0) + IFNULL(vu_all.bhsinggr,0)
				+IFNULL(vu_all.bhsjawa,0) )/14) AS summary
			FROM
				(SELECT nilai_siswa.siswakelas_id, siswa.siswa_nis, siswa.siswa_nama,
				CONCAT(\"[\", siswa.siswa_nis, \"] - \", siswa.siswa_nama) AS siswa_nisnama, ', @sql, ' 
				FROM nilai_siswa JOIN siswa_kelas ON siswa_kelas.siswakelas_id = nilai_siswa.siswakelas_id
				JOIN siswa ON siswa.siswa_id = siswa_kelas.siswa_id
				WHERE siswa_kelas.siswakelas_thnpelajaran = \"".$thn_pelajaran."\" AND siswa_kelas.kelas_id = ".$kelas."
				GROUP BY nilai_siswa.siswakelas_id) AS vu_all')";*/
		$sql = "SET @sql = CONCAT('SELECT vu_all.*
			FROM
				(SELECT nilai_siswa.siswakelas_id, siswa.siswa_nis, siswa.siswa_nama,
				CONCAT(\"[\", siswa.siswa_nis, \"] - \", siswa.siswa_nama) AS siswa_nisnama, ', @sql, ' 
				FROM nilai_siswa JOIN siswa_kelas ON siswa_kelas.siswakelas_id = nilai_siswa.siswakelas_id
				JOIN siswa ON siswa.siswa_id = siswa_kelas.siswa_id
				WHERE siswa_kelas.siswakelas_thnpelajaran = \"".$thn_pelajaran."\" AND siswa_kelas.kelas_id = ".$kelas."
				GROUP BY nilai_siswa.siswakelas_id) AS vu_all')";
		$this->db->query($sql);
		
		$sql = "PREPARE stmt FROM @sql";
		$this->db->query($sql);
		
		$sql_main = "EXECUTE stmt";
		$query_main = $this->db->query($sql_main);
		
		$sql = "DEALLOCATE PREPARE stmt";
		$this->db->query($sql);
		
		
		
		$query  = $query_main->result();
		$total  = $query_main->num_rows();
		
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