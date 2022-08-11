     <?php
        $uri = service('uri'); // Loading 'uri' service
        ?>
     <!-- Sidebar Menu -->
     <?php
        if (session()->get('role') == 'admin') {
        ?>
         <nav class="mt-2">
             <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                 <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                 <li class="nav-item">
                     <a href="<?= BASE ?>" class="nav-link <?= $uri->getSegment(1) ==  'home' ||  $uri->getSegment(1) == ''  ? 'active' : '' ?>">
                         <i class="nav-icon fas fa-tachometer-alt"></i>
                         <p>
                             Dashboard
                         </p>
                     </a>

                 </li>
                 <li class="nav-item <?= $uri->getSegment(1) ==  'kategori' || $uri->getSegment(1) ==  'brand'  ? 'menu-open' : '' ?>">
                     <a href=" #" class="nav-link <?= $uri->getSegment(1) ==  'kategori' || $uri->getSegment(1) ==  'brand'  ? 'active' : '' ?>">
                         <i class="nav-icon fas fa-book"></i>
                         <p>
                             Master
                             <i class="fas fa-angle-left right"></i>
                         </p>
                     </a>
                     <ul class="nav nav-treeview">
                         <li class="nav-item">
                             <a href="<?= BASE ?>/kategori/" class="nav-link <?= $uri->getSegment(1) ==  'kategori'  ? 'active' : '' ?>">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>Kategori</p>
                             </a>
                         </li>
                         <!-- <li class="nav-item">
                         <a href="<?= BASE ?>/brand/" class="nav-link <?= $uri->getSegment(1) ==  'brand'  ? 'active' : '' ?>">
                             <i class="far fa-circle nav-icon"></i>
                             <p>Brand</p>
                         </a>
                     </li> -->
                     </ul>
                 </li>
                 <li class="nav-item">
                     <a href="<?= BASE ?>/produk" class="nav-link <?= $uri->getSegment(1) ==  'produk'  ? 'active' : '' ?>">
                         <i class="nav-icon fas fa-book"></i>

                         <p>
                             Produk
                         </p>
                     </a>

                 </li>
                 <li class="nav-item">
                     <a href="<?= BASE ?>/order" class="nav-link <?= $uri->getSegment(1) ==  'order'  ? 'active' : '' ?>">
                         <i class="nav-icon fas fa-book"></i>
                         <p>
                             Order
                         </p>
                     </a>
                 </li>
                 <li class="nav-item">
                     <a href="<?= BASE ?>/terkirim" class="nav-link <?= $uri->getSegment(1) ==  'terkirim'  ? 'active' : '' ?>">
                         <i class="nav-icon fas fa-book"></i>
                         <p>
                             Pesanan Terkirim
                         </p>
                     </a>
                 </li>
                 <!-- <li class="nav-item">
                 <a href="<?= BASE ?>/pengembalian" class="nav-link <?= $uri->getSegment(1) ==  'pengembalian'  ? 'active' : '' ?>">
                     <i class="nav-icon fas fa-book"></i>
                     <p>
                         Pesanan Kembali
                     </p>
                 </a> -->
                 </li>
                 <li class="nav-item <?= $uri->getSegment(1) ==  'laporan'   ? 'menu-open' : '' ?>">
                     <a href=" #" class="nav-link <?= $uri->getSegment(1) ==  'laporan'   ? 'active' : '' ?>">
                         <i class="nav-icon fas fa-book"></i>
                         <p>
                             Laporan
                             <i class="fas fa-angle-left right"></i>
                         </p>
                     </a>
                     <ul class="nav nav-treeview">
                         <li class="nav-item">
                             <a href="<?= BASE ?>/laporan/produk" class="nav-link <?= $uri->getSegment(1) ==  'laporan' && $uri->getSegment(2) ==  'produk'  ? 'active' : '' ?>" target="_blank">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>Produk</p>
                             </a>
                         </li>
                         <li class="nav-item">
                             <a href="<?= BASE ?>/laporan/order" class="nav-link <?= $uri->getSegment(1) ==  'laporan' && $uri->getSegment(2) ==  'order'  ? 'active' : '' ?>">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>Order</p>
                             </a>
                         </li>
                         <li class="nav-item">
                             <a href="<?= BASE ?>/laporan/terkirim" class="nav-link <?= $uri->getSegment(1) ==  'laporan' && $uri->getSegment(2) ==  'terkirim'  ? 'active' : '' ?>">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>Terkirim</p>
                             </a>
                         </li>
                         <li class="nav-item">
                             <a href="<?= BASE ?>/laporan/pengembalian" class="nav-link <?= $uri->getSegment(1) ==  'laporan' && $uri->getSegment(2) ==  'pengembalian'  ? 'active' : '' ?>">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>Pengembalian</p>
                             </a>
                         </li>
                         <li class="nav-item">
                             <a target="_blank" href="<?= BASE ?>/laporan/costumer" class="nav-link <?= $uri->getSegment(1) ==  'laporan' && $uri->getSegment(2) ==  'costumer'  ? 'active' : '' ?>">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>Costumer</p>
                             </a>
                         </li>
                     </ul>
                 </li>
             </ul>
         </nav>
     <?php } else if (session()->get('role') == 'pimpinan') { ?>

         <nav class="mt-2">
             <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                 <li class="nav-item <?= $uri->getSegment(1) ==  'laporan'   ? 'menu-open' : '' ?>">
                     <a href=" #" class="nav-link <?= $uri->getSegment(1) ==  'laporan'   ? 'active' : '' ?>">
                         <i class="nav-icon fas fa-book"></i>
                         <p>
                             Laporan
                             <i class="fas fa-angle-left right"></i>
                         </p>
                     </a>
                     <ul class="nav nav-treeview">
                         <li class="nav-item">
                             <a href="<?= BASE ?>/laporan/produk" class="nav-link <?= $uri->getSegment(1) ==  'laporan' && $uri->getSegment(2) ==  'produk'  ? 'active' : '' ?>" target="_blank">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>Produk</p>
                             </a>
                         </li>
                         <li class="nav-item">
                             <a href="<?= BASE ?>/laporan/order" class="nav-link <?= $uri->getSegment(1) ==  'laporan' && $uri->getSegment(2) ==  'order'  ? 'active' : '' ?>">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>Order</p>
                             </a>
                         </li>
                         <li class="nav-item">
                             <a href="<?= BASE ?>/laporan/terkirim" class="nav-link <?= $uri->getSegment(1) ==  'laporan' && $uri->getSegment(2) ==  'terkirim'  ? 'active' : '' ?>">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>Terkirim</p>
                             </a>
                         </li>
                         <li class="nav-item">
                             <a href="<?= BASE ?>/laporan/pengembalian" class="nav-link <?= $uri->getSegment(1) ==  'laporan' && $uri->getSegment(2) ==  'pengembalian'  ? 'active' : '' ?>">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>Pengembalian</p>
                             </a>
                         </li>
                         <li class="nav-item">
                             <a target="_blank" href="<?= BASE ?>/laporan/costumer" class="nav-link <?= $uri->getSegment(1) ==  'laporan' && $uri->getSegment(2) ==  'costumer'  ? 'active' : '' ?>">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>Costumer</p>
                             </a>
                         </li>
                     </ul>
                 </li>
             </ul>
         </nav>
     <?php } ?>