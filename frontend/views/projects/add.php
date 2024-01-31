<?php

use yii\widgets\ActiveForm;
use yii\helpers\Url;
?>
<!-- Page header -->
<div class="page-header page-header-default">
	<div class="page-header-content">
		<div class="page-title">
			<h4>
				<span class="text-semibold"><?= Yii::t('app','Add Project'); ?></span>
			</h4>
		</div>
	</div>
	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li>
				<a href="<?= Url::to(['admin/dashboard']); ?>"><i class="icon-home2 position-left"></i><?= Yii::t('app','Dashboard'); ?></a>
			</li>
			<li>
				<a href="<?= Url::to(['admin/projects']); ?>"><?= Yii::t( 'app','Projects'); ?></a>
			</li>
			<li class="active"><?= Yii::t( 'app','Add'); ?></li>
		</ul>
	</div>
</div>
<!-- /Page header -->
<!-- Content area -->
<div class="content">
<!-- <?//php $form = ActiveForm::begin(['action' => ['categories/edit', 'id' => $category->id], 'method' => 'post']); ?> -->
<?php $form = ActiveForm::begin(['action' => ['projects/add'], 'method'=> 'post' , 'id' => 'projectform'])?>
	<!-- <form action="<?//= ('admin/projects/add'); ?>" id="projectform" method="POST"> -->
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<!-- Panel -->
				<div class="panel panel-flat">
					<!-- Panel heading -->
					<div class="panel-heading">
						<div class="row">
							<div class="col-md-10">
								<h5 class="panel-title">
									<strong><?= Yii::t( 'app','Project'); ?></strong>
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
									<label><?= Yii::t( 'app','Project Name'); ?>:</label>
									<input type="text" class="form-control" placeholder="<?= Yii::t( 'app','Project Name'); ?>" id="name" name="name">
								</div>
								<div class="form-group">
									<label><?= Yii::t( 'app','Description'); ?>:</label>
									<input type="text" class="form-control" placeholder="<?= Yii::t( 'app','Description'); ?>" id="details" name="details">
								</div>
							</div>
						</div>
					</div>
					<!-- /Panel body -->
				</div>
				<!-- /Panel -->
			</div>
		</div>
		<div class="btn-bottom-toolbar text-right btn-toolbar-container-out">
		<button type="submit" class="btn btn-success" name="submit"><?= Yii::t( 'app','save'); ?></button>
		<a class="btn btn-default" onclick="window.history.back();"><?= Yii::t( 'app','back'); ?></a>
		</div>
	<!-- </form> -->
    <?php ActiveForm::end(); ?>

</div>
<!-- /Content area -->

<script type="text/javascript">
$("#projectform").validate({
	rules: {
		name:
		{
			required: true,
		},
	},
	messages: {
		name:
		{
			required:"<?= Yii::t( 'app','please enter') ?>",
		},
	}
});
</script>

