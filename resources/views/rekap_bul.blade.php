<head>
    <title>Laporan</title>
  </head>
<body>

@foreach($tb_lapor as $data_lapor)

@endforeach



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
No.{{date("d/m/y",strtotime($data_lapor->date))}}/00{{$data_lapor->id}}/kominfo
</center>
<br>
Rekap Data Laporan Bulanan <strong>{{date("d/m/Y",strtotime($data_lapor->date))}}</strong>:
<br><br>
<table border='1'>
<tr><td >Instansi Pelapor</td><td >:</td><td >{{$data_lapor->nama}}</td></tr>
<tr><td >Laporan Masuk</td><td >:</td><td >{{$data_lapor->created_at}}</td></tr>

@foreach($tb_disposisi as $data1)

@endforeach

@
<tr><td >Laporan Selesai</td><td >:</td><td >{{$data1->created_at}}</td></tr>
<tr><td >Petugas Pelaksana</td><td >:</td><td >{{$data1->id_petugas}}</td></tr>
</table>
<p></p>

                    <!-- <h4 style='text-align:right;'>Banjarbaru,{{date("d/m/Y",strtotime($data_lapor->date))}}</h4>
                    <div><img src='https://officialdevbjb.com/api/img/signature.png' width='150px' align='right' ></div> -->

</body>
