<?php
/*
Template Name: Подкатегория услуг
Template Post Type: post, page, product
*/
?>

<?php get_template_part('template-parts/header') ?>

<section class="sub">
    <div class="container sub__container">
        <ul class="sub-list">
            <?php wp_list_pages(array (
                'child_of' => get_the_ID(),
                'title_li' => 0
                )
            ); ?>
        </ul>
    </div>
</section>

<?php get_template_part('template-parts/footer') ?>
