<?php

namespace frontend\models;

use yii\behaviors\TimestampBehavior;
use yii\db\Expression;

use Yii;
use yii\db\ActiveRecord;

class Subjects extends ActiveRecord
{
    // ... Existing code


    public function behaviors()
    {
        return [
            'timestamp' => [
                'class' => TimestampBehavior::class,
                'attributes' => [
                    \yii\db\BaseActiveRecord::EVENT_BEFORE_INSERT => ['created_at'],
                ],
                'value' => new Expression('NOW()'),
            ],
        ];
    }
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'details'], 'required'],
        ];
    }
}
