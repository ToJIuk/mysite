<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
?>

<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>
<header class="header_bg clearfix">
    <div class="container clearfix">
        <!-- Social -->
        <ul class="social-links">
            <li><a href="<?= \yii\helpers\Url::to('https://uk-ua.facebook.com')?>"><?= Html::img('@web/images/facebook.png')?></a></li>
            <li><a href="<?= \yii\helpers\Url::to('https://vk.com')?>"><?= Html::img('@web/images/vk.png')?></a></li>
        </ul>
        <!-- /Social -->
        <!-- Logo -->
        <div class="logo"> <a href="<?= \yii\helpers\Url::home()?>"><?= Html::img('@web/images/logo2.png')?></a> </div>
        <!-- /Logo -->
        <!-- Master Nav -->
        <nav class="main-menu">
            <ul>
                <li><a href="<?= \yii\helpers\Url::home()?>">Главная</a></li>
                <li><a href="<?= \yii\helpers\Url::to('/pages/list')?>">Победители ЛЧ</a></li>
                <li><a href="<?= \yii\helpers\Url::to('/pages/signup')?>">Регистрация</a></li>
                <li><a href="/">Вход</a></li>
            </ul>
        </nav>
        <!-- /Master Nav -->
    </div>

</header>
<!-- Slider -->
<div class="bannerbg">
    <?= $this->render('_slider')?>
</div>
<!-- /Slider -->

<!-- Content -->

<section class="container clearfix">
    <div class="col_3_4">
        <?= $content ?>
    </div>
    <div class="col_1_4 last" style="text-align: center; padding-top: 20px">
        <?= $this->render('_sidebar')?>
    </div>
    <div class="clear padding40"></div>

</section>
<!-- /Content -->

<!-- footer -->
<footer class="footer_bg_bottom clearfix">
    <div class="footer_bottom container">
        <div class="col_2_3">
           <div class="clear padding20"></div>
            <p>&copy; Copyright 2017 - All Rights Reserved. | Website By ToJIuk</p>
        </div>
        <div class="clear padding20"></div>
    </div>
</footer>
<!-- /footer -->
<!--wrapper end-->
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
