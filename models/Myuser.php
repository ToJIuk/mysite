<?php

namespace app\models;
use yii\db\ActiveRecord;


class Myuser extends ActiveRecord
{
    public function setPassword($pass){
        $this->password = sha1($pass);
    }

    public function validatePassw($password){
        return $this->password === sha1($this->password);
    }
}