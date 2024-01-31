<?php

namespace frontend\controllers;

use frontend\models\Projects;
use yii;
use yii\web\controller;
use yii\filters\AccessControl;
use yii\web\NotFoundHttpException;
use yii\web\Response;;





class ProjectsController extends Controller
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
        $projects = Projects::find()->all();
        $model = new Projects();
        return $this->render('index', [
            'projects' => $projects,
            'model' => $model,
        ]);
    }

    public function actionAdd()
    {
        $this->layout = 'admin';
        $projects = Projects::find()->all();
        $model = new Projects();
        if ($this->request->isPost) {
            // $projectName = Yii::$app->request->post('name');
            $data = [
                'project_id' => 'PROJECT_' . rand(10, 100),
                'name' => Yii::$app->request->post('name'),
                'details' => Yii::$app->request->post('details'),
                'created' => date('Y-m-d H:i:s'),
            ];
            $connection = Yii::$app->db;
            $command = $connection->createCommand()->insert('projects', $data);
            $command->execute();

            if ($command) {
                Yii::$app->session->setFlash('success', 'Project added successfully');
            } else {
                Yii::$app->session->setFlash('error', 'Error adding project');
            }
            return $this->redirect(['projects/index']);
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('add');
    }

    public function actionDeleteSelected()
    {
        $selectedIds  = Yii::$app->request->post('ids');

        if (!empty($selectedIds)) {
            $deleted = Projects::deleteAll(['id' => $selectedIds]);

            if ($deleted) {
                echo json_encode(['success' => true, 'message' => 'Project deleted successfully.']);
                return;
            }
        }

        echo json_encode(['success' => false, 'message' => 'Error deleting project']);
    }

    public function actionEdit($id)
    {
        $this->layout = 'admin';
        $project = $this->findModel($id);

        if ($project->load(Yii::$app->request->post()) && $project->save()) {
            Yii::$app->session->setFlash('success', 'Project updated successfully.');
            return $this->redirect(['index']);
        }

        return $this->render('edit', [
            'project' => $project,
            'title' => 'Edit Project'
        ]);
    }

    protected function findModel($id)
    {
        if (($model = Projects::findOne($id)) !== null) {
            return $model;
        }
        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actionDelete()
    {
        $project_id = Yii::$app->request->post('project_id');
        // $project_id = '30';
        $project = Projects::findOne($project_id);

        if ($project) {
            try {
                $transaction = Yii::$app->db->beginTransaction();

                // Perform the deletion
                if ($project->delete() === false) {
                    throw new \Exception('Error deleting project.');
                }

                $transaction->commit();

                Yii::$app->response->format = Response::FORMAT_JSON;
                return ['success' => true];
            } catch (\Exception $e) {
                $transaction->rollBack();
            }
        }

        Yii::$app->response->format = Response::FORMAT_JSON;
        return ['success' => false, 'error' => 'Project not found or error occurred.'];
    }
}
