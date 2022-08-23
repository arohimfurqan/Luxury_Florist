<?php
$db = Config\database::connect();
?>
<!--begin::Header Menu Wrapper-->
<div class="header-menu-wrapper header-menu-wrapper-left" id="kt_header_menu_wrapper">
	<!--begin::Header Menu-->
	<div id="kt_header_menu" class="header-menu header-menu-left header-menu-mobile header-menu-layout-default">
		<!--begin::Header Nav-->
		<ul class="menu-nav">
			<li class="menu-item  ">
				<a href="<?= BASE ?>" class="menu-link ">
					<span class="menu-text">Home</span>
					<i class="menu-arrow"></i>
				</a>

			</li>



			<li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="hover" aria-haspopup="true">
				<a href="javascript:;" class="menu-link menu-toggle">
					<span class="menu-text">Kategori</span>
					<i class="menu-arrow"></i>
				</a>
				<div class="menu-submenu menu-submenu-classic menu-submenu-left">
					<ul class="menu-subnav">
						<?php
						$kategori = $db->table('kategori')->get()->getResult();

						if ($kategori) {
							foreach ($kategori as $kt) {
						?>
								<li class="menu-item " aria-haspopup="true">
									<a href="<?= BASE ?>/front/kategori/<?= $kt->id_kategori ?>" class="menu-link">
										<span class="menu-text"><?= $kt->nama_kategori ?></span>
									</a>
								</li>
						<?php }
						} ?>
					</ul>
				</div>
			</li>

			<li class="menu-item menu-item-submenu menu-item-rel">
				<a href="<?= BASE ?>/front/tentang_kami" class="menu-link ">
					<span class="menu-text">Tentang Kami</span>
					<i class="menu-arrow"></i>
				</a>

			</li>

			<li class="menu-item menu-item-submenu menu-item-rel">
				<a href="<?= BASE ?>/front/kontak_kami" class="menu-link ">
					<span class="menu-text">Kontak Kami</span>
					<i class="menu-arrow"></i>
				</a>

			</li>

		</ul>
		<!--end::Header Nav-->
	</div>
	<!--end::Header Menu-->
</div>
<!--end::Header Menu Wrapper-->