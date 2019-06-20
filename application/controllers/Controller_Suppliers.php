<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Controller_Suppliers extends Admin_Controller 
{
	public function __construct()
	{
		parent::__construct();

		$this->not_logged_in();

		$this->data['page_title'] = 'Suppliers';

		$this->load->model('model_suppliers');
	}

	/* 
	* It only redirects to the manage category page
	*/
	public function index()
	{

		if(!in_array('viewSuppliers', $this->permission)) {
			redirect('dashboard', 'refresh');
		}

		$this->render_template('suppliers/index', $this->data);	
	}	

	/*
	* It checks if it gets the Suppliers id and retreives
	* the Suppliers information from the Suppliers model and 
	* returns the data into json format. 
	* This function is invoked from the view page.
	*/
	public function fetchSuppliersDataById($id) 
	{
		if($id) {
			$data = $this->model_suppliers->getSuppliersData($id);
			echo json_encode($data);
		}

		return false;
	}

	/*
	* Fetches the Suppliers value from the Suppliers table 
	* this function is called from the datatable ajax function
	*/
	public function fetchSuppliersData()
	{
		$result = array('data' => array());

		$data = $this->model_suppliers->getSuppliersData();

		foreach ($data as $key => $value) {

			// button
			$buttons = '';

			if(in_array('updateSuppliers', $this->permission)) {
				$buttons .= '<button type="button" class="btn btn-default btn-sm" onclick="editFunc('.$value['id'].')" data-toggle="modal" data-target="#editModal"><i class="fa fa-pencil"></i> Edit</button>';
			}

			if(in_array('deleteSuppliers', $this->permission)) {
				$buttons .= ' <button type="button" class="btn btn-default btn-sm" onclick="removeFunc('.$value['id'].')" data-toggle="modal" data-target="#removeModal"><i class="fa fa-trash"></i> Delete</button>';
			}
				

			$status = ($value['active'] == 1) ? '<span class="label label-success">Active</span>' : '<span class="label label-warning">Inactive</span>';

			$result['data'][$key] = array(
				$value['supplier_name'],
				$value['alamat'],
				$status,
				$buttons
			);
		} // /foreach

		echo json_encode($result);
	}

	/*
	* Its checks the Suppliers form validation 
	* and if the validation is successfully then it inserts the data into the database 
	* and returns the json format operation messages
	*/
	public function create()
	{
		if(!in_array('createSuppliers', $this->permission)) {
			redirect('dashboard', 'refresh');
		}

		$response = array();

		$this->form_validation->set_rules('supplier_name', 'Suppliers name', 'trim|required');
		$this->form_validation->set_rules('active', 'Active', 'trim|required');

		$this->form_validation->set_error_delimiters('<p class="text-danger">','</p>');

        if ($this->form_validation->run() == TRUE) {
        	$data = array(
				'supplier_name' => $this->input->post('supplier_name'),
				'alamat' => $this->input->post('alamat'),
        		'active' => $this->input->post('active'),	
        	);

        	$create = $this->model_suppliers->create($data);
        	if($create == true) {
        		$response['success'] = true;
        		$response['messages'] = 'Succesfully created';
        	}
        	else {
        		$response['success'] = false;
        		$response['messages'] = 'Error in the database while creating the brand information';			
        	}
        }
        else {
        	$response['success'] = false;
        	foreach ($_POST as $key => $value) {
        		$response['messages'][$key] = form_error($key);
        	}
        }

        echo json_encode($response);
	}

	/*
	* Its checks the category form validation 
	* and if the validation is successfully then it updates the data into the database 
	* and returns the json format operation messages
	*/
	public function update($id)
	{

		if(!in_array('updateSuppliers', $this->permission)) {
			redirect('dashboard', 'refresh');
		}

		$response = array();

		if($id) {
			$this->form_validation->set_rules('edit_supplier_name', 'Suppliers name', 'trim|required');
			$this->form_validation->set_rules('edit_active', 'Active', 'trim|required');

			$this->form_validation->set_error_delimiters('<p class="text-danger">','</p>');

	        if ($this->form_validation->run() == TRUE) {
	        	$data = array(
					'supplier_name' => $this->input->post('edit_supplier_name'),
					'alamat' => $this->input->post('edit_supplier_alamat'),
	        		'active' => $this->input->post('edit_active'),	
	        	);

	        	$update = $this->model_suppliers->update($data, $id);
	        	if($update == true) {
	        		$response['success'] = true;
	        		$response['messages'] = 'Succesfully updated';
	        	}
	        	else {
	        		$response['success'] = false;
	        		$response['messages'] = 'Error in the database while updated the brand information';			
	        	}
	        }
	        else {
	        	$response['success'] = false;
	        	foreach ($_POST as $key => $value) {
	        		$response['messages'][$key] = form_error($key);
	        	}
	        }
		}
		else {
			$response['success'] = false;
    		$response['messages'] = 'Error please refresh the page again!!';
		}

		echo json_encode($response);
	}

	/*
	* It removes the category information from the database 
	* and returns the json format operation messages
	*/
	public function remove()
	{
		if(!in_array('deleteSuppliers', $this->permission)) {
			redirect('dashboard', 'refresh');
		}
		
		$suppliers_id = $this->input->post('suppliers_id');

		$response = array();
		if($suppliers_id) {
			$delete = $this->model_suppliers->remove($suppliers_id);
			if($delete == true) {
				$response['success'] = true;
				$response['messages'] = "Successfully removed";	
			}
			else {
				$response['success'] = false;
				$response['messages'] = "Error in the database while removing the brand information";
			}
		}
		else {
			$response['success'] = false;
			$response['messages'] = "Refersh the page again!!";
		}

		echo json_encode($response);
	}

}