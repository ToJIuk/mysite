<?php
use yii\helpers\Html;
?>

<section class="container clearfix">
    <?php if (!empty($page)): ?>
            <div class="padding20"></div>
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><?= $page->years ?></h3>
                </div>
                <div class="panel-body">
                    <?= Html::img($page->img) ?>
                    <p><?= $page->text ?></p>
                    <p><?= $page->teams ?></p>
                </div>
            </div>
    <?php endif; ?>
</section>
