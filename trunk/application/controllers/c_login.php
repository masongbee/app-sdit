<?php if(!defined('BASEPATH')) exit("Sorry, page you're looking not found.");

class C_login extends CI_Controller {
	
	function __construct(){
		parent::__construct();
		session_start();
		$this->load->model('m_login');
		if(isset($_SESSION['session_userid'])){
			header("location: index.php?c=welcome");
		}
	}
	
	function index(){
		$this->load->view('v_login');
	}
	
	function verify(){
		/* if(file_exists("assets/genli.lca")==false){
			echo "{success:false,msg:'File Lisensi tidak ditemukan !'}";		
		}else{ */
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			if($username && $password){
				$u	= preg_replace('/[^a-zA-Z0-9_]/i','',$username);
				$pw	= md5($this->input->post('password'));
				$_SESSION["user_post"]=$u;
				$_SESSION["msg"]="";
				$auth = $this->m_login->verifyUser($u, $pw);
				if($auth){
	            	echo "{success:true}";
				} else{
					echo "{success:false,msg:'Username or Password incorrect'}";
				}
	        } else {		
	            echo "{success:false,msg:'Please fill the Requirement Field!'}";
	        }
		/* } */
	}
	
	function logout(){
		session_destroy();
		echo 1;
	}
}
/* End Of File */