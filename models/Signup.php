<?php
/**
 * Created by PhpStorm.
 * User: Толик
 * Date: 30.06.2017
 * Time: 9:41
 */

namespace app\models;


use yii\base\Model;
use yii\helpers\Html;

class Signup extends Model
{
    public $name;
    public $email;
    public $password;

    public function rules()
    {
        return [
            [['name', 'email', 'password'], 'required'],
            ['email', 'email'],
            ['email', 'unique', 'targetClass' => 'app\models\Myuser'],
            ['name', 'unique', 'targetClass' => 'app\models\Myuser'],
            ['password', 'string', 'min'=>2, 'max'=>10]
        ];
    }
    public function signup(){
        $user = new Myuser();
        $user->email = $this->email;
        $user->name = Html::encode($this->name);
        $user->setPassword($this->password);
        return $user->save();
    }

}