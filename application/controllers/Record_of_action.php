<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Record_of_action extends CI_Controller {

    public function index($person_id)
    {
        $this->db->where('person', $person_id);
        $result = cfr('Record_of_Action');
//        $result = "Hello world.";
        $result_json = json_encode($result);

        echo $result_json;
        return $result_json;
    }
}
