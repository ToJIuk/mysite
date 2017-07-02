<h1>Регистрация</h1>
<?php
use yii\widgets\ActiveForm;
use yii\helpers\Html;
?>

<?php $form = ActiveForm::begin(['class' => 'form-horizontal']); ?>

    <?= $form->field($model, 'name')->label('Имя')->textInput(['autofocus' => true]) ?>

    <?= $form->field($model, 'email')->label('Еmail') ?>

    <?= $form->field($model, 'password')->label('Пароль')->passwordInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Отправить', ['class' => 'btn btn-primary', 'name' => 'contact-button']) ?>
    </div>

<?php ActiveForm::end(); ?>
