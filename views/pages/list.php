<?php

use yii\helpers\Url;
use yii\widgets\LinkPager;
use yii\helpers\Html;

?>

<section class="container clearfix">

<?php if (!empty($pages)): ?>
    <?php foreach ($pages as $i): ?>
        <div class="padding20"></div>
        <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><a href="<?=Url::to(['pages/view', 'id' => $i->id])?>"><?= $i->years ?></a></h3>
                </div>
                <div class="panel-body">
                    <span style="float: left; padding: 5px"><?= Html::img($i->img, ['width' => 90, 'height' =>80]) ?></span>
                       <span> <?= $i->description ?></span>
                </div>
            </div>
    <?php endforeach; ?>
<?= LinkPager::widget(['pagination' => $post])?>
<?php endif; ?>
</section>
