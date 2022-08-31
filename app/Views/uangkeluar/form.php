<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Form Uang Keluar</h3>
                <div class="card-tools">
                    <a href="<?= BASE ?>/uangkeluar/" class="btn btn-warning">Back</a>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <?php if (!empty($errors)) : ?>
                    <div class="alert alert-danger">
                        <?php foreach ($errors as $field => $error) : ?>
                            <p><?= $error ?></p>
                        <?php endforeach ?>
                    </div>
                <?php endif ?>
                <?php if (!empty($berhasil)) : ?>
                    <div class="alert alert-success">

                        <p><?= $berhasil ?></p>

                    </div>
                <?php endif ?>

                <?php
                if (@$update) { ?>

                    <form action="<?= BASE ?>/uangkeluar/edit/<?= $model->id_uangkeluar ?>" method="POST" enctype="multipart/form-data">
                        <?= csrf_field() ?>
                        <div class="row">
                            <div class="col-md-6 col-6 col-sm-4">
                                <label for="nama_uangkeluar">Tanggal</label>
                                <div class="form-group">
                                    <input type="date" class="form-control" name="tanggal" value="<?= $model->tanggal_keluar ?>">
                                </div>
                            </div>
                            <div class="col-md-6 col-6 col-sm-4">
                                <label for="qty">Jumlah</label>
                                <div class="form-group">
                                    <input type="number" class="form-control" name="jumlah" value="<?= $model->jumlah ?>">
                                </div>
                            </div>

                            <div class="col-md-12 col-12 col-sm-12">
                                <label for="status">Keterangan</label>
                                <div class="form-group">

                                    <textarea name="keterangan" id="" class="form-control" rows="5"><?= $model->keterangan ?></textarea>
                                    <!-- <label class="custom-file-label" for="formFileMultiple">Choose file</label> -->


                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">Submit</button>

                    </form>
                <?php  } else {


                ?>
                    <form action="<?= BASE ?>/uangkeluar/add" method="POST" enctype="multipart/form-data">
                        <?= csrf_field() ?>
                        <div class="row">
                            <div class="col-md-6 col-6 col-sm-4">
                                <label for="nama_uangkeluar">Tanggal</label>
                                <div class="form-group">
                                    <input type="date" class="form-control" name="tanggal">
                                </div>
                            </div>
                            <div class="col-md-6 col-6 col-sm-4">
                                <label for="qty">Jumlah</label>
                                <div class="form-group">
                                    <input type="number" class="form-control" name="jumlah">
                                </div>
                            </div>

                            <div class="col-md-12 col-12 col-sm-12">
                                <label for="status">Keterangan</label>
                                <div class="form-group">

                                    <textarea name="keterangan" id="" class="form-control" rows="5"></textarea>
                                    <!-- <label class="custom-file-label" for="formFileMultiple">Choose file</label> -->


                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">Submit</button>

                    </form>
                <?php } ?>
            </div>
            <!-- /.card-body -->
        </div>
    </div>
</div>