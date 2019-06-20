<?php 

class Dashboard extends Admin_Controller 
{
	public function __construct()
	{
		parent::__construct();

		$this->not_logged_in();

		$this->data['page_title'] = 'Dashboard';
		
		$this->load->model('model_products');
		$this->load->model('model_orders');
		$this->load->model('model_users');
		$this->load->model('model_suppliers');
		$this->load->model('model_salesman');
	}

	/* 
	* It only redirects to the manage category page
	* It passes the total product, total paid orders, total users, and total stores information
	into the frontend.
	*/
	public function index()
	{
		$this->data['total_products'] = $this->model_products->countTotalProducts();
		$this->data['total_paid_orders'] = $this->model_orders->countTotalPaidOrders();
		$this->data['total_users'] = $this->model_users->countTotalUsers();
		$this->data['total_suppliers'] = $this->model_suppliers->countTotalSuppliers();
		$this->data['total_salesman'] = $this->model_salesman->countTotalSalesman();

		$this->data['total_brands'] = $this->model_products->countTotalbrands();
		$this->data['total_category'] = $this->model_products->countTotalcategory();
		$this->data['total_attribures'] = $this->model_products->countTotalattribures();

		$user_id = $this->session->userdata('id');
		$is_admin = ($user_id == 1) ? true :false;
		
		$this->data['jabatan'] = $this->model_products->getJabatan($user_id);
		$this->data['is_admin'] = true;
		$this->render_template('dashboard', $this->data);
	}
}