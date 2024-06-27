<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "users".
 *
 * @property int $userID
 * @property string $userEmail
 * @property string $userFirstName
 * @property string $userLastName
 */
class Users extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'users';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['userEmail', 'userFirstName', 'userLastName'], 'required'],
            [['userEmail'], 'string', 'max' => 40],
            [['userFirstName', 'userLastName'], 'string', 'max' => 255],
            [['userEmail'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'userID' => 'User ID',
            'userEmail' => 'User Email',
            'userFirstName' => 'User First Name',
            'userLastName' => 'User Last Name',
        ];
    }
}
