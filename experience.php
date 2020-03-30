<?php
/*
Template Name: Наш опыт
Template Post Type: post, page, product
*/
?>

<?php get_template_part('template-parts/header') ?>

<section class="exp">
    <div class="container exp__container">
        <?php echo do_shortcode('[rl_gallery id="225"]'); ?>
    </div>
</section>

<?php get_template_part('template-parts/footer') ?>
