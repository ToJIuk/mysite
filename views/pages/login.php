<h1>Вход</h1>
<?php
use yii\widgets\ActiveForm;
use yii\helpers\Html;
?>

<?php $form = ActiveForm::begin(); ?>

<?= $form->field($login_model, 'name')->label('Имя')->textInput() ?>

<?= $form->field($login_model, 'password')->label('Пароль')->passwordInput() ?>

<div class="form-group">
    <?= Html::submitButton('Вход', ['class' => 'btn btn-success', 'name' => 'contact-button']) ?>
</div>

<?php ActiveForm::end(); ?>
