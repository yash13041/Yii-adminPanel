<?php

namespace common\components;

use Yii;

class YiiHelper
{
    public static function isActiveController($controller)
    {
        $currentController = Yii::$app->controller->id;
        return $currentController === $controller;
    }
}
