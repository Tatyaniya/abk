<footer class="footer">
        <div class="container footer__container">
            <div class="footer__left">
                <a href="#" class="logo footer__logo">
                    <img src="<?php bloginfo('template_directory') ?>/img/logo.png" alt="logo" class="logo__img">
                    АБК Экспертиза
                </a>
                <p class="copyright">
                    &#169; Все права защищены
                </p>
            </div>
            <nav class="nav footer__nav">
                <?php wp_nav_menu( array(
                    'theme_location'  => '',
                    'menu'            => 'main', 
                    'container'       => false, 
                    'container_class' => '', 
                    'container_id'    => '',
                    'menu_class'      => 'nav__list nav__list_f', 
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
            <div class="footer__right">
                <a href="tel:79163577584" class="tel footer__tel">
                    +7 (916) 357-75-84
                </a>
                <a href="#" class="call footer__call order">
                    Заказать звонок
                </a>
            </div>
        </div>
        <div class="copyright__tablets">
            &#169; Все права защищены
        </div>
    </footer>
    <div style="display: none;">
        <div class="box-modal" id="exampleModal">
            <div class="box-modal_close arcticmodal-close">x</div>
            <div class="box-modal__title">
                Заказать звонок
            </div>
            <?php echo do_shortcode('[contact-form-7 id="249" title="Основная форма"]'); ?>
        </div>
    </div>
    <?php wp_footer(); ?>
    <script src="<?php bloginfo('template_directory') ?>/js/jquery-3.3.1.min.js"></script>
    <script src="<?php bloginfo('template_directory') ?>/js/jquery.arcticmodal-0.3.min.js"></script>
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU"></script>
    <script src="<?php bloginfo('template_directory') ?>/js/main.js"></script>
</body>
</html>