<?php
/**
 * Created by PhpStorm.
 * User: Толик
 * Date: 23.06.2017
 * Time: 11:02
 */

namespace app\controllers;

use app\models\Login;
use app\models\Pages;
use app\models\Signup;
use yii\data\Pagination;

class PagesController extends AppController
{
    public function actionIndex(){
        return $this->render('index');
    }

    public function actionList(){
        $query = Pages::find();
        $post = new Pagination(['totalCount' => $query->count(), 'pageSize' => 4, 'pageSizeParam' => false,
            'forcePageParam' => false]);
        $pages = $query->offset($post->offset)->limit($post->limit)->all();

        return $this->render('list', [
            'post' => $post,
            'pages' => $pages
        ]);
    }

    public function actionView(){
        $id = \Yii::$app->request->get('id');
        $page = Pages::findOne($id);
        return $this->render('view', compact('page'));
    }

    public function actionSignup()
    {
        $model = new Signup();
        if (isset($_POST['Signup'])){
            $model->attributes = \Yii::$app->request->post('Signup');
            if ($model->validate() && $model->signup()){
                 return $this->goHome();
            }
        }
        return $this->render('signup', compact('model'));
    }

    public function actionLogin()
    {
        if (!\Yii::$app->user->isGuest){

            return $this->goHome();
        }
        $login_model = new Login();
        if (\Yii::$app->request->post('Login')){
            $login_model->attributes = \Yii::$app->request->post('Login');
            if ($login_model->validate()){
                \Yii::$app->user->login($login_model->getUser());
                if (\Yii::$app->user->identity->name == 'admin' ){
                    return $this->redirect(['admin/default/index']);
                }
                return $this->goHome();
            }
        }
        return $this->render('login', compact('login_model'));
    }

    public function actionLogout(){
        if (!\Yii::$app->user->isGuest){
            \Yii::$app->user->logout();
            return $this->redirect(['login']);
        }
    }

}
