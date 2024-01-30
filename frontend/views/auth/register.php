<?php

use yii\bootstrap5\Html;
use yii\bootstrap5\ActiveForm;

$this->title = 'Signup';
$this->params['breadcrumbs'][] = $this->title;
?>


<div class="container" style="margin-top:100px;">
    <div class="row">
        <div class="col-md-6 com-md-offser-1">
            <h4>Sign Up</h4>
            <hr />
            <?php $form = ActiveForm::begin(['options' => ['id' => 'signup_form']]); ?>
            <div class="form-group">
                <?= $form->field($model, 'firstname')->textInput(['autofocus' => true]) ?>
            </div>
            <div class="form-group">
                <?= $form->field($model, 'lastname')->textInput() ?>
            </div>
            <div class="form-group">
                <?= $form->field($model, 'email')->textInput() ?>
            </div>
            <div class="form-group">
                <?= $form->field($model, 'mobile_no')->textInput() ?>
            </div>
            <div class="form-group">
                <?= $form->field($model, 'password')->passwordInput() ?>
            </div>
            <div class="form-group">
                <?= $form->field($model, 'confirm_password')->passwordInput() ?>
            </div>
            <div class="form-group">
                <?= Html::submitButton('Signup', ['class' => 'btn btn-primary', 'name' => 'signup-button']) ?>
            </div>
            <?php ActiveForm::end(); ?>
        </div>
    </div>