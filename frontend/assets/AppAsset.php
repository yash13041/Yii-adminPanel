<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        // 'css/site.css',
        // 'css/extras/animate.min.css',
        // 'css/icons/fontawesome/styles.min.css',
        // 'css/icons/icomoon/styles.css',
        // 'css/icons/summernote',
        // 'css/bootstrap.css',
        // 'css/colors.css',
        // 'css/components.css',
        // 'css/core.css',
        // 'css/bootstrap.min.css',
        // 'css/style.css'

    ];
    public $js = [
        // 'js/plugins/loaders/pace.min.js',
        // 'js/core/libraries/jquery.min.js',
        // 'js/core/libraries/bootstrap.min.js',
        // 'js/plugins/loaders/blockui.min.js',
        // 'js/plugins/forms/styling/switchery.min.js',
        // 'js/plugins/forms/validation/validate.min.js',
        // 'js/plugins/notifications/sweet_alert.min.js',
        // 'js/plugins/ui/moment/moment.min.js',
        // 'js/plugins/pickers/daterangepicker.js',
        // 'js/plugins/pickers/anytime.min.js',
        // 'js/plugins/pickers/pickadate/picker.js',
        // 'js/plugins/pickers/pickadate/picker.date.js',
        // 'js/plugins/pickers/pickadate/picker.time.js',
        // 'js/plugins/pickers/pickadate/legacy.js',
        // 'js/core/libraries/jquery_ui/interactions.min.js',
        // 'js/plugins/forms/selects/select2.min.js',
        // 'js/plugins/notifications/jgrowl.min.js',
        // 'js/plugins/editors/summernote/summernote.min.js',
        // 'js/plugins/forms/styling/uniform.min.js',
        // 'js/plugins/tables/datatables/datatables.min.js',
        // 'js/plugins/tables/datatables/extensions/buttons.min.js',
        // 'js/plugins/tables/datatables/extensions/jszip/jszip.min.js',
        // 'js/plugins/tables/datatables/extensions/pdfmake/pdfmake.min.js',
        // 'js/plugins/tables/datatables/extensions/pdfmake/vfs_fonts.min.js',
        // 'js/core/app.js',
        // 'js/common.js'
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap5\BootstrapAsset',
    ];
}
