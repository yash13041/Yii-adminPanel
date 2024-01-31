<?php

namespace frontend\controllers;

use frontend\models\Categories;
use yii;
use yii\web\controller;
use yii\filters\AccessControl;
use yii\web\NotFoundHttpException;
use yii\web\Response;;





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

    public function actionUpdate_status()
    {
        $category_id = Yii::$app->request->post('category_id');
        $is_active = Yii::$app->request->post('is_active');
        $data = [
            'is_active' => $is_active,
            'updated' => date('Y-m-d H:i:s')
        ];
        // var_dump($data);
        // die;
        $update = Yii::$app->db->createCommand()
            ->update('categories', ['is_active' => $is_active, 'updated' => date('Y-m-d H:i:s')], ['id' => $category_id])
            ->execute();
        if ($update) {
            $is_active = Yii::$app->request->post('is_active');

            if ($is_active == 1) {
                echo "true";
            } else {
                echo "false";
            }
        }
    }

    public function actionEdit($id)
    {
        $this->layout = 'admin';
        $category = $this->findModel($id);

        if ($category->load(Yii::$app->request->post()) && $category->save()) {
            Yii::$app->session->setFlash('success', 'Category updated successfully.');
            return $this->redirect(['index']);
        }

        return $this->render('edit', [
            'category' => $category,
            'title' => 'Edit Category',
        ]);
    }

    protected function findModel($id)
    {
        if (($model = Categories::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actionDelete()
{
    $category_id = Yii::$app->request->post('category_id');
    $category = Categories::findOne($category_id);

    if ($category) {
        try {
            $transaction = Yii::$app->db->beginTransaction();

            // Perform the deletion
            if ($category->delete() === false) {
                throw new \Exception('Error deleting category.');
            }

            $transaction->commit();

            Yii::$app->response->format = Response::FORMAT_JSON;
            return ['success' => true];
        } catch (\Exception $e) {
            $transaction->rollBack();
        }
    }

    Yii::$app->response->format = Response::FORMAT_JSON;
    return ['success' => false, 'error' => 'Category not found or error occurred.'];
}

}
