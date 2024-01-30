<?php

namespace frontend\controllers;

use frontend\models\Categories;
use yii;
use yii\web\controller;
use yii\filters\AccessControl;
use yii\web\Response;
use yii\widgets\ActiveForm;





class CategoriesController extends Controller
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



    public function actionIndex()
    {
        $this->layout = 'admin';
        $categories = Categories::find()->all();
        $model = new Categories();
        return $this->render('index', [
            'categories' => $categories,
            'model' => $model,
        ]);
    }

    public function actionAdd()
    {
        $this->layout = 'admin';
        $categories = Categories::find()->all();
        $model = new Categories();
        if ($this->request->isPost) {
            $categoryName = Yii::$app->request->post('name');
            $data = [
                'name' => $categoryName,
                'user_id' => Yii::$app->user->isGuest ? null : Yii::$app->user->identity->id,
                'is_active' => 1,
                'created' => date('Y-m-d H:i:s'),
            ];
            $connection = Yii::$app->db;
            $command = $connection->createCommand()->insert('categories', $data);
            $command->execute();

            if ($command) {
                Yii::$app->session->setFlash('success', 'Category added successfully');
            } else {
                Yii::$app->session->setFlash('error', 'Error adding category');
            }
            return $this->redirect(['categories/index']);
        } else {
            $model->loadDefaultValues();
        }
    }

    // CategoriesController.php

    public function actionDeleteSelected()
    {
        $selectedIds  = Yii::$app->request->post('ids');

        if (!empty($selectedIds)) {
            $deleted = Categories::deleteAll(['id' => $selectedIds]);

            if ($deleted) {
                echo json_encode(['success' => true, 'message' => 'Categories deleted successfully.']);
                return;
            }
        }

        echo json_encode(['success' => false, 'message' => 'Error deleting categories']);
    }
}
