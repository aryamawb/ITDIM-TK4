<?php
	header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename=Data_Transaksi.xls");
	?>
	<h3>Data Pengguna</h3>    
	<table border="1" cellpadding="5"> 
	<tr>    
	<th>ID Transaksi</th>
    <th>Masakan/Produk</th> 
	<th>QTY</th> 
	<th>Tanggal</th>
	<th>Harga</th>
	</tr>  
	<?php  
	// Load file koneksi.php  
	include "koneksi.php";    
	// Buat query untuk menampilkan semua data siswa 
$query = mysqli_query($koneksi, "SELECT id, masakan, total, tanggal, harga FROM transaksi");
	// Untuk penomoran tabel, di awal set dengan 1 
	while($data = mysqli_fetch_array($query)){ 
	// Ambil semua data dari hasil eksekusi $sql 
	echo "<tr>";    
	echo "<td>".$data['id']."</td>";   
	echo "<td>".$data['masakan']."</td>";
	echo "<td>".$data['total']."</td>";
	echo "<td>".$data['tanggal']."</td>";
	echo "<td>".$data['harga']."</td>";      
	echo "</tr>";        
	}  ?></table>