<?php
namespace app\index\controller;
use think\Db;       // 数据库操作类
use think\Controller;   // 用于与V层进行数据传递
use think\Request;
use app\common\model\Teacher;



class TeacherController extends Controller
{
    public function index()
    {
       /* return 'hello Teacher';
        $data=Db::name('user')->select();
        var_dump($data[0]['name']);
        $Teacher = new Teacher;
        dump($Teacher);
        /*$SmallTeacher = new SmallTeacher;
        dump($SmallTeacher);*/

        /*$Teacher = new Teacher;
        dump($Teacher);*/

        /*$Teacher = new Teacher;
        $teachers = $Teacher->select();
        var_dump($teachers);

        $Teacher = new Teacher;
        $teachers = $Teacher->select();

        // 获取第0个数据
        $teacher = $teachers[0];

        // 调用上述对象的getData()方法
        var_dump($teacher->getData('name'));*/

        $Teacher = new Teacher; 
        $teachers = $Teacher->select();

        // 向V层传数据
        $this->assign('teachers', $teachers);

        // 取回打包后的数据
        $htmls = $this->fetch();

        // 将数据返回给用户
        return $htmls;
    }

    public function insert(){
		// 接收传入数据
        $postData = Request::instance()->post();   
        //$postData = $this->request->post();  

        // 实例化Teacher空对象
        $Teacher = new Teacher();
        
        // 为对象赋值
        $Teacher->name = $postData['name'];
        $Teacher->age = $postData['age'];
        
        // 新增对象至数据表
        $Teacher->save();

        // 反馈结果
        return  '新增成功。新增ID为:' . $Teacher->id;

    }

    public function add()
    {
        $htmls = $this->fetch();
        return $htmls;
    }
}