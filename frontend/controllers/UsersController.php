<?php

namespace frontend\controllers;

use frontend\models\Subjects;
use yii;
use yii\web\controller;
use yii\filters\AccessControl;
use yii\web\NotFoundHttpException;
use yii\web\Response;
use frontend\models\Users;






class UsersController extends Controller
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
        $users = Users::find()->all();
        $model = new Users();
        return $this->render('index', [
            'users' => $users,
            'model' => $model,
        ]);
    }

    public function actionAdd()
    {
        $this->layout = 'admin';
        $subjects = Subjects::find()->all();
        $model = new Subjects();
        if ($this->request->isPost) {
            $data = [
                'subject_id' => 'SUBJECT_' . rand(10, 100),
                'name' => Yii::$app->request->post('name'),
                'details' => Yii::$app->request->post('details'),
                'created' => date('Y-m-d H:i:s'),
            ];
            $connection = Yii::$app->db;
            $command = $connection->createCommand()->insert('subjects', $data);
            $command->execute();

            if ($command) {
                Yii::$app->session->setFlash('success', 'Subject added successfully');
            } else {
                Yii::$app->session->setFlash('error', 'Error adding category');
            }
            return $this->redirect(['subjects/index']);
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('add');
    }

    public function actionDeleteSelected()
    {
        $selectedIds  = Yii::$app->request->post('ids');

        if (!empty($selectedIds)) {
            $deleted = Subjects::deleteAll(['id' => $selectedIds]);

            if ($deleted) {
                echo json_encode(['success' => true, 'message' => 'Categories deleted successfully.']);
                return;
            }
        }

        echo json_encode(['success' => false, 'message' => 'Error deleting categories']);
    }

    public function actionEdit($id)
    {
        $this->layout = 'admin';
        $subject = $this->findModel($id);

        if ($subject->load(Yii::$app->request->post()) && $subject->save()) {
            Yii::$app->session->setFlash('success', 'Subject updated successfully.');
            return $this->redirect(['index']);
        }

        return $this->render('edit', [
            'subject' => $subject,
            'title' => 'Edit Subject'
        ]);
    }

    protected function findModel($id)
    {
        if (($model = Subjects::findOne($id)) !== null) {
            return $model;
        }
        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actionDelete()
    {
        $subject_id = Yii::$app->request->post('subject_id');
        // $subject_id = '7';
        $subject = Subjects::findOne($subject_id);

        if ($subject) {
            try {
                $transaction = Yii::$app->db->beginTransaction();

                // Perform the deletion
                if ($subject->delete() === false) {
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
