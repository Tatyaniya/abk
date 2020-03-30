<?php
/*
Template Name: Главная
Template Post Type: post, page, product
*/
?>
<?php get_template_part('template-parts/head') ?>
<body>
    <header class="header" id="header">
        <div class="container header__container">
            <div class="navigation">
                <div class="navigation__top">
                    <a href="<?php home_url() ?>" class="logo navigation__logo">
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
            <div class="offer">
                <h1 class="offer__title">
                    Высококачественная экспертиза в кратчайшие сроки
                </h1>
                <p class="offer__text">
                    Благодаря новейшим оборудованию и квалифицированным специалистам экспертиза происходит за максимально короткое время 
                </p>
                <a href="#" class="btn offer__btn order">
                    Оставить заявку
                </a>
            </div>
        </div>
    </header>
    <section class="why">
        <div class="container why__container">
            <h3 class="title-3 why__title">
                почему стоит выбрать нас?
            </h3>
            <ul class="why__list">
                <li class="why__item">
                    <div class="why__icon">
                        <img src="<?php bloginfo('template_directory') ?>/img/icon1.png" alt="specialists" class="why__img">
                    </div>
                    <p class="why__text">
                        Квалифицированные специалисты
                    </p>
                </li>
                <li class="why__item">
                    <div class="why__icon">
                        <img src="<?php bloginfo('template_directory') ?>/img/icon2.png" alt="guarantee" class="why__img">
                    </div>
                    <p class="why__text">
                        Гарантия качества
                    </p>
                </li>
                <li class="why__item">
                    <div class="why__icon">
                        <img src="<?php bloginfo('template_directory') ?>/img/icon3.png" alt="experts" class="why__img">
                    </div>
                    <p class="why__text">
                        Быстрые экспертизы
                    </p>
                </li>
                <li class="why__item">
                    <div class="why__icon">
                        <img src="<?php bloginfo('template_directory') ?>/img/icon4.png" alt="5 years" class="why__img">
                    </div>
                    <p class="why__text">
                        5 лет на рынке
                    </p>
                </li>
            </ul>
        </div>
    </section>
    <section class="help">
        <div class="container help__container">
            <h3 class="title-3 title-3_white help__title">
                чем мы можем вам помочь
            </h3>
            <ul class="help__list">
                <li class="help__item">
                    <div class="help__icon"></div>
                    <h4 class="help__subtitle">
                        <?php the_field('help-title-1'); ?>
                    </h4>
                    <p class="help__text">
                        <?php the_field('help-desc-1-1'); ?>
                    </p>
                    <p class="help__text">
                        <?php the_field('help-desc-1-2'); ?>
                    </p>
                    <p class="help__text">
                        <?php the_field('help-desc-1-3'); ?>
                    </p>
                </li>
                <li class="help__item">
                    <div class="help__icon"></div>
                    <h4 class="help__subtitle">
                        <?php the_field('help-title-2'); ?>
                    </h4>
                    <p class="help__text">
                        <?php the_field('help-desc-2-1'); ?>
                    </p>
                    <p class="help__text">
                        <?php the_field('help-desc-2-2'); ?>
                    </p>
                    <p class="help__text">
                        <?php the_field('help-desc-2-3'); ?>
                    </p>
                </li>
                <li class="help__item">
                    <div class="help__icon"></div>
                    <h4 class="help__subtitle">
                        <?php the_field('help-title-3'); ?>
                    </h4>
                    <p class="help__text">
                        <?php the_field('help-desc-3-1'); ?>
                    </p>
                    <p class="help__text">
                        <?php the_field('help-desc-3-2'); ?>
                    </p>
                    <p class="help__text">
                        <?php the_field('help-desc-3-3'); ?>
                    </p>
                </li>
            </ul>
            <a href="#" class="btn help__btn">
                Смотреть все услуги
            </a>
        </div>
    </section>
    <section class="base">
        <div class="container base__container">
            <h3 class="title-3 base__title">
                приборная база
            </h3>
            <div class="base__appliances">
                <?php echo do_shortcode('[rl_gallery id="186"]'); ?>
            </div>
            <a href="#" class="btn base__btn">
                Посмотреть базу
            </a>
        </div>
    </section>
    <section class="licenses">
        <div class="container licenses__container">
            <h3 class="title-3 title-3_white licenses__title">
                лицензии
            </h3>
            <?php echo do_shortcode('[rl_gallery id="120"]'); ?>
        </div>
    </section>
    <section class="contact">
        <div class="container contact__container">
            <h3 class="title-3 contact__title">
                как с нами связаться
            </h3>
            <div class="contact__content">
                <div class="contacts">
                    <div class="contacts__blok">
                        <p class="contacts__item">
                            Наш адрес: Россия, г. Москва
                        </p>
                        <a href="tel:79163577584" class="contacts__item">
                            Телефон: 
                            <span class="c-d">
                                +7 (916) 357-75-84
                            </span>
                        </a>
                        <a href="mailto:panklaska@yandex.ru" class="contacts__item">
                            E-mail: 
                            <span class="c-d">
                                panklaska@yandex.ru
                            </span>
                        </a>
                    </div>
                </div>
                <div class="map" id="map"></div>
            </div>
        </div>
    </section>
    <?php get_template_part('template-parts/footer') ?>
   