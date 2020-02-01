<head>
    <title>Laporan</title>
  </head>
<body>

@foreach($tb_petugas as $data_petugas)

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
<!-- <p><i>Lampiran Penilaian</i></p> -->
No.{{date("d/m/y",strtotime($date1))}}/00{{$data_petugas->id}}/kominfo
</center>
<br>
Penilaian Kinerja Pegawai <strong>{{date("d/m/Y",strtotime($date1))}}</strong>:
<br><br>
<table border='1'>
<tr><td >NIP</td><td >:</td><td >{{$data_petugas->nip}}</td></tr>
<tr><td >Nama Petugas</td><td >:</td><td >{{$data_petugas->nama_petugas}}</td></tr>
<tr><td >Pekerjaan Yang Diselesaikan</td><td >:</td><td >{{$data_petugas->pekerjaan_selesai}}</td></tr>
</table>
<p></p>

                    <!-- <h4 style='text-align:right;'>Banjarbaru,{{date("d/m/Y",strtotime($data_lapor->date))}}</h4>
                    <div><img src='https://officialdevbjb.com/api/img/signature.png' width='150px' align='right' ></div> -->

</body>
