<?php
/**
 * Created by PhpStorm.
 * User: Толик
 * Date: 23.06.2017
 * Time: 11:02
 */

namespace app\controllers;
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
        return $this->render('signup', compact('model'));
    }
}
