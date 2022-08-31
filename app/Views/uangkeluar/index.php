<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Uang Keluar</h3>
                <div class="card-tools">
                    <a href="<?= BASE ?>/uangkeluar/add" class="btn btn-success">Add</a>
                </div>
            </div>

            <!-- /.card-header -->
            <div class="card-body">

                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Tanggal</th>
                            <th>Jumlah</th>
                            <!-- <th>Brand</th> -->
                            <th>Uraian</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($uangkeluar as $row) :
                        ?>
                            <tr>
                                <td><?= $row->tanggal_keluar ?></td>
                                <td><?= $row->jumlah ?></td>
                                <!-- <td>< $row->nama_brand ?></td> -->
                                <td><?= $row->keterangan ?></td>

                                <td>
                                    <a href="<?= BASE ?>/uangkeluar/edit/<?= $row->id_uangkeluar ?>" class="btn btn-warning">Edit</a>&nbsp;
                                    <a href="<?= BASE ?>/uangkeluar/delete/<?= $row->id_uangkeluar ?>" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>

                </table>
            </div>
            <!-- /.card-body -->
        </div>
    </div>
</div>