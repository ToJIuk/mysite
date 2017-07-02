<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pages".
 *
 * @property string $id
 * @property string $img
 * @property string $description
 * @property string $text
 * @property string $teams
 * @property string $years
 */
class Pages extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pages';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['img', 'description', 'text', 'teams', 'years'], 'required'],
            [['description', 'text', 'teams'], 'string'],
            [['img'], 'string', 'max' => 100],
            [['years'], 'string', 'max' => 10],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'img' => 'Img',
            'description' => 'Description',
            'text' => 'Text',
            'teams' => 'Teams',
            'years' => 'Years',
        ];
    }
}
