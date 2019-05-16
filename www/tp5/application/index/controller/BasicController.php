<?php
namespace app\index\controller;
use think\Db;      
use think\Controller;   
use think\Request;
use app\common\model\Basic;



class BasicController extends Controller
{
    public function index()
    {
        $htmls = $this->fetch();
        return $htmls;
    }

    public function main()
    {
        $Basic = new Basic; 
        $basics = $Basic->select();

        // 向V层传数据
        $this->assign('basics', $basics);

        // 取回打包后的数据
        $htmls = $this->fetch();

        // 将数据返回给用户
        return $htmls;
    }

    public function login()
    {
        
        $this->redirect(url('basic/main'));
    }

    public function insert(){
        $postData = Request::instance()->post();

        $Basic = new Basic();
        
        $Basic->hr = $postData['hr'];
        $Basic->rm = $postData['rm'];
        $Basic->department = $postData['department'];
        $Basic->hsbc_bu = $postData['hsbc_bu'];
        $Basic->csi_interviewer = $postData['csi_interviewer'];
        $Basic->csi_interview_email = $postData['interviewer_email'];
        $Basic->hsbc_interviewer = $postData['hsbc_interviewer'];
        $Basic->hsbc_interviewer_email = $postData['hsbc_intv_email'];
        $Basic->cn_name = $postData['cn_name'];
        $Basic->en_name = $postData['en_name'];
        $Basic->gender = $postData['gender'];
        $Basic->phone = $postData['phone'];
        $Basic->home_province = $postData['home_province'];
        $Basic->home_city = $postData['home_city'];
        $Basic->work_location = $postData['work_location'];
        $Basic->card_number = $postData['card_number'];
        $Basic->university = $postData['university'];
        $Basic->degree = $postData['degree'];
        $Basic->major = $postData['major'];
        $Basic->graduation_date = $postData['graduation_date'];

        $skilsArr = input('post.skills/a');
  		$Basic->skills = implode(",",$skilsArr);

  		$Basic->certification = $postData['certification'];
  		$Basic->lead_experience = $postData['lead_experience'];
  		$Basic->mf_as400 = $postData['work_experience'];
  		$Basic->change_job = $postData['change_job'];

        $Basic->validate(true)->save();

        return  '新增成功。新增ID为:' . $Basic->id;

    }

    public function add()
    {
        $htmls = $this->fetch();
        return $htmls;
    }

    public function edit()
    {
        $id = Request::instance()->param('id/d');

        if ($Basic = Basic::get($id)) {
            $this->assign('Basic', $Basic);

            $htmls = $this->fetch();

            return $htmls;
        } else {
            return '系统未找到ID为' . $id . '的记录';
        }
    }

    public function update()
    {
        $basic = Request::instance()->post();
        $Basic = new Basic();

        if ($Basic->validate(true)->isUpdate(true)->save($basic)) {
            $message = '更新成功';
        } else {
            $message = '更新失败';
        }

        return $message;
    }

    public function delete()
    {
        $id = Request::instance()->param('id/d'); // “/d”表示将数值转化为“整形”

        if (is_null($id) || 0 === $id) {
            return $this->error('未获取到ID信息');
        }

        $Basic = Basic::get($id);

        if (is_null($Basic)) {
            return $this->error('不存在id为' . $id . '的候选人，删除失败');
        }

        if (!$Basic->delete()) {
            return $this->error('删除失败:' . $Basic->getError());
        }

        return $this->success('删除成功', url('index'));
    }
}