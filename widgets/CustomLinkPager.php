<?php

namespace app\widgets;

use yii\helpers\Html;
use yii\widgets\LinkPager;

class CustomLinkPager extends LinkPager
{
    protected function renderPageButton($label, $page, $class, $disabled, $active)
    {
        $options = ['class' => 'page-item'];
        if ($active) {
            Html::addCssClass($options, $this->activePageCssClass);
        }
        if ($disabled) {
            Html::addCssClass($options, $this->disabledPageCssClass);
            $linkOptions = ['class' => 'page-link'];
            return Html::tag('li', Html::tag('span', $label, $linkOptions), $options);
        }

        $linkOptions = ['class' => 'page-link'];
        return Html::tag('li', Html::a($label, $this->pagination->createUrl($page), $linkOptions), $options);
    }
}
