<?php

namespace app\index\controller;

use think\Db;
use think\Controller;
use think\Request;
use app\common\model\Basic;
use app\common\model\User;
use app\common\model\Csiifb;
use SESSION;

class BasicController extends Controller
{
    protected $u_id;

    public function index()
    {
        $htmls = $this->fetch();
        return $htmls;
    }

    public function main()
    {
        $u_id = session('u_id');
        $u_ids = db('user')->where(['id'=>$u_id])->whereOr(['f_id'=>$u_id])->column('id');

        $Basic = new Basic;
        $keyword = Request::instance()->param('keyword/s');
        if($keyword)
        {
            $where['cn_name|phone'] = ['like','%'.$keyword.'%'];
        }

        $where['u_id'] = ['in',$u_ids];
        $basics = $Basic->where($where)->select();
        if($basics)
        {
            foreach($basics as $key =>$val){

            $basics[$key]['step'] = $this->get_step($val['step']);
            $basics[$key]['status'] = $this->get_status($val['status']);

            }
        }
        // 向V层传数据
        $this->assign('basics', $basics);

        // 取回打包后的数据
        $htmls = $this->fetch();

        // 将数据返回给用户
        return $htmls;
    }


    public function  get_step($step)
    {
       switch($step)
       {
         case 1:
           return $str = '初始录入';
                 break;
         case 2:
             return $str = '中软面试';
                break;
         case 3:
             return $str = '客户面试';
                break;
       }

    }


     public function  get_status($step)
     {
           switch($step)
           {
             case 1:
               return $str = 'progressing';
                     break;
             case 2:
                 return $str = 'CSI-PASS';
                    break;
             case 3:
                 return $str = 'CSI-FAILED';
                    break;
             case 2:
                  return $str = 'CUI-PASS';
                    break;
             case 3:
                   return $str = 'CUI-FAILED';
                    break;
           }

      }



    public function cs_interviewer()
    {

             $htmls = $this->fetch();
              return $htmls;
    }

    public function hsbc_interview()
    {
          $htmls = $this->fetch();
          return $htmls;

    }

    public function login()
    {
        $login_name = Request::instance()->param('login_name/s');
        $password = Request::instance()->param('password/s');
        if (empty($login_name)) {
            return '请输入登录的用户名';
        }
        if (empty($password)) {
            return '密码不能为空';
        }
        $res = db('user')->where(['login_name' => $login_name, 'user_password' => $password])->find();
        if ($res) {
            session("u_id", $res['id']);
            if ($res['role_type'] == 'csi') {
                $this->redirect(url('basic/cs_interviewer'));
            } else if ($res['role_type'] == 'hsbc') {
                 $this->redirect(url('basic/hsbc_interview'));
            }else {
                $this->redirect(url('basic/main'));
            }

        } else {
            return '密码错误';
        }

    }

    public function insert()
    {
        $postData = Request::instance()->post();

        $Basic = new Basic();
        $Basic->u_id = session('u_id');
        $Basic->hr = $postData['hr'];
        $Basic->rm = $postData['rm'];
        $Basic->department = $postData['department'];
        $Basic->hsbc_bu = $postData['hsbc_bu'];
        $Basic->csi_interviewer = $postData['csi_interviewer'];
        $Basic->csi_interviewer_email = $postData['csi_interviewer_email'];
        $Basic->hsbc_interviewer = $postData['hsbc_interviewer'];
        $Basic->hsbc_interviewer_email = $postData['hsbc_interviewer_email'];
        $Basic->cn_name = $postData['cn_name'];
        $Basic->en_name = $postData['en_name'];
        $Basic->gender = $postData['gender'];
        $Basic->phone = $postData['phone'];
        $Basic->home_province = $postData['home_province'];
        $Basic->home_city = $postData['home_city'];
        if(isset($postData['work_location'])){
            $Basic->work_location = $postData['work_location'];
        }
        $Basic->card_number = $postData['card_number'];
        $Basic->university = $postData['university'];
        if(isset($postData['degree'])){
            $Basic->degree = $postData['degree'];
        
        $Basic->major = $postData['major'];
        $Basic->graduation_date = $postData['graduation_date'];

        $skilsArr = input('post.skills/a');
        if(isset($skilsArr)){
            $Basic->skills = implode(",", $skilsArr);
        }
        if(isset($postData['certification'])){
            $Basic->degree = $postData['certification'];
        }
        $Basic->lead_experience = $postData['lead_experience'];
        $Basic->mf_as400 = $postData['work_experience'];
        $Basic->change_job = $postData['change_job'];

        $Basic->validate(true)->save();


        //return  '新增成功。新增ID为:' . $Basic->id;
        return $this->success('新增成功', url('basic/main'));
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

        return $this->success('删除成功', url('basic/main'));
    }

    public function csiSearch(){
         $candidate_name = Request::instance()->param('candidate_name/s');
         $mobile_phone = Request::instance()->param('mobile_phone/s');
        if($candidate_name && $mobile_phone)
        {
             $csidata = db('basic')->where(['cn_name' => $candidate_name, 'phone' => $mobile_phone])->find();
             if($csidata)
             {
                  session('csi_cid',$csidata['id']);
                  session('csi_cName',$csidata['cn_name']);
                  $this->assign('csidata', $csidata);
                   // 取回打包后的数据
                  $htmls = $this->fetch('Basic/cs_interviewer');
                    // 将数据返回给用户
                  return $htmls;
             }else{
                   return '无记录';
             }

        }else{

               return '无记录';

        }

    }

    public function csiInsert(){
        $postCsiData = Request::instance()->post();

        $Csiifb = new Csiifb();

        $Csiifb->cid = session('csi_cid');
        $Csiifb->cn_name = session('csi_cName');
        $Csiifb->introduction = $postCsiData['introduction'];
        $Csiifb->speaking = $postCsiData['speaking'];
        $Csiifb->listening = $postCsiData['listening'];
        $Csiifb->reading = $postCsiData['reading'];
        $Csiifb->writing = $postCsiData['writing'];
        $Csiifb->cantonese = $postCsiData['cantonese'];
        $Csiifb->exist_role = $postCsiData['exist_role'];
        $Csiifb->domain_knowledge = $postCsiData['domain_knowledge'];
        $Csiifb->system_design = $postCsiData['system_design'];
        $Csiifb->technical = $postCsiData['technical'];
        $Csiifb->technical_score = $postCsiData['technical_score'];
        $Csiifb->motivation = $postCsiData['motivation'];
        $Csiifb->career_plan = $postCsiData['career_plan'];
        $Csiifb->expession = $postCsiData['expession'];
        $Csiifb->question_asked = $postCsiData['question_asked'];
        $Csiifb->finally_rating = $postCsiData['finally_rating'];
        $Csiifb->work_date = $postCsiData['work_date'];
        $Csiifb->result = $postCsiData['result'];

        $Csiifb->validate(true)->save();
        //更新basic状态
        $status_data =[
                               'step'=>'2',
                               'status'=>$Csiifb['result']
                      ];
                            $res =db('basic')->where('id',$Csiifb['cid'])->update($status_data);
                            //echo db('basic')->getlastsql();die;
        return '保存成功';

    }

    public function detail()
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
}

}

