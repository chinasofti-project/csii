<?php
namespace app\common\validate;
use think\Validate;     // 内置验证类

class Basic extends Validate
{
    protected $rule = [
        //'email' => 'email',
        //'name' => 'require|unique:basic|length:4,25',
        //'age' => 'require|length:1,3',
    ];
}