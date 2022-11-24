 	<div class="span9">
		<ul class="breadcrumb wellwhite">
			<li><a href="<?=base_URL()?>">Beranda</a></li>
		</ul>
		
	<div class="span12 wellwhite" style="margin-left: 0px">
			<legend style="margin-bottom: 10px; font-size: 15px; font-weight: bold">Selamat Datang di Perpustakaan <?=$q_instansi->nama?></legend>
	<div class="row-fluid">
		
		<form action="<?=base_URL()?>depan/post_pengunjung" method="post" accept-charset="utf-8" enctype="multipart/form-data">
		
        	<h5>Silakan masukkan data kunjungan Anda, sebelum masuk ke perpustakaan. Terima kasih ... </h5>
		
			<?=$this->session->flashdata("k")?>
		<label style="width: 150px; float: left">NIM/NIDN</label><input class="span6" type="text" name="nim_nidn" placeholder="NIM/NIDN" required><br><br>

		<label style="width: 150px; float: left">Keperluan</label>
		</label>
		<label><input type="checkbox" name="perlu1" value="Baca Buku"> Baca Buku
		</label>
		<label style="width: 150px; float: left"></label>
		<label>
			<input type="checkbox" name="perlu2" value="Pinjam Buku"> Pinjam Buku
		</label>
		<label style="width: 150px; float: left"></label>
		<label>
			<input type="checkbox" name="perlu3" value="Kembalikan Buku"> Kembalikan Buku
		</label>
		<label style="width: 150px; float: left"></label>
		<label>
			<input type="checkbox" name="perlu4" value="Baca Koran"> Baca Koran
		</label>
		<label style="width: 150px; float: left"></label>
		<label>
			<input type="checkbox" name="perlu5" value="Lainnya"> Lainnya
		</label>
		<br>		
		<label style="width: 150px; float: left">Saran & Kritik</label>
		<textarea class="span8" type="text" name="saran" placeholder="Silakan masukkan saran kritik Anda" required>
			
		</textarea>
		<br>		
		<button type="submit" class="btn btn-primary">Save</button>
		
		
    </div>
	</div>        
	</div><!--/span-->