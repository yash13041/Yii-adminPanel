<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => 'app-frontend',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'controllerNamespace' => 'frontend\controllers',
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-frontend',
            'enableCsrfValidation' => true,
            'csrfParam' => '_csrf',
            // 'BaseUrl' => ''
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-frontend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the frontend
            'name' => 'advanced-frontend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => \yii\log\FileTarget::class,
                    'levels' => ['error', 'warning'],
                    'categories' => ['app'],
                    'logFile' => '@runtime/logs/app.log',
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],

        'urlManager' => [
            // 'BaseUrl'
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                '' => 'auth/register',
                // 'index.php' => 'auth/register',
                'auth/login' => 'auth/login',
                'admin/dashboard' => 'admin/dashboard',
                'admin/categories' => 'categories/index',
                'admin/categories/add' => 'categories/add',
                'categories/delete-selected' => 'categories/delete-selected',
                'admin/categories/update_status' => 'categories/update_status',
                'admin/categories/edit' => 'categories/edit',
                'admin/categories/delete' => 'categories/delete'
            ],
        ],


    ],
    // 'params' => $params,
    'params' => [
        'companyName' => 'NISL CI Demo',
    ],

    // 'defaultRoute' => 'admin/index', // Change 'site/index' to the route you want to be the home page


];
