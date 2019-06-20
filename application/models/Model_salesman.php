<?php 

class Model_salesman extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	/* get the active store data */
	public function getActiveSalesman()
	{
		$sql = "SELECT * FROM salesman WHERE active = ?";
		$query = $this->db->query($sql, array(1));
		return $query->result_array();
	}

	/* get the brand data */
	public function getSalesmanData($id = null)
	{
		if($id) {
			$sql = "SELECT * FROM salesman where id = ?";
			$query = $this->db->query($sql, array($id));
			return $query->row_array();
		}

		$sql = "SELECT * FROM salesman";
		$query = $this->db->query($sql);
		return $query->result_array();
	}

	public function create($data)
	{
		if($data) {
			$insert = $this->db->insert('salesman', $data);
			return ($insert == true) ? true : false;
		}
	}

	public function update($data, $id)
	{
		if($data && $id) {
			$this->db->where('id', $id);
			$update = $this->db->update('salesman', $data);
			return ($update == true) ? true : false;
		}
	}

	public function remove($id)
	{
		if($id) {
			$this->db->where('id', $id);
			$delete = $this->db->delete('salesman');
			return ($delete == true) ? true : false;
		}
	}

	public function countTotalSalesman()
	{
		$sql = "SELECT * FROM salesman WHERE active = ?";
		$query = $this->db->query($sql, array(1));
		return $query->num_rows();
	}

}