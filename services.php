<?php
/*
Template Name: Услуги
Template Post Type: post, page, product
*/
?>

<?php get_template_part('template-parts/header') ?>

<section class="services">
        <div class="container services__container">
            <ul class="services__list">
                <?php wp_list_pages(array (
                    'child_of' => get_the_ID(),
                    'depth'    => 1,
                    'title_li' => 0
                    )
                ); ?>
            </ul>
        </div>
    </section>
    <section class="search">
        <div class="container search__container">
            <h3 class="title-3 title-3_white search__title">
                Не нашли необходимую экспертизу?
            </h3>
            <p class="search__text">
                Воспользуйтесь поиском
            </p>
            <div class="searchs">
                <?php get_search_form(); ?>
            </div>
        </div>
    </section>

<?php get_template_part('template-parts/footer') ?>