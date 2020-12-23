<?php
use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Sales extends REST_Controller
{

    public function __construct(){
        parent::__construct();
        $this->load->model('Sales_model');
        //$this->load->model('Mahasiswa_model');
    }

    public function upload_get(){
      // $nik= $this->input->post('nik');
      //$mscode= $this->get('nik');
       // $upload = $this->Sales_model->getUpload($mscode);

       $upload = $this->Sales_model->getstatusUpload();
        if($upload){
        $this->response([
            'status' => true,
            'message' => 'data upload',
            'data' => $upload
        ], REST_Controller::HTTP_OK);
    } else {
        $this->response([
            'status' => false,
            'message' => 'data not found'
        ], REST_Controller::HTTP_NOT_FOUND);
    }
}

public function completed_get(){

     $upload = $this->Sales_model->getstatusCompleted();
      if($upload){
      $this->response([
          'status' => true,
          'message' => 'data upload',
          'data' => $upload
      ], REST_Controller::HTTP_OK);
  } else {
      $this->response([
          'status' => false,
          'message' => 'data not found'
      ], REST_Controller::HTTP_NOT_FOUND);
  }
}

    public function pickup_get(){
       
            $pickup = $this->Sales_model->getPickUp();

            if($pickup){
            $this->response([
                'status' => true,
                'message' => 'data pick up',
                'data' => $pickup
            ], REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => false,
                'message' => 'data not found'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function gagalpickup_get(){
       
        $pickupgagal = $this->Sales_model->getGagal();

        if($pickupgagal){
        $this->response([
            'status' => true,
            'message' => 'data gagal pick up',
            'data' => $pickupgagal
        ], REST_Controller::HTTP_OK);
    } else {
        $this->response([
            'status' => false,
            'message' => 'data not found'
        ], REST_Controller::HTTP_NOT_FOUND);
    }
}

public function cancelpickup_get(){
       
    $pickupcancel = $this->Sales_model->getCancel();

    if($pickupcancel){
    $this->response([
        'status' => true,
        'message' => 'data cancel pick up',
        'data' => $pickupcancel
    ], REST_Controller::HTTP_OK);
} else {
    $this->response([
        'status' => false,
        'message' => 'data not found'
    ], REST_Controller::HTTP_NOT_FOUND);
}
}

   

    public function reason_get(){
        
        $reason = $this->Sales_model->getReason();

        if($reason){
        $this->response([
            'status' => true,
            'message' => 'data pick up reason',
            'data' => $reason
        ], REST_Controller::HTTP_OK);
    } else {
        $this->response([
            'status' => false,
            'message' => 'data not found'
        ], REST_Controller::HTTP_NOT_FOUND);
    }
    }




    public function activity_post(){
        
        $data= [
                'id_form' => $this->input->post('id_form'),
                'id_detail' => $this->input->post('id_detail'),
                'action' => $this->input->post('action'),
                'distribusi_from' => $this->input->post('distribusi_from'),
                'distribusi_to' => $this->input->post('distribusi_to'),
                'ms_code' => $this->input->post('ms_code'),
                'status' => $this->input->post('status'),
                'keterangan' => $this->input->post('keterangan'),
                'created_date' => $this->input->post('created_date'),
                'created_by' => $this->input->post('created_by')
            ];

        if($this->Sales_model->createSales($data)> 0){
            $this->response([
                'status' => true,
                'message' => 'created successfully'
            ], REST_Controller::HTTP_CREATED);
        } else {
            $this->response([
                'status' => false,
                'message' => ' created failed'
            ], REST_Controller::HTTP_BAD_REQUEST); 
        }
    }


    public function uploadImageKTP()
    {
      $config['upload_path'] = './uploads';
      $config['allowed_types'] = 'gif|jpg|png';
      $config['overwrite'] = true;
      $config['max_size'] = 1024;

      $this->load->library('upload');
      $this->upload->initialize($config);

      if ( ! $this->upload->do_upload('image_name_ktp'))
      {
          //$error = array('error' => $this->upload->display_errors());
          return 'null2';
          //print_r($error);
      //  $this->load->view('upload_form', $error);
      }
      else
      {
        return $this->upload->data("file_name");
      }
    }

    public function uploadImageNPWP()
    {
      $config['upload_path'] = './uploads';
      $config['allowed_types'] = 'gif|jpg|png';
      $config['overwrite'] = true;
      $config['max_size'] = 1024;

      $this->load->library('upload');
      $this->upload->initialize($config);

      if ( ! $this->upload->do_upload('image_name_pemilik'))
      {
          //$error = array('error' => $this->upload->display_errors());
          //return 'gagal';
          //print_r($error);
      //  $this->load->view('upload_form', $error);
      return 'null1';

      }
      else
      {
        return $this->upload->data("file_name");
      }
    }

    public function uploadImageBukti()
    {
      $config['upload_path'] = './uploads';
      $config['allowed_types'] = 'gif|jpg|png';
      $config['overwrite'] = true;
      $config['max_size'] = 1024;

      $this->load->library('upload');
      $this->upload->initialize($config);

      if ( ! $this->upload->do_upload('image_name_bukti'))
      {
        
        //$error = array('error' => $this->upload->display_errors());
         return 'null3';
          //print_r($error);
      //  $this->load->view('upload_form', $error);
      }
      else
      {
        return $this->upload->data("file_name");
      }
    }

    private function _deleteImage($id)
    {
        $mahasiswa = $this->Mahasiswa_model->getMahasiswa($id);
        if ($mahasiswa['foto'] != "") {
            $filename = explode(".", $mahasiswa['foto'])[0];
            return array_map('unlink', glob(FCPATH."/uploads/$filename.*"));
        }
    }  

    
    public function upload2_post()
    { 
		    $id= $this->input->post('id');
        
            $data= [ 
                'id' => $id,
                'address_geotag' => $this->input->post('address_geotag'),
                'kode_pick_up' => $this->input->post('kode_pick_up'),
                'kode_gagal_pu' => $this->input->post('kode_gagal_pu'),
                'kode_cancel_pu' => $this->input->post('kode_cancel_pu'),
                'pick_up_date' => $this->input->post('pick_up_date'),
                'image_name_pemilik' => $this->uploadImageNPWP(),                
                'image_name_ktp' => $this->uploadImageKTP(),
                'geo_info_pemilik' => $this->input->post('geo_info_pemilik'),
                'geo_info_ktp' => $this->input->post('geo_info_ktp'),
                'image_name_bukti' => $this->uploadImageBukti(),
                'geo_info_bukti' => $this->input->post('geo_info_bukti'),
                'tanggal_reschedule' => $this->input->post('tanggal_reschedule'),
                'tanggal_status_terakhir' => $this->input->post('tanggal_status_terakhir'),
                'notes' => $this->input->post('notes')
            ];

			
            if($this->Sales_model->updateSales($data, $id)> 0){
        $this->response([
                'status' => true,
                'message' => 'update a new data',
                'data' =>  $data
            ], REST_Controller::HTTP_CREATED);
        } else {
            $this->response([
                'status' => false,
                'message' => 'failed to updated data'
            ], REST_Controller::HTTP_BAD_REQUEST); 
        }   
		 echo json_encode($data);
    }
    
    public function update_post()
    { 
//        echo var_dump($_POST);
        // if (is_array($_POST["id"]))
        // echo "array";
  //      echo json_encode($_POST);
    //    die;
        $id = $this->input->post('id');
        $data = [];

        foreach ($id as $i) {
            array_push($data, [
                'id' => $i,
                'ms_code' => $this->input->post('ms_code'),
                'ms_name' => $this->input->post('ms_name'),
                'tanggal_distribusi' => $this->input->post('tanggal_distribusi'),
                'kode_pick_up'  => $this->input->post('kode_pick_up'),
                'kode_gagal_pu'  => $this->input->post('kode_gagal_pu'),
                'tanggal_status_terakhir'  => $this->input->post('tanggal_status_terakhir')
            ]);
        }
        // echo json_encode($data);
        // die;
        // $this->db->update_batch("tbl_upload_ms_detail", $data, "id");
        //     die;
        //     $data= [ 
        //         'id' => $id,
        //         'ms_code' => $this->input->post('ms_code'),
        //         'tanggal_distribusi' => $this->input->post('tanggal_distribusi'),
        //         'kode_pick_up'  => $this->input->post('kode_pick_up'),
        //         'kode_gagal_pu'  => $this->input->post('kode_gagal_pu'),
        //         'tanggal_status_terakhir'  => $this->input->post('tanggal_status_terakhir')
        //     ];

			
        if($this->db->update_batch("tbl_upload_ms_detail", $data, "id")){
        $this->response([
                'status' => true,
                'message' => 'update a new data',
                'data' =>  $data
            ], REST_Controller::HTTP_CREATED);
        } else {
            $this->response([
                'status' => false,
                'message' => 'failed to updated data'
            ], REST_Controller::HTTP_BAD_REQUEST); 
        }
		 echo json_encode($data);
	}
   
}
    

