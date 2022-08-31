<html>

<head>
  <title>Laporan Pengembalian</title>
  <link rel="stylesheet" href="<?= BASE  ?>/assets/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?= BASE ?>/assets/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="<?= BASE ?>/assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?= BASE ?>/assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="<?= BASE ?>/assets/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= BASE ?>/assets/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?= BASE ?>/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?= BASE ?>/assets/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="<?= BASE ?>/assets/plugins/summernote/summernote-bs4.min.css">

  <link rel="stylesheet" href="<?= BASE ?>/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= BASE ?>/assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= BASE ?>/assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= BASE ?>/assets/plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="<?= BASE ?>/assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <link rel="stylesheet" href="<?= BASE ?>/assets/plugins/summernote/summernote-bs4.min.css">
</head>

<body onload="window.print()">

  <div class="row">
    <div class="col-md-1 col-sm-2 text-left">

      <img src="<?= BASE ?>/assets/img/logo.jpg" alt="" style="width:120px;height:120px;">

    </div>
    <div class="col-md-11 col-sm-10 text-center">
      <h3>Luxury Florist</h3>
      <h4>&nbsp;&nbsp;&nbsp;Ps. Ambacang, Kec Kuranji, Kota Padang, Sumatera Barat 25176, Telp 083181756314
      </h4>
    </div>

  </div>
  <hr>
  <div class="row">
    <div class="col-md-12 text-center">
      <p>LAPORAN PENGEMBALIAN</p>

      <p>TAHUN <?= $tahun ?> </p>
    </div>
  </div>
  <div class="container">
    <?php
    $db      = \Config\Database::connect();




    ?>
    <div class="row">
      <div class="col-md-12">

        <div class="separator separator-dashed my-5"></div>
        <!--end::Section-->
        <!--begin::Section-->
        <!-- <h6 class="font-weight-bolder mb-3">Order Details:</h6> -->
        <div class="text-dark-50 line-height-lg">
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th class="pl-0 font-weight-bold text-muted text-uppercase">No</th>
                  <th class=" font-weight-bold text-muted text-uppercase">Nama</th>
                  <th class=" font-weight-bold text-muted text-uppercase">Alamat</th>
                  <th class=" font-weight-bold text-muted text-uppercase">Nohp</th>
                  <th class=" font-weight-bold text-muted text-uppercase">Tanggal Order</th>
                  <th class=" font-weight-bold text-muted text-uppercase">Ordered</th>
                  <th class=" font-weight-bold text-muted text-uppercase">Qty</th>
                  <th class=" font-weight-bold text-muted text-uppercase">Harga</th>
                  <th class=" font-weight-bold text-muted text-uppercase">Total</th>


                </tr>
              </thead>
              <tbody>
                <?php

                $no = 1;
                foreach ($cart as $row) {

                ?>
                  <tr class="font-weight-boldest">

                    <td class="pt-7 align-middle"><?= $no++ ?></td>
                    <td class="pt-7 align-middle"><?= $row->nama ?></td>
                    <td class="pt-7 align-middle"><?= $row->alamat ?></td>
                    <td class="pt-7 align-middle"><?= $row->no_hp ?></td>
                    <td class="pt-7 align-middle"><?= $row->tanggal_pesan ?></td>
                    <td class="pt-7 align-middle"><?= $row->nama_produk ?></td>
                    <td class="pt-7 align-middle"><?= $row->jumlah ?></td>
                    <td class="pt-7 align-middle">Rp. <?= number_format($row->harga) ?></td>
                    <td class="pt-7 align-middle">Rp. <?= number_format($row->harga * $row->jumlah) ?></td>



                  </tr>
                <?php
                  @$total = @$total + ($row->jumlah * $row->harga);
                } ?>
                <tr>
                  <td colspan="8" class="font-weight-bolder font-size-h5 text-right">Total</td>
                  <!-- <td class=" font-weight-bolder font-size-h5 text-right">Total</td> -->
                  <td class=" font-weight-bolder font-size-h5 text-success  pr-0">Rp. <?= number_format(@$total) ?></td>
                </tr>

              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>


    <?php
    // @$gt = @$gt + @$total[$rew->id_keranjang];
    ?>

  </div>

  <div class="row" style="page-break-inside: avoid;">
    <div class="col-md-6 col-sm-6 text-center ">

    </div>
    <div class="col-md-6 col-sm-6` text-center ">
      <strong>
        <p style="margin-bottom: 1px;">Padang, <?= date('d F Y') ?></p>
        <p>Pimpinan Luxury Florist</p>
        <br>
        <br><br><br><br>
        <p style="margin-bottom: 1px;"><u>PIMPINAN</u> </p>
        <!-- <p>NIP. 19680906 199503 1 001</p> -->
      </strong>
    </div>

  </div>
</body>

</html>