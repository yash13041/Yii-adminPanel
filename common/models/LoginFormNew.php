<?php

namespace common\models;

use yii;
use yii\base\model;
// use yii\base\ModelEvent;

class LoginFormNew extends Model
{
    public $email;
    public $password;
    public $remember = true;

    private $_user;

    public function rules()
    {
        return [
            [['email', 'password'], 'required'],
            ['email', 'email'],
            ['password', 'validatePassword'],
            ['remember', 'boolean'],
        ];
    }

    public function validatePassword($attribute)
    {
        if (!$this->hasErrors()) {
            $user = $this->getUser();
            if (!$user || !$user->validatePassword($this->password)) {
                $this->addError($attribute, 'Incorrect email or password.');
            }
        }
    }




    // public function attributeLabels()
    // {
    //     return [
    //         'email' => Yii::t('app', 'Email'),
    //         'password' => Yii::t('app', 'Password'),
    //         // 'remember' => Yii::T('app', 'Remember Me'),
    //     ];
    // }

    public function login()
    {
        if ($this->validate()) {
            return Yii::$app->user->login($this->getUser(), $this->remember ? 3600 * 24 * 30 : 0);
        }

        return false;
    }

    public function getUser()
    {
        if ($this->_user === null) {
            $this->_user = User::findByEmail($this->email);
        }
        return $this->_user;
    }
}
