<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class LoginAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        // 'css/site.css',
        // 'css/extras/animate.min.css',
        // 'css/icons/fontawesome/styles.min.css',
        'css/icons/icomoon/styles.css',
        // 'css/icons/summernote',
        'css/bootstrap.css',
        'css/colors.css',
        'css/components.css',
        'css/core.css',
        // 'css/bootstrap.min.css',
        'css/style.css'

    ];
    public $js = [
        // 'js/core/libraries/jquery.min.js',
        'js/core/libraries/bootstrap.min.js',
        'js/plugins/forms/validation/validate.min.js',
        'js/plugins/forms/styling/uniform.min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap5\BootstrapAsset',
    ];
}
