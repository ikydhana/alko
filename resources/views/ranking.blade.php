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

<img style="width:80;float:left" src="http://dkp.banjarbarukota.go.id/themes/smartadmin/img/images/favicon.png">    
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
<p><u><b>Lampiran Penilaian</b></u></p>
Nomor : 0{{$data_no->id_lapor}}/Pen/Kominfo
</center>
<br>
Penilaian Kinerja Pegawai Bulan <strong>{{indonesia($bln)}}</strong>:
<br><br>
<table border='1''>
<tr>
<th>Nama Petugas</th>
</tr>
@foreach($cms_users as $data_lapor)
<tr>
<th>{{$data_lapor->name}}</th>
</tr>
@endforeach
</table>
<table border='1' style='float:right;margin-right:385px;margin-top:-140px;text-align:center;'>
<tr>
<th>Jumlah Point</th>
</tr>
@foreach($cms_users as $data_nilai)
<tr>
<th>{{$data_nilai->point}}</th>
</tr>
@endforeach
</table>
<br></br>
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
