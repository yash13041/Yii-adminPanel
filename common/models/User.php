<?php

namespace common\models;

use yii;
use yii\db\ActiveRecord;
use yii\base\NotSupportedException;
use yii\web\IdentityInterface;


class User extends ActiveRecord implements IdentityInterface
{
    public $confirm_password;
    const STATUS_ACTIVE = 10;
    public $username;

    // other attributes and methods

    public static function tableName()
    {
        return 'users'; // specify the actual table name
    }

    public static function findByEmail($email)
    {
        return static::findOne(['email' => $email]);
        // return static::findOne(['email' => $email, 'status' => self::STATUS_ACTIVE]);
    }

    public $password_hash;

    public function ValidatePassword($password)
    {
        // return Yii::$app->security->validatePassword($password, $this->password_hash);
        return Yii::$app->security->validatePassword($password, $this->password);
    }

    public static function findIdentity($id)
    {
        return static::findOne($id);
    }

    public function setPassword($password)
    {
        $this->password_hash = Yii::$app->security->generatePasswordHash($password);
    }

    public static function findIdentityByAccessToken($token, $type = null)
    {
        throw new NotSupportedException('"findIdentityByAccessToken" is not implemented.');
    }

    public function getId()
    {
        return $this->getPrimaryKey();
    }

    public function getAuthKey()
    {
        // return $this->auth_key;
    }

    public function validateAuthKey($authKey)
    {
        return $this->getAuthKey() === $authKey;
    }

}
