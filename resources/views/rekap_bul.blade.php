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
    <title>Laporan</title>
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
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
Rekap Data Laporan Bulan <strong>{{indonesia($bln)}}</strong>:
<br></br>
<table border ='1'>
			<thead>
				<tr>
          <th>No Ticket</th>
					<th>Instansi Pelapor</th>
					<th>Tanggal Masuk</th>
					<th>Tanggal Selesai</th>
					<th>Status Laporan</th>
          <th>Petugas Pelaksana</th>
          <th>Jenis Laporan</th>
				</tr>
      </thead>
      <tbody>
				@foreach($tb_lapor as $lapor)
				<tr>
					<td>{{$lapor->no_ticket }}</td>
					<td>{{$lapor->id_skpd}}</td>
          <td>{{$lapor->tanggal_masuk}}</td>
          <td>{{$lapor->status}}</td>
          @endforeach
        @foreach($tb_disposisi as $disposisi)
					<td>{{$disposisi->tanggal_selesai}}</td>
          <td>{{$disposisi->id_petugas}}</td>
          @endforeach      
          @foreach($tb_bidang_keahlian as $bidang)
          <td>{{$bidang->bidang_keahlian}}</td>  
          @endforeach
        </tr>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<div style='text-align:right;margin-top:-15px;'>
                    <h4>Banjarbaru, {{indo($dt)}}</h4>
                    {{$now}}
                    <br>
                    <br>
                    <br>
                    <h4>Khairurrijal,S.Stp</h4>
</div>