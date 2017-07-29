<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\widgets\Pjax;
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

<h2>Комментарии:</h2>

<div class="row">
    <?php Pjax::begin();?>

    <div class="col-lg-4">
        <?php $form = ActiveForm::begin(['options' => ['data' => ['pjax' => true]]]); ?>

        <?= $form->field($model, 'text')->label('Текст сообщения') ?>

        <?php if (!\Yii::$app->user->isGuest){ ?>
            <div class="form-group">
                <?= Html::submitButton('Добавить комментарий', ['class' => 'btn btn-primary', 'name' => 'contact-button']) ?>
            </div> <?php }else {echo "Для добавления комментариев необходима авторизация";} ?>

        <?php ActiveForm::end(); ?>

    </div>
    <?php Pjax::end(); ?>

</div>

<div class="row">
        <?php foreach ($comments as $com): ?>
            <div class="col-lg-2"><?= "{$com->id}.<b>{$com->name}</b>:"?></div>
            <div class="col-lg-7"><?= "\"{$com->text}\""?></div>
            <div class="col-lg-3"><?= "{$com->date}<br>"?></div>
        <?php endforeach;?>
    </div>
</div>

