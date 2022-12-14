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

        <table id="example1" class="table table-bordered table-striped">
          <thead>
            <tr>
              <th>No</th>
              <th>Nama Pemesan</th>
              <th>Product</th>
              <th>Tanggal Pemesanan</th>
              <th>Tanggal Pembayaran</th>
              <th>Total Bayar</th>
              <th>Status</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <?php
            $no = 1;
            foreach ($data as $row) :
            ?>
              <tr>
                <td><?= $no++ ?></td>
                <td><?= $row->nama ?></td>
                <td class="align-items-center">
                  <?php
                  if (!$row->foto_produk) { ?>
                    <img src="<?= BASE ?>/front_assets/custom/apps/ecommerce/img/no-image.png" alt="" width="100px" height="100px">

                  <?php } else { ?>
                    <img src="<?= BASE ?>/uploads/<?= $row->foto_produk ?>" alt="" width="100px" height="100px">

                  <?php }
                  ?> <?= $row->nama_produk ?>
                </td>
                <td><?= $row->tanggal_pesan ?></td>
                <td><?= $row->tanggal_pembayaran ?></td>
                <td>Rp. <?= number_format($row->total) ?></td>
                <td><?= $row->status ?></td>
                <td><a href="<?= BASE ?>/order/detail/<?= $row->id_keranjang ?>" class="btn btn-success">Detail</a></td>
              </tr>
            <?php endforeach ?>
          </tbody>

        </table>
      </div>
      <!-- /.card-body -->
    </div>
  </div>
</div>