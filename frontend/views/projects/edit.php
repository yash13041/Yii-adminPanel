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
            <li><a href="<?= Url::to(['projects/index']); ?>"><?= Yii::t('app', 'projects'); ?></a></li>
            <li class="active"><?= ('edit'); ?></li>
        </ul>
    </div>
</div>
<!-- /Page header -->
<!-- Content area -->
<div class="content">
    <?php $form = ActiveForm::begin(['action' => ['admin/projects/edit', 'id' => $project->id], 'method' => 'POST', 'id' => 'projectform']); ?>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <!-- Panel -->
            <div class="panel panel-flat">
                <!-- Panel heading -->
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-10">
                            <h5 class="panel-title">
                                <strong><?= Yii::t('app', 'Project'); ?></strong>
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
                                <label><?= Yii::t('app', 'Project Name'); ?>:</label>
                                <input type="text" class="form-control" placeholder="<?= Yii::t('app', 'Project Name'); ?>" id="project-name" name="Projects[name]" value="<?php echo $project->name; ?>">
                            </div>
                            <div class="form-group">
                                <label><?= Yii::t('app', 'Description') ?></label>
                                <input type="text" class="form-control" placeholder="<?= Yii::t('app', 'Project Description'); ?>" id="project-details" name="Projects[details]" value="<?= $project->details; ?>">
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
    $("#projectform").validate({
        rules: {
            'Projects[name]': {
                required: true,
            },
        },
        messages: {
            'Projects[name]': {
                required: "<?= Yii::t('app', 'Please entre project name'); ?>",
            }
        }
    })
</script>