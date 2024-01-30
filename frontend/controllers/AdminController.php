<?php

namespace frontend\controllers;

use yii;
use yii\web\controller;
use yii\filters\AccessControl;



class AdminController extends Controller
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::class,
                'rules' => [
                    [
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
                'denyCallback'  => function ($rule, $action) {
                    return Yii::$app->response->redirect(['/auth/register']);
                }
            ],
        ];
    }



    public function actionDashboard()
    {
        $this->layout = 'admin';
        return $this->render('dashboard');
    }


}
