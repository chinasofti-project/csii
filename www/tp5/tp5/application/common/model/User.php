<?php
namespace app\common\model;
use think\Model;
use think\Db;
class User extends Model
{
      public $tableName = 'user';
      public function selectByName($login_name)
      {

          return Db::name('$this->tableName')->filed('id,password')->where(['login_name'=>$login_name])->find();


      }
       public function getDetailById($id)
            {

                return Db::name('$this->tableName')->filed('id,user_name,deparment,f_id')->where(['id'=>$id])->find();


            }


}