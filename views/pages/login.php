<h1>Вход</h1>
<?php
use yii\widgets\ActiveForm;
use yii\helpers\Html;
?>

<?php $form = ActiveForm::begin(); ?>

<?= $form->field($login_model, 'name')->textInput(['autofocus' => true]) ?>

<?= $form->field($login_model, 'password')->passwordInput() ?>

<div class="form-group">
    <?= Html::submitButton('Submit', ['class' => 'btn btn-success', 'name' => 'contact-button']) ?>
</div>

<?php ActiveForm::end(); ?>
