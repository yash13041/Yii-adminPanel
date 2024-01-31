<?php

use yii\helpers\Url;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

?>
<!-- page header view/category/edit.php -->
<div class="page-header page-header-default">
    <div class="page-header-content">
        <div class="page-title">
            <h4>
                <span class="text-semibold"><?= $title ?></span>
            </h4>
        </div>
    </div>
    <div class="breadcrumb-line">
        <ul class="breadcrumb">
            <li><a href="<?= Url::to(['admin/dashboard']); ?>"><i class="icon-home2 position-left"></i><?= Yii::t('app', 'dashboard'); ?></a></li>
            <li><a href="<?= Url::to(['categories/index']); ?>"><?= Yii::t('app', 'categories'); ?></a></li>
            <li class="active"><?= ('edit'); ?></li>
        </ul>
    </div>
</div>
<!-- /Page header -->
<!-- Content area -->
<div class="content">
    <?php $form = ActiveForm::begin(['action' => ['categories/edit', 'id' => $category->id], 'method' => 'post']); ?>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <!-- Panel -->
            <div class="panel panel-flat">
                <!-- Panel heading -->
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-10">
                            <h5 class="panel-title">
                                <strong><?= Yii::t('app', 'Category'); ?></strong>
                            </h5>
                        </div>
                    </div>
                </div>
                <!-- /Panel heading -->
                <!-- Panel body -->
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <small class="req text-danger">*</small>
                                <label><?= ('Category Name'); ?>:</label>
                                <input type="text" class="form-control" placeholder="<?= Yii::t('app', 'Category_name'); ?>" id="category-name" name="Categories[name]" value="<?php echo $category->name; ?>">

                            </div>
                            <div class="form-group">
                                <label><?= ('status'); ?>:</label>
                                <?= $form->field($category, 'is_active')->checkbox(['class' => 'switchery']) ?>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Panel body -->
                <!-- /Panel -->
            </div>
        </div>
        <div class="btn-bottom-toolbar text-right btn-toolbar-container-out">
            <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success', 'name' => 'submit']) ?>
            <?= Html::a(Yii::t('app', 'Back'), 'javascript:history.back();', ['class' => 'btn btn-default']) ?>
        </div>
        <?php ActiveForm::end(); ?>
    </div>
</div>


<script type="text/javascript">
    $("#categoryfrom").validate({
        rules: {
            name: {
                required: true,
            },
        },
        messages: {
            name: {
                required: "<?= ('Please entre category name'); ?>",
            }
        }
    })
</script>