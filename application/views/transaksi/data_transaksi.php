<!doctype html>
<html lang="en">
 
<head>
    <?php $this->load->view('_partials/head'); ?>
    <title>Data Transaksi</title>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <?php $this->load->view('_includes/navbar'); ?>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <?php $this->load->view('_includes/left-sidebar'); ?>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid dashboard-content ">
                <!-- ============================================================== -->
                <!-- pageheader  -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Data Transaksi</h2>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="<?php echo site_url('') ?>" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item active" aria-current="page"><?php echo $this->uri->segment(1) ?></li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <h5 class="card-header">Data Transaksi</h5>
                            <div class="card-body">
                                <div class="info">
                                    <?php if ($this->session->flashdata('hapus')): ?>
                                        <div class="alert alert-danger">Sukses Menghapus Data</div>
                                    <?php endif ?>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>Masakan</th>
                                                <th>ID_Transaksi</th>
                                                <th>Tanggal</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php if ($transaksi === 'kosong'): ?>
                                                <tr>
                                                    <td colspan="5" align="center">Kosong</td>
                                                </tr>
                                            <?php else: ?>
                                                <?php foreach ($transaksi as $key => $value): ?>
                                                    <tr>
                                                        <td><?php echo $key+1 ?></td>
                                                        <td><?php foreach ($value->masakan as $key => $val): ?>
                                                            <table>
                                                                <tr><?php echo $val ?> <span class="badge badge-primary"><?php echo $value->total[$key] ?></span></tr>
                                                            </table>
                                                        <?php endforeach ?></td>
                                                        <td><?php echo $value->id ?></td>
                                                        <td><?php echo $value->tanggal ?></td>
                                                        <td width="30%">
                                                            <a href="<?php echo site_url('transaksi/detail/').$value->id ?>" class="btn btn-success btn-sm">Detail</a>
                                                            <a href="<?php echo site_url('transaksi/hapus/').$value->id ?>" class="btn btn-danger btn-sm">Hapus</a>
                                                        </td>
                                                    </tr>
                                                <?php endforeach ?>
                                            <?php endif ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <?php $this->load->view('_includes/footer'); ?>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    </form>
    </div>
    </div>
    </div>

    <div class="modal">
    <div class="modal-dialog">
    <div class="modal-content">
    <form method="post">
        <div class="modal-header">
            <h5 class="modal-title m-0">Edit Data</h5>
            <button class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div class="info"></div>
            <div class="form-group">
                <label>Status</label>
                <select class="form-control select2"  required>
                    <option selected>Open this select menu</option>
                    <option value="Diproses">Diproses</option>
                    <option value="Selesai">Selesai</option>
                </select>
            </div>
        </div>
        <div class="modal-footer">
            <button type="submit" class="btn btn-primary">Edit</button>
            <button class="btn btn-secondary" data-dismiss="modal">Batal</button>
        </div>
    </form>
    </div>
    </div>
    </div>
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <?php $this->load->view('_partials/foot'); ?>
    <script src="<?php echo base_url() ?>assets/concept-master/assets/vendor/parsley/parsley.js"></script>
    <script src="<?php echo base_url() ?>assets/concept-master/assets/vendor/datatables/js/data-table.js"></script>
    <script src="<?php echo base_url() ?>assets/concept-master/assets/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script>
        let edit_url = '<?php echo site_url('transaksi/edit') ?>'
    </script>
    <script src="<?php echo base_url() ?>assets/js/transaksi.js"></script>
</body>
 
</html>