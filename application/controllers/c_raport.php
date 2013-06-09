<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class C_raport extends CI_Controller {
	
	function __construct(){
		parent::__construct();		
		$this->load->model('m_raport', '', TRUE);
	}
	
	function getAllMapel(){
		/*
		 * Processing Data
		 */
		$result = $this->m_raport->getAllMapel();
		echo json_encode($result);
	}
	
	function getAll(){
		/*
		 * Collect Data
		 */
		$kelas  		=   ($this->input->post('kelas', TRUE) ? $this->input->post('kelas', TRUE) : '');
		$thn_pelajaran 	=   ($this->input->post('thn_pelajaran', TRUE) ? $this->input->post('thn_pelajaran', TRUE) : '');
		$mapel  		=   ($this->input->post('mapel', TRUE) ? $this->input->post('mapel', TRUE) : '');
		
		/*
		 * Processing Data
		 */
		$result = $this->m_raport->getAll($kelas, $thn_pelajaran, $mapel);
		echo json_encode($result);
	}
	
	function save(){
		/*
		 * Collect Data 
		 */
		$data   = json_decode($this->input->post('data',TRUE));
		
		/*
		 * Processing Data
		 */
		$result = $this->m_raport->save($data);
		echo json_encode($result);
	}
	
	function delete(){
		/*
		 * Collect Data 
		 */
		$data   = json_decode($this->input->post('data',TRUE));
		
		/*
		 * Processing Data
		 */
		$result = $this->m_raport->delete($data);
		echo json_encode($result);
	}
	
	/**
	 * Fungsi	: export2Excel
	 * 
	 * Untuk menyimpan data yang didapat dari Grid ExtJS ke dalam file Excel.
	 * Tidak lagi mengakses database untuk mendapatkan data.
	 */
	function export2Excel(){
		$data = json_decode($this->input->post('data',TRUE));
		
		//load our new PHPExcel library
		$this->load->library('excel');
		//activate worksheet number 1
		$this->excel->setActiveSheetIndex(0);
		//name the worksheet
		$this->excel->getActiveSheet()->setTitle('test worksheet');
		
		$col = 0;
		foreach ($data[0] as $key => $value){
			$this->excel->getActiveSheet()->setCellValueByColumnAndRow($col, 1, $key);
			$this->excel->getActiveSheet()->getStyleByColumnAndRow($col, 1)->getFont()->setBold(true);
			$col++;
		}
		
		// Fetching the table data
		$row = 2;
		foreach($data as $record)
		{
			$col = ord("A");
			foreach ($data[0] as $key => $value)
			{
				$cellvalue = $record->$key;
				
				if($key == strtoupper('raport')){
					$this->excel->getActiveSheet()->getCell(chr($col).$row)->setValueExplicit($cellvalue, PHPExcel_Cell_DataType::TYPE_STRING);
				}else{
					$this->excel->getActiveSheet()->setCellValue(chr($col).$row, $cellvalue);
				}
				
				$col++;
			}
		
			$row++;
		}		
		
		$filename='raport.xlsx'; //save our workbook as this file name
		//header('Content-Type: application/vnd.ms-excel'); //mime type for Excel5
		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'); //mime type for Excel2007
		header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
		header('Cache-Control: max-age=0'); //no cache
		
		//save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
		//if you want to save it as .XLSX Excel 2007 format
		$objWriter = PHPExcel_IOFactory::createWriter($this->excel, 'Excel2007');
		//force user to download the Excel file without writing it to server's HD
		$objWriter->save(APPPATH.'../temp/'.$filename);
		echo $filename;
	}
	
	function export2PDF(){
		$getdata = json_decode($this->input->post('data',TRUE));
		$data["records"] = $getdata;
		$data["table"] = "raport";
		
		//html2pdf
		//Load the library
		$this->load->library('html2pdf');
		
		//Set folder to save PDF to
		$this->html2pdf->folder('./temp/');
		
		//Set the filename to save/download as
		$this->html2pdf->filename('raport.pdf');
		
		//Set the paper defaults
		$this->html2pdf->paper('a4', 'portrait');
		
		//Load html view
		$this->html2pdf->html($this->load->view('pdf_raport', $data, true));
		
		if($path = $this->html2pdf->create('save')) {
			//PDF was successfully saved or downloaded
			echo 'PDF saved to: ' . $path;
		}
	}
	
	function printRecords(){
		$getdata = json_decode($this->input->post('data',TRUE));
		$data["records"] = $getdata;
		$data["table"] = "raport";
		$print_view=$this->load->view("p_raport.php",$data,TRUE);
		if(!file_exists("temp")){
			mkdir("temp");
		}
		$print_file=fopen("temp/raport.html","w+");
		fwrite($print_file, $print_view);
		echo '1';
	}	
}