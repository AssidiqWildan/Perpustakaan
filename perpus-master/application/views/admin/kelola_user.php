<legend>Kelola User</legend>

<button class="btn btn-primary" type="button" onclick="window.open('<?php echo base_URL(); ?>apps/Kelola/add/', '_self')">Data Baru</button>
<br><br>
			
	<?php echo $this->session->flashdata("k");?>
	<table width="100%" border="1" class="table table-condensed">
		<tr>
			<th width="5%">No</th>
			<th width="35%">Id</th>
			<th width="8%">Name</th>
			<th width="8%">User</th>
			<th width="15%">Password</th>
			<th width="30%">Leve</th>
			<th width="7%">Control</th>
		</tr>

		<?php 
		if (empty($data)) {
			echo "<tr><td colspan='6'  style='text-align: center; font-weight: bold'>--Data tidak ditemukan--</td></tr>";
		} else {
			$no	= $this->uri->segment(4);
			if ($no == "") {
				$i 	= 0;
			} else {
				$i = $no;
			}
			foreach ($data as $b) {
			$i++;
		?>
		<tr>
			<td style="text-align: center"><?=$i; ?></td>
			<td><?=$b->id?></td>
			<td><?=$b->name?></td>
			<td><?=$b->u?></td>
			<td><?=$b->p?></td>
			<td><?=$b->level?></td>
			
			<td style="text-align: center">
			<a href="<?=base_URL()?>apps/kelola/edt/<?=$b->id?>"><span class="icon-pencil">&nbsp;&nbsp;</span></a>  
			<a href="<?=base_URL()?>apps/kelola/del/<?=$b->id?>" onclick="return confirm('Anda YAKIN menghapus data \n <?=$b->name?>..?');"><span class="icon-remove">&nbsp;&nbsp;</span></a>
			</td>
		</tr>	
		<?php 
			}
		}
		?>
		
	</table>
	
	<center><div class="pagination pagination-small"><ul><?=$pagi?></ul></div></center>
