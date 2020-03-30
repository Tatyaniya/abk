<?php get_template_part('template-parts/head') ?>
<body>
    <header class="header header_services" id="header">
        <div class="container header__container">
            <div class="navigation">
                <div class="navigation__top">
                    <a href="#" class="logo navigation__logo">
                        <img src="<?php bloginfo('template_directory') ?>/img/logo.png" alt="logo" class="logo__img">
                        АБК Экспертиза
                    </a>
                    <div class="calls">
                        <a href="tel:79163577584" class="tel navigation__tel">
                            +7 (916) 357-75-84
                        </a>
                        <a href="#" class="call navigation__call order">
                            Заказать звонок
                        </a>
                    </div>
                    <div class="hamburger  hamburger-abs">
                        <div class="hamburger__link"></div>
                    </div>
                </div>
                <nav class="nav navigation__nav">
                    <?php wp_nav_menu( array(
                        'theme_location'  => '',
                        'menu'            => 'main', 
                        'container'       => false, 
                        'container_class' => '', 
                        'container_id'    => '',
                        'menu_class'      => 'nav__list nav-hidden', 
                        'menu_id'         => '',
                        'echo'            => true,
                        'fallback_cb'     => 'wp_page_menu',
                        'before'          => '',
                        'after'           => '',
                        'link_before'     => '',
                        'link_after'      => '',
                        'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
                        'depth'           => 0,
                        'walker'          => '',
                        ) );
                    ?>
                </nav>
            </div>
            <div class="serv">
                <h2 class="title-2">
                    <?php the_title(); ?>
                </h2>
                <?php if ( function_exists( 'dimox_breadcrumbs' ) ) dimox_breadcrumbs(); ?>
            </div>
        </div>
    </header>