<?php

namespace frontend\controllers;

use frontend\models\ResendVerificationEmailForm;
use frontend\models\VerifyEmailForm;
use Yii;
use yii\base\InvalidArgumentException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginFormNew;
use frontend\models\PasswordResetRequestForm;
use frontend\models\ResetPasswordForm;
use frontend\models\SignupForm;
use frontend\models\RegisterForm;
use frontend\models\ContactForm;
use common\models\User;

/**
 * Site controller
 */
class AuthController extends Controller
{

    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::class,
                // 'only' => ['index'],
                'rules' => [
                    [
                        'actions' => ['login', 'register'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'allow' => true,
                        'actions' => ['logout'],
                        'roles' => ['@'],
                    ]
                ],
                'denyCallback' => function ($rule, $action){
                    return Yii::$app->response->redirect(['/auth/login']);
                },
            ],
        ];
    }

    public function beforeAction($action){
        if($action->id == 'index' && Yii::$app->user->isGuest){
            $this->redirect(['auth/register']);
            return false;
        }
        return parent::beforeAction($action);
    }

    public function actions()
    {
        // $this->layout = 'auth';
        // return $this->render('index');
        return [
            'error' => [
                'class' => \yii\web\ErrorAction::class,
            ],
            'captcha' => [
                'class' => \yii\captcha\CaptchaAction::class,
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    public function actionIndex()
    {

        // $this->layout = 'auth';
        return $this->render('index');
    }

    // public function actionViewUsers()
    // {
    //     $users = User::find()->all();
    //     return $this->render('view-users' , ['users' => $users]);
    // }

    // public function actionRegister()
    // {
    //     // $model = new RegisterForm();

    //     // if ($model->load(Yii::$app->request->post()) && $model->validate()) {
    //     //     $transaction = Yii::$app->db->beginTransaction();

    //     //     try {
    //     //         // Create a new user record
    //     //         $user = new User(); // Assuming you have a User model for the 'user' table
    //     //         $user->firstname = $model->firstname;
    //     //         $user->lastname = $model->lastname;
    //     //         $user->email = $model->email;
    //     //         $user->mobile_no = $model->mobile_no;
    //     //         // $user->password($model->password);
    //     //         $user->password = Yii::$app->security->generatePasswordHash($model->password);

    //     //         if ($user->save()) {
    //     //             $transaction->commit();
    //     //             Yii::$app->session->setFlash('success', 'Registration successful!');
    //     //             return $this->redirect(['auth/login']);
    //     //         } else {
    //     //             Yii::error('Unable to save user data: ' . json_encode($user->errors));

    //     //             $transaction->rollBack();
    //     //             Yii::$app->session->setFlash('error', 'Unable to save user data.');
    //     //             Yii::error('User not saved: ' . json_encode($user->errors));
    //     //         }
    //     //     } catch (\Exception $e) {
    //     //         Yii::error('An error occurred during user registration: ' . $e->getMessage());

    //     //         $transaction->rollBack();
    //     //         Yii::$app->session->setFlash('error', 'An error occurred during registration.');
    //     //         Yii::error('Registration error: ' . $e->getMessage());
    //     //     }
    //     // }

    //     // $this->layout = 'register';
    //     // return $this->render('register', [
    //     //     'model' => $model,
    //     // ]);


    //     $user = new User();
    //     $user->firstname = 'user';
    //     $user->lastname = 'example';
    //     $user->email = 'user@examle.com';
    //     $user->mobile_no = '9595959595';
    //     $user->password = Yii::$app->security->generatePasswordHash('password123');

    //     if($user->save()){
    //         Yii::$app->session->setFlash('success', 'Registration Success');
    //         return $this->redirect(['site/login']);
    //     }
    //     else{
    //         Yii::$app->session->setFlash('error', 'Unable to register user.');
    //     }

    //     return $this->render('register',[
    //         'model' => $user,
    //     ]);
    // }

    public function actionRegister()
    {
        $model = new RegisterForm();
        $this->layout = 'register';

        if ($model->load(Yii::$app->request->post()) && $model->register()) {
            Yii::$app->session->setFlash('success', 'Thank you for registration. Please check your inbox for verification email.');
            return $this->redirect(['auth/login']);
        }
        return $this->render('register', [
            'model' => $model
        ]);
    }


    public function actionLogin()
    {
        $this->layout = 'login';
        // if (!Yii::$app->user->isGuest) {
        //     return $this->goHome();
        // }

        $model = new LoginFormNew();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->redirect(['/admin/dashboard']);
            // return $this->goBack();
        }

        $model->password = '';

        return $this->render('login', [
            'model' => $model,
        ]);
    }

    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
}
