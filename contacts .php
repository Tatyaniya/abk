<?php
/*
Template Name: Контакты
Template Post Type: post, page, product
*/
?>

<?php get_template_part('template-parts/header') ?>

<section class="conty">
    <div class="container conty__container">
        <div class="contacts__blok contacts__blok_conty">
            <p class="contacts__item">
                Наш адрес: Россия, г. Москва, Электрический переулок 3/10, строение 3
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
        <div class="map" id="map"></div>
    </div>
</section>

<?php get_template_part('template-parts/footer') ?>
    