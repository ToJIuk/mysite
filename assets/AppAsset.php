<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
        'css/prettyPhoto.css',
        'css/flexslider.css',
        'css/style.css',
        'css/main.css'
    ];
    public $js = [
        'js/jquery.min.js',
        'js/jquery.easing.1.3.js',
        'js/jquery-ui-1.8.16.custom.min.js',
        'js/all-in-one-min.js',
        'js/setup.js',
        'js/main.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
