<?php
	header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename=Data_Roti.xls");
	?>
	<h3>Data Produk Ditawarkan</h3>    
	<table border="1" cellpadding="5"> 
	<tr>    
	<th>ID Produk</th>
    <th>Nama</th> 
	<th>Kategori</th> 
	<th>Harga</th> 
	</tr>  
	<?php  
	// Load file koneksi.php  
	include "koneksi.php";    
	// Buat query untuk menampilkan semua data siswa 
$query = mysqli_query($koneksi, "SELECT * FROM masakan");
	// Untuk penomoran tabel, di awal set dengan 1 
	while($data = mysqli_fetch_array($query)){ 
	// Ambil semua data dari hasil eksekusi $sql 
	echo "<tr>";    
	echo "<td>".$data['id']."</td>";   
	echo "<td>".$data['nama']."</td>";  
	echo "<td>".$data['id_kategori']."</td>";  
	echo "<td>Rp. ".$data['harga']."</td>";      
	echo "</tr>";        
	}  ?></table>