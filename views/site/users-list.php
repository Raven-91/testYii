<?php

use app\widgets\CustomLinkPager;
use yii\helpers\Html;
use yii\helpers\Json;


$this->title = 'Users List';
$this->params['breadcrumbs'][] = $this->title;
?>
<h1><?= Html::encode($this->title) ?></h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">ФИО</th>
        <th scope="col">Email</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $startNumber = $pages->offset + 1;
    foreach ($usersData as $key => $user): ?>
        <tr>
            <th scope="row">
                <?= ($startNumber + $key) ?>
            </th>
            <td>
                <?= Html::encode("{$user->userFirstName} {$user->userLastName}") ?>
            </td>
            <td>
                <?= Html::encode("{$user->userEmail}") ?>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>

<div class="pagination-wrapper">
    <?= CustomLinkPager::widget([
        'pagination' => $pages,
    ]) ?>
</div>

<a href=""></a>

<script>
    const users = <?= Json::encode($usersData) ?>;
    console.log(users);
</script>


