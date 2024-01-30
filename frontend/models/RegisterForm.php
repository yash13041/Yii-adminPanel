<?php

namespace frontend\models;

use yii;
use yii\base\Model;
use common\models\User;

class RegisterForm extends Model
{
    public $firstname;
    public $lastname;
    public $email;
    public $mobile_no;
    public $password;
    public $confirm_password;

    public function rules()
    {
        return [
            [['firstname', 'lastname', 'email', 'mobile_no', 'password', 'confirm_password'], 'required'],
            [['firstname', 'lastname'], 'string', 'max' => 255],
            ['email', 'email'],
            ['mobile_no', 'match', 'pattern' => '/^\d{10}$/i', 'message' => 'Invalid mobile number format'],
            ['password', 'string', 'min' => 6],
            ['confirm_password', 'compare', 'compareAttribute' => 'password', 'message' => 'Passwords do not match'],
        ];
    }

    public function register()
    {
        if (!$this->validate()) {
            return null;
        }

        $user = new User();
        $user->firstname = $this->firstname;
        $user->lastname = $this->lastname;
        $user->email = $this->email;
        $user->mobile_no = $this->mobile_no;
        $user->password = Yii::$app->security->generatePasswordHash($this->password);

        if ($user->save()) {
            return $user->save();
            echo 'done';
        } else {
            echo 'no';
        }
    }
}
