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
<table border='1' style='text-align:center;'>
<tr>
<th>Instansi Pelapor</th>
<th>Laporan Diterima</th>
</tr>
@foreach($tb_lapor as $data_lapor)
<tr>
<th >{{$data_lapor->id_skpd}}</th>
<th >{{$data_lapor->created_at}}</th>
</tr>
@endforeach
</table>

<table border='1' style='float:right;margin-right:145px;margin-top:-120px;text-align:center;'>
<tr>
<th>Laporan Diselesaikan</th>
<th>Petugas Pelaksana</th>
</tr>
@foreach($tb_disposisi as $data1)
<tr>
<td >{{$data1->created_at}}</td>
<td >{{$data1->name}}</td>
</tr>
@endforeach
</table>
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