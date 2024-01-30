<?php

use yii\bootstrap5\ActiveForm;
use yii\bootstrap5\Html;

$this->title = 'Login to Your Account';
$this->params['breadcrumbs'][] = $this->title;
?>
<?php $form = ActiveForm::begin(['id' => 'login-form']); ?>

<div class="panel panel-body login-form">
    <div class="text-center">
        <div class="icon-object border-slate-300 text-slate-300">
            <i class="icon-reading"></i>
        </div>
        <h5 class="content-group"><?= Html::encode($this->title) ?><small class="display-block"><?= Yii::t('app', 'Enter your credentials below') ?></small></h5>
    </div>

    <?= $form->errorSummary($model); ?>

    <div class="form-group has-feedback has-feedback-left">
        <div class="form-control-feedback"><i class="icon-envelop text-muted"></i></div>
        <?= Html::textInput('LoginFormNew[email]', null, [
            'class' => 'form-control',
            'placeholder' => 'Email',
            'id' => 'loginformnew-email',
        ]) ?>
        <!-- <? //= $form->field($model, 'email')->textInput(['placeholder' => 'Email'])
                ?> -->

    </div>

    <div class="form-group has-feedback has-feedback-left">
        <div class="form-control-feedback"><i class="icon-lock2 text-muted"></i></div>
        <?= Html::passwordInput('LoginFormNew[password]', null, [
            'class' => 'form-control',
            'placeholder' => 'Password',
            'id' => 'loginformnew-password'
        ]) ?>
        <!-- <?//= $form->field($model, 'password')?> -->
    </div>

    <div class="form-group login-options">
        <div class="row">
            <div class="col-sm-6">
                <div class="checkbox-inline">
                    <?= $form->field($model, 'remember')->checkbox([
                        'label' => 'Remember Me',
                        'template' => '{input}{label}{error}'
                    ]) ?>
                </div>
            </div>
            <div class="col-sm-6 text-right">
                <?= Html::a(Yii::t('app', 'Forgot Password'), ['authentication/forgot_password']) ?>
            </div>
        </div>
    </div>

    <div class="form-group">
        <!-- <?//= Html::submitButton(Yii::t('app', 'Login') . '<i class="icon-arrow-right14 position-right"></i>', ['class' => 'btn bg-blue btn-block','encode' => false,]) ?> -->
        <?= Html::submitButton('Login', ['class' => 'btn bg-blue btn-block']) ?>

    </div>

    <?= Html::a('Create a new account', ['/auth/register'], ['class' => 'text-center']) ?>
</div>

<?php ActiveForm::end(); ?>