<?php
use yii\db\Migration;

class m240625_194814_create_news_table extends Migration
{
    public function safeUp()
    {
        $this->createTable('newData', [
            'id' => $this->primaryKey(),
            'email' => $this->string(40)->notNull()->unique(),
            'firstName' => $this->string(255)->notNull(),
            'lastName' => $this->string(255)->notNull(),
        ]);
    }


    public function safeDown()
    {
        $this->dropTable('newData');
    }
}
