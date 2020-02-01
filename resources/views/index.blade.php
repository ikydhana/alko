<!DOCTYPE html>
<html>
@php
function indo($tgl) {
	$dt = new  \Carbon\Carbon($tgl);
	setlocale(LC_TIME, 'IND');
		
	return $dt->formatLocalized(' %e %B %Y');
} 

@endphp

@php
function indonesia($now) {
	$bln = new  \Carbon\Carbon($now);
	setlocale(LC_TIME, 'IND');
		
	return $bln->formatLocalized(' %B %Y');
} 

@endphp
<head>
	<title>Membuat Laporan PDF Dengan DOMPDF Laravel</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <img style="width:80;float:left" src="https://upload.wikimedia.org/wikipedia/commons/6/63/Lambang_Kota_Banjarbaru.png">    
    <center>
    <p style="text-align:center;text-transform: uppercase;">
      PEMERINTAH KOTA BANJARBARU
          </p>
          <p style="text-align:center;text-transform: uppercase;margin-top:-15px;font-size:25px">
            DINAS KOMUNIKASI DAN INFORMATIKA
          </p>
          <p style="text-align:center;margin-top:-15px">
      Gedung Diskominfo Banjarbaru Jl. Pangeran Suriansyah no.5
          </p>
          <p style="text-align:center;margin-top:-15px">
      Loktabat Utara, Banjarbaru Utara Kota Banjarbaru,70711 Kalimantan Selatan, Indonesia
          </p>
        <p style="text-align:center;margin-top:-15px">
        Email: kominfobjb@banjarbarukota.go.id | Telpon/Fax: 0511-6749126
          </p>
    <hr>
    @foreach($tb_disposisi as $data_no)
    
    @endforeach
    <p><b><u><strong>Laporan Bulanan</strong></u></b></p>
    Nomor : 0{{$data_no->id_lapor}}/Lap/Kominfo
    </center>
    <br>
	<div class="container">
		<center>
			<h4>Membuat Laporan PDF Dengan DOMPDF Laravel</h4>
			<h5><a target="_blank" href="https://www.malasngoding.com/membuat-laporan-…n-dompdf-laravel/">www.malasngoding.com</a></h5>
		</center>
		<br/>
		<a href="/pegawai/cetak_pdf" class="btn btn-primary" target="_blank">CETAK PDF</a>
		<table class='table table-bordered'>
			<thead>
				<tr>
					<th>No</th>
					<th>Nama</th>
					<th>Email</th>
					<th>Alamat</th>
					<th>Telepon</th>
					<th>Pekerjaan</th>
				</tr>
			</thead>
			<tbody>
				@php $i=1 @endphp
				@foreach($pegawai as $p)
				<tr>
					<td>{{ $i++ }}</td>
					<td>{{$p->nama}}</td>
					<td>{{$p->email}}</td>
					<td>{{$p->alamat}}</td>
					<td>{{$p->telepon}}</td>
					<td>{{$p->pekerjaan}}</td>
				</tr>
				@endforeach
			</tbody>
		</table>

	</div>

</body>
</html>