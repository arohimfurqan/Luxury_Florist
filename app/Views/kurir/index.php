<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Kurir</h3>
                <div class="card-tools">
                    <a href="<?= BASE ?>/kurir/add" class="btn btn-success">Add</a>
                </div>
            </div>

            <!-- /.card-header -->
            <div class="card-body">

                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Nama Kurir</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($kurir as $row) :
                        ?>
                            <tr>
                                <td><?= $row->nama_kurir ?></td>
                                <td>
                                    <a href="<?= BASE ?>/kurir/edit/<?= $row->id_kurir ?>" class="btn btn-warning">Edit</a>&nbsp;
                                    <a href="<?= BASE ?>/kurir/delete/<?= $row->id_kurir ?>" class="btn btn-danger">Delete</a>
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