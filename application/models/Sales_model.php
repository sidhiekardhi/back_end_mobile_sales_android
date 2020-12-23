<?php

class Sales_model extends CI_Model
{
   
    public function getPickUp()
    {
        //  return $this->db->get('ref_status')->result_array();
       $query = $this->db->query("select * from `ref_status` where flag = 1");
       return $query->result_array();
    //    $query= $this->db->select('*');
    //     $this->db->from('ref_status');
    //     $this->db->where('flag','1');
    //    return $query->result_array(); 
        // return $this->db->get_where('ref_status', ['flag' => '1'])->result_array();
    }

    public function getGagal()
    {
         return $this->db->get('ms_reason_gagal')->result_array();
    }
    public function getCancel()
    {
         return $this->db->get('ms_reason_cancel')->result_array();
    }

        
    public function getUpload($mscode){
// $mscode = $this->input->post('nik');
        $query = $this->db->query("select * from `tbl_upload_ms_detail` where ms_code ='$mscode' and status_close= 0 and kode_pick_up= 1005 and 1023");
       return $query->result_array();
          //  return $this->db->get('tbl_upload_ms_detail')->result_array();
    }

    public function getstatusUpload(){
        $query = $this->db->query("select * from `tbl_upload_ms_detail` where kode_pick_up in ('','1004','1023')");
        return $query->result_array();
    }

    public function getstatusCompleted(){
        $query = $this->db->query("select * from `tbl_upload_ms_detail` where kode_pick_up in ('1004','1006','1011')");
        return $query->result_array();
    }

//where status_close = '0' and kode_pick_up in ('1004','1006','1011')

    public function getReason()
    {
    //     $query = $this->db->query("select * from `tbl_user`");
    //    return $query->result_array();
        return $this->db->get('ref_pickup_reason')->result_array();
    }

    public function createSales($data)
    {
        $this->db->insert('log_activity_ms', $data);
        return $this->db->affected_rows();
    }

    public function updateSales($data, $id)
    {
        $id_ = array($id);
        $this->db->where_in('id', $id_);
        $this->db->update('tbl_upload_ms_detail', $data);
      
        return $this->db->affected_rows();

    }

    public function updategambar($data, $id)
    {
        $this->db->update('tes', $data, ['id'=> $id]);
        // $this->db->set($nrp, $nama, $email, $jurusan);
        //  $this->db->where('id', $id);
        //  $this->db->update('mahasiswa');
        return $this->db->affected_rows();

    }
    
    public function createGambar($data)
    {
        $this->db->insert('tes', $data);
        return $this->db->affected_rows();
    }
    
}