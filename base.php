<?php
/*
Template Name: Приборная база
Template Post Type: post, page, product
*/
?>

<?php get_template_part('template-parts/header') ?>

<section class="bas">
    <div class="container bas__container">
        <ul class="bas__list">
            <?php wp_list_pages(array (
                'child_of' => get_the_ID(),
                'depth'    => 1,
                'title_li' => 0
                )
            ); ?>
        </ul>
    </div>
</section>

<?php get_template_part('template-parts/footer') ?>
