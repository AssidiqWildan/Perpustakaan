<?php
$mode	= $this->uri->segment(3);

if ($mode == "edt" || $mode == "act_edt") {
	$act		= "act_edt";
	$id		= $datpil->id;
	$nama	= $datpil->name;
	$u	= $datpil->u;
	$p		= $datpil->p;
	$level	= $datpil->level;
} else {
	$act		= "act_add";
	$id		= "";
	$nama	= "";
	$u	= "";
	$p		= "";
	$level	= "";
}
?>
<form action="<?=base_URL()?>apps/Kelola/<?=$act?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">	
<input type="hidden" name="id" value="<?=$id?>">

	<fieldset><legend>Form</legend>
	<?php echo $this->session->flashdata("k");?>

	<br>
	
	
	<input class="span8" type="hidden" name="id" placeholder="Id" value="<?= $id; ?>" required><br>
	
	<label style="width: 150px; float: left">Nama</label><input class="span6" type="text" name="nama" value="<?= $nama; ?>" placeholder="Nama" required><br>
	
	<label style="width: 150px; float: left">User</label><input class="span8" type="text" name="u" value="<?= $u; ?>" placeholder="User" required><br>
	<label style="width: 150px; float: left">Password</label><input class="span8" type="text" value="<?= $p; ?>" name="p" placeholder="Password"  required><br>
	<label style="width: 150px; float: left">Level</label><input class="span4" type="text" name="level" value="<?= $level; ?>" placeholder="Level" required><br>

	<br>
	
	
	<button type="submit" class="btn btn-primary">Submit</button>
	</fieldset>
</form>