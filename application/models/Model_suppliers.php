<?php 

class Model_suppliers extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	/* get the active store data */
	public function getActiveSuppliers()
	{
		$sql = "SELECT * FROM suppliers WHERE active = ?";
		$query = $this->db->query($sql, array(1));
		return $query->result_array();
	}

	/* get the brand data */
	public function getSuppliersData($id = null)
	{
		if($id) {
			$sql = "SELECT * FROM suppliers where id = ?";
			$query = $this->db->query($sql, array($id));
			return $query->row_array();
		}

		$sql = "SELECT * FROM suppliers";
		$query = $this->db->query($sql);
		return $query->result_array();
	}

	public function create($data)
	{
		if($data) {
			$insert = $this->db->insert('suppliers', $data);
			return ($insert == true) ? true : false;
		}
	}

	public function update($data, $id)
	{
		if($data && $id) {
			$this->db->where('id', $id);
			$update = $this->db->update('suppliers', $data);
			return ($update == true) ? true : false;
		}
	}

	public function remove($id)
	{
		if($id) {
			$this->db->where('id', $id);
			$delete = $this->db->delete('suppliers');
			return ($delete == true) ? true : false;
		}
	}

	public function countTotalSuppliers()
	{
		$sql = "SELECT * FROM suppliers WHERE active = ?";
		$query = $this->db->query($sql, array(1));
		return $query->num_rows();
	}

}