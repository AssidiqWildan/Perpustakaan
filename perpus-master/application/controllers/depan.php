<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Depan extends CI_Controller {
	function __construct() {
		parent::__construct();
	}
	
	public function index() {
		$a['q_instansi'] 	= $this->db->query("SELECT * FROM r_config LIMIT 1")->row();
		$a['page']			= "d_amain";

		
		$this->load->view('aaa', $a);
	}


	public function post_pengunjung() {
		$nim_nidn		= addslashes($this->input->post('nim_nidn'));
		$nama		= addslashes($this->input->post('nama'));
		// $jk			= addslashes($this->input->post('jk'));
		// $jurusan	= addslashes($this->input->post('jurusan'));
		// $jenis		= addslashes($this->input->post('jenis'));
		$perlu		= addslashes($this->input->post('perlu1'))."#".addslashes($this->input->post('perlu2'))."#".addslashes($this->input->post('perlu3'))."#".addslashes($this->input->post('perlu4'))."#".addslashes($this->input->post('perlu5'));
		$saran		= addslashes($this->input->post('saran'));

		$cek_anggota = $this->db->query("SELECT * FROM t_anggota where nim_nidn = '".$nim_nidn."' LIMIT 1")->row();
		// echo "kondisi 1";
		// echo $cek_anggota->nim_nidn;
		// echo "<br>";
		// echo $cek_anggota->jenis;
		// exit();
		
		$this->db->query("INSERT INTO t_pengunjung VALUES ('', '$cek_anggota->nim_nidn', '$cek_anggota->jk', '$cek_anggota->jenis', '$perlu', '$saran', NOW(), '$jurusan')");
		$this->session->set_flashdata("k", "<div class=\"alert alert-success\">Terima kasih, data Anda telah Masuk </div>");
		redirect('depan');
	}
	
	public function profil() {
		$a['q_instansi'] 	= $this->db->query("SELECT * FROM r_config LIMIT 1")->row();
		$a['data'] 			= $this->db->query("SELECT profil FROM r_config LIMIT 1")->row();
		$a['page']			= "d_profil";
		
		$this->load->view('aaa', $a);
	}
	
	public function cari_buku() {
		$a['q_instansi'] 	= $this->db->query("SELECT * FROM r_config LIMIT 1")->row();
		
		$q 		= addslashes($this->input->post('q'));
		if ($this->uri->segment(3) == "cari") {
			$q_cari				= $this->db->query("SELECT * FROM t_buku WHERE judul LIKE '%$q%' OR pengarang LIKE '%$q%' OR penerbit LIKE '%$q%' OR deskripsi LIKE '%$q%'");
			$a['data'] 			= $q_cari->result();
			$this->session->set_flashdata("k", "<div class=\"alert alert-success\">Ditemukan ".$q_cari->num_rows()." data </div>");
		} else {
			$q_cari				= $this->db->query("SELECT * FROM t_buku ORDER BY id DESC LIMIT 10");
			$a['data'] 			= $q_cari->result();
			$this->session->set_flashdata("k", "<div class=\"alert alert-success\">Ditemukan ".$q_cari->num_rows()." data </div>");
		}
		
		$a['page']			= "d_cari";
		$this->load->view('aaa', $a);
	}

	public function view_pdf() {
		$id 	 	 	= 	 	 	$_GET['identifikasi'];

		$sql 	 	 	= 	 	 	"SELECT * FROM t_buku WHERE id = '$id'";
		$cari_data 	 	= 	 	    $this->db->query($sql);
		$hasil 	 	 	= 	 	 	$cari_data->result();
		$toView 	 	= 	 	    ['datapdf' => $hasil];
		$this->load->view('admin/view_pdf', $toView);
	}
}