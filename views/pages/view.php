<?php
use yii\helpers\Html;
?>

<?php if (!empty($page)): ?>
    <div class="padding20"></div>
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title"><?= $page->years ?></h3>
        </div>
        <div class="panel-body">
            <?= Html::img($page->img, ['width' => 550, 'height' => 367]) ?>
            <p><?= $page->text ?></p>
            <p><?= $page->teams ?></p>
        </div>
    </div>
<?php endif; ?>
