<?php
	header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename=Data_Pengguna.xls");
	?>
	<h3>Data Pengguna</h3>    
	<table border="1" cellpadding="5"> 
	<tr>    
	<th>ID Karyawan</th>
    <th>Username</th> 
	</tr>  
	<?php  
	// Load file koneksi.php  
	include "koneksi.php";    
	// Buat query untuk menampilkan semua data siswa 
$query = mysqli_query($koneksi, "SELECT * FROM pengguna");
	// Untuk penomoran tabel, di awal set dengan 1 
	while($data = mysqli_fetch_array($query)){ 
	// Ambil semua data dari hasil eksekusi $sql 
	echo "<tr>";    
	echo "<td>".$data['id']."</td>";   
	echo "<td>".$data['username']."</td>";      
	echo "</tr>";        
	}  ?></table>