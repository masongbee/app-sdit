<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {
	function __construct(){
		parent::__construct();
		session_start();
		//$_SESSION['SESSION_USERID'] = 'test';
		$session_userid = (isset($_SESSION['session_userid']) ? $_SESSION['session_userid'] : "");
		if($session_userid == ""){
			header("location: index.php?c=c_login");
		}
	}

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('welcome_message');//hanya test
	}
	
	function test(){
		$this->firephp->log('c test');
		$json	= array(
						'success'   => TRUE,
						'message'   => "Data berhasil disimpan",
						'total'     => 0,
						'data'      => NULL
		);
		echo json_encode($json);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */