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
                'admin/categories/delete' => 'categories/delete',

                // projects url
                'admin/projects' => 'projects/index',
                'admin/projects/add' => 'projects/add',
                'projects/delete-selected' => 'projects/delete-selected',
                'admin/projects/update_status' => 'projects/update_status',
                'admin/projects/edit' => 'projects/edit',
                'admin/projects/delete' => 'projects/delete',

                //subjects url
                'admin/subjects' => 'subjects/index',
                'admin/subjects/add' => 'subjects/add',
                'subjects/delete-selected' => 'subjects/delete-selected',
                'admin/subjects/update_status' => 'subjects/update_status',
                'admin/subjects/edit' => 'subjects/edit',
                'admin/subjects/delete' => 'subjects/delete',

                // Users url
                'admin/users' => 'users/index',
                'admin/users/add' => 'users/add',
                'users/delete-selected' => 'users/delete-selected',
                'admin/users/update_status' => 'users/update_status',
                'admin/users/edit' => 'users/edit',
                'admin/users/delete' => 'users/delete',
            ],
        ],


    ],
    // 'params' => $params,
    'params' => [
        'companyName' => 'NISL CI Demo',
    ],

    // 'defaultRoute' => 'admin/index', // Change 'site/index' to the route you want to be the home page


];
