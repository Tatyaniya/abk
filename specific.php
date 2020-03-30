<?php
/*
Template Name: Конкретная услуга
Template Post Type: post, page, product
*/
?>

<?php get_template_part('template-parts/header') ?>

<section class="desc">
    <div class="container desc__container">
        <?php if (have_posts()) : ?>
            <?php while (have_posts()) : the_post(); ?>
            <?php the_content(); ?>
            <?php endwhile; ?>
            <?php endif;
        ?>
   </div>
</section>

<?php get_template_part('template-parts/footer') ?>