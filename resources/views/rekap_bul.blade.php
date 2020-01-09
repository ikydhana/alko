<head>
    <title>Laporan</title>
  </head>
<body>


@foreach($tb_lapor as $data_lapor)

@endforeach

<img style="width:80;float:left" src="/home/web/apelmas/storage/app/uploads/2019-12/38b85727bf8d0a829f17bf4e07d35ef1.png" alt="logo-kalsel">    
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
No.{{date("d/m/y",strtotime($data_lapor->date))}}/bjb/00{{$data_lapor->id}}
</center>
<br>
Rekap Data Laporan Bulanan <strong>{{date("d/m/Y",strtotime($data_lapor->date))}}</strong>:
<br><br>
<table>
<tr><td >Nip</td><td >:</td><td>{{$data2->nip}}</td></tr>
<tr><td >Nama Pengusul</td><td >:</td><td >{{$data2->nama}}</td></tr>
<tr><td >Periode Dari</td><td >:</td><td >{{$datanya->priode_dari}}</td></tr>
<tr><td >Priode Sampai</td><td >:</td><td >{{$datanya->priode_sampai}}</td></tr>
</table>

@foreach($tb_usulan as $datanya)

<table border="1">
<tr><td >Unsur Kegitan</td> <td> Angka Kredit Di usulkan </td></tr>


<tr><td >a. Unsur Pendidikan</td><td >{{$datanya->kredit_pendidikan}}</td><td >{{$datanya->id_unsur_pendidikan}}</td></tr>
<tr><td >Angka Kredit Di usulkan</td><td >:</td><td >{{$datanya->kredit_pendidikan}}</td></tr>
<tr><td >b. Operasi TI</td><td >:</td><td >{{$datanya->id_unsur_operasi_ti}}</td></tr>
<tr><td >Angka Kredit Diusulkans</td><td >:</td><td >{{$datanya->kredit_operasi_ti}}</td></tr>
</table>

@endforeach


