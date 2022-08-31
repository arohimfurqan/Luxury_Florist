<html>

<head>
  <title>Bukti Penyewaan</title>
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
    <div class="col-md-12 text-center">
      <p>BUKTI PENYEWAAN</p>
      <!-- <p>SATUAN POLISI PAMONG PRAJA KOTA PADANG</p> -->

    </div>
  </div>
  <div class="container">
    <?php
    $db      = \Config\Database::connect();

    foreach ($cart as $rew) :


      $biodata = $db->table('users')->select('biodata.*,users.*,tb_provinsi.nama as nama_provinsi,tb_kota_kabupaten.nama as nama_kota,tb_provinsi.id as id_provinsi,tb_kota_kabupaten.id as id_kota,users.nama as nama_user')->join('biodata', 'user_id=id_user')->join('tb_provinsi', 'provinsi_id=tb_provinsi.id')->join('tb_kota_kabupaten', 'kota_id=tb_kota_kabupaten.id')->where('id_user', $rew->user_id)->get()->getRow();


    ?>
      <div class="row">
        <div class="col-md-12">
          <h6 class="font-weight-bolder mb-3">Delivery Address:</h6>
          <div class="text-dark-50 line-height-lg">
            <div><strong>Penerima :</strong> <?= strtoupper($biodata->nama_user) ?></div>
            <div><strong>Tanggal :</strong> <?= strtoupper(date("d F Y", strtotime($rew->tanggal_pembayaran))) ?></div>
            <div><strong>Alamat :</strong> <?= strtoupper($biodata->nama_provinsi) ?>, <?= strtoupper($biodata->alamat) ?></div>
            <div><strong>No Handphone :</strong> <?= $biodata->no_hp ?></div>
            <div><strong>Kurir :</strong>
              <?= strtoupper($rew->nama_kurir) ?>
            </div>
          </div>
          <div class="separator separator-dashed my-5"></div>
          <!--end::Section-->
          <!--begin::Section-->
          <h6 class="font-weight-bolder mb-3">Order Details:</h6>
          <div class="text-dark-50 line-height-lg">
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th class="pl-0 font-weight-bold text-muted text-uppercase">Ordered Items</th>
                    <th class="text-right font-weight-bold text-muted text-uppercase">Qty</th>
                    <th class="text-right font-weight-bold text-muted text-uppercase">Unit Price</th>
                    <th class="text-right pr-0 font-weight-bold text-muted text-uppercase">Amount</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $cart2 = $db->table('keranjang')->join('keranjang_produk', 'id_keranjang=keranjang_id')->join('produk', 'id_produk=produk_id')->where('id_keranjang', $rew->id_keranjang)->get()->getResult();
                  foreach ($cart2 as $row) {
                  ?>
                    <tr class="font-weight-boldest">
                      <td class="border-0 pl-0 pt-7 d-flex align-items-center">

                        <?= $row->nama_produk ?>
                      </td>
                      <td class="text-right pt-7 align-middle"><?= $row->jumlah ?></td>
                      <td class="text-right pt-7 align-middle">Rp. <?= number_format($row->harga) ?></td>
                      <td class="text-primary pr-0 pt-7 text-right align-middle">Rp. <?= number_format($row->harga * $row->jumlah) ?></td>
                    </tr>
                  <?php
                    @$total[$rew->id_keranjang] = @$total[$rew->id_keranjang] + ($row->harga * $row->jumlah);
                  } ?>

                  <tr>
                    <td colspan="2"></td>
                    <td class=" font-weight-bolder font-size-h5 text-right">Total</td>
                    <td class=" font-weight-bolder font-size-h5 text-success text-right pr-0">Rp. <?= number_format(@$total[$rew->id_keranjang]) ?></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>


    <?php
      @$gt = @$gt + @$total[$rew->id_keranjang];
    endforeach ?>

    <div class="table-responsive">
      <table class="table">
        <thead>
          <tr>
            <th class="pl-0 font-weight-bold text-muted text-uppercase"></th>
            <th class="text-right font-weight-bold text-muted text-uppercase"></th>
            <th class="text-right font-weight-bold text-muted text-uppercase">Grand Total</th>
            <th class="text-right pr-0 font-weight-bold text-muted text-uppercase">Rp. <?= number_format(@$gt) ?></th>
          </tr>
        </thead>

      </table>
    </div>
  </div>

</body>

</html>