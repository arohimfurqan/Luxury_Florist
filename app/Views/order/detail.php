<?php
$db = Config\database::connect();
?>
<div class="row">
  <div class="col-12">
    <div class="card">
      <div class="card-header">
        <h3 class="card-title">Order</h3>
        <div class="card-tools">
          <!-- <a href="<?= BASE ?>/produk/add" class="btn btn-success">Add</a> -->
        </div>
      </div>

      <!-- /.card-header -->
      <div class="card-body">

        <h4 class="mb-10 font-weight-bold text-dark">Review your and Submit</h4>
        <h6 class="font-weight-bolder mb-3">Delivery Address:</h6>
        <div class="text-dark-50 line-height-lg">
          <div><strong>Alamat :</strong> <?= strtoupper($biodata->nama_provinsi) ?>, <?= strtoupper($biodata->alamat) ?></div>
          <div><strong>No Handphone :</strong> <?= $biodata->no_hp ?></div>
          <div><strong>Penerima :</strong> <?= strtoupper($biodata->nama_user) ?></div>
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
                  <th class="text-right font-weight-bold text-muted text-uppercase">Tanggal Penyewaan</th>
                  <th class="text-right font-weight-bold text-muted text-uppercase">Lama Penyewaan</th>
                  <th class="text-right font-weight-bold text-muted text-uppercase">Qty</th>
                  <th class="text-right font-weight-bold text-muted text-uppercase">Keterangan</th>
                  <th class="text-right font-weight-bold text-muted text-uppercase">Unit Price</th>
                  <th class="text-right pr-0 font-weight-bold text-muted text-uppercase">Amount</th>
                </tr>
              </thead>
              <tbody>
                <?php
                foreach ($cart as $row) {
                ?>
                  <tr class="font-weight-boldest">
                    <td class="border-0 pl-0 pt-7 d-flex align-items-center">
                      <!--begin::Symbol-->
                      <?php
                      if (!$row->foto_produk) { ?>
                        <img src="<?= BASE ?>/front_assets/custom/apps/ecommerce/img/no-image.png" alt="" width="70px" height="70px">

                      <?php } else { ?>
                        <img src="<?= BASE ?>/uploads/<?= $row->foto_produk ?>" alt="" width="70px" height="70px">

                      <?php }
                      ?>
                      <!--end::Symbol-->
                      <?= $row->nama_produk ?>
                    </td>
                    <td class="text-right pt-7 align-middle"><?= $row->tanggal_penyewaan ?></td>
                    <td class="text-right pt-7 align-middle"><?= $row->lama_penyewaan ?> Hari</td>
                    <td class="text-right pt-7 align-middle"><?= $row->jumlah ?></td>
                    <td class="text-right pt-7 align-middle"><?= $row->keterangan ?></td>
                    <td class="text-right pt-7 align-middle">Rp. <?= number_format($row->harga) ?></td>
                    <td class="text-primary pr-0 pt-7 text-right align-middle">Rp. <?= number_format($row->harga * $row->jumlah) ?></td>
                  </tr>
                <?php
                  @$total = @$total + ($row->harga * $row->jumlah);
                } ?>

                <tr>
                  <td colspan="5"></td>
                  <td class=" font-weight-bolder font-size-h5 text-right">Grand Total</td>
                  <td class=" font-weight-bolder font-size-h5 text-success text-right pr-0">Rp. <?= number_format(@$total) ?></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <label for="">Bukti Pembayaran</label>
        <a href="<?= BASE ?>/uploads/<?= $cart2->bukti_pembayaran ?>"><br>
          <img src="<?= BASE ?>/uploads/<?= $cart2->bukti_pembayaran ?>" alt="" height="150px" width="150px">
        </a>
      </div>
      <div class="card-footer text-muted">
        <?php
        if ($cart2->status == 'Lunas') { ?>
          <button class="btn btn-success btn-sm" type="button" data-toggle="modal" data-target="#modal-default">Konfirmasi / Kirim</button>
          <a href="<?= BASE ?>/front/bukti/<?= $row->id_keranjang ?>" target="_blank" rel="noopener noreferrer" class="btn btn-sm btn-info">Bukti</a>
          <a href="<?= BASE ?>/order/cancel/<?= $cart2->id_keranjang ?>" class="btn btn-danger btn-sm">Cancel</a>
        <?php } ?>
      </div>
      <!-- /.card-body -->
    </div>
  </div>
</div>

<div class="modal fade" id="modal-default">
  <div class="modal-dialog">
    <div class="modal-content">
      <form action="<?= BASE ?>/order/kirim/<?= $cart2->id_keranjang ?>" method="post">

        <div class="modal-header">
          <h4 class="modal-title">Pilih Kurir</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <select name="kurir" id="" class="form-control" required>
            <option value="">==PILIH==</option>
            <?php
            $kurir = $db->table('kurir')->get()->getResult();
            foreach ($kurir as $kur) {
            ?>
              <option value="<?= $kur->id_kurir ?>"><?= $kur->nama_kurir ?></option>
            <?php } ?>
          </select>
        </div>
        <div class="modal-footer justify-content-between">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
      </form>

    </div>

  </div>

</div>
<!-- href="" -->