<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap5\Nav;
use yii\bootstrap5\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\LoginAsset;
use yii\helpers;

LoginAsset::register($this)

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" class="h-100">

<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <?= Html::cssFile('@web/css/bootstrap.min.css') ?>
    <?= Html::cssFile('@web/css/style.css') ?>
    <?= Html::jsFile('@web/js/core/libraries/jquery.min.js') ?>
    <?= Html::jsFile('@web/js/plugins/forms/validation/validate.min.js') ?>



</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?= ('') ?>">NISL CI Demo</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<?= ('/auth/login') ?>">Login</a></li>
                    <li><a href="<?= ('') ?>">Sign Up</a></li>
                </ul>
            </div><!--/.navbar-collapse -->
        </div>
    </nav>
    <?php echo $content; ?>
    <hr>
    <footer>
        <p>&copy; <?php echo date('Y') ?> <?= Yii::$app->params['companyName']; ?></a></p>
    </footer>
</div>
</body>

</html>
<?php $this->endPage() ?>