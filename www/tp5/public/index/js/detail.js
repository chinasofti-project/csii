$(()=>{
	$(".info-table").on("click",'.detail',function(e){
        e.preventDefault();
        var id = parseInt($(this).attr("href"));
        $.getJSON("/tp5/public/index/data/detail.php?id="+id).then(data=>{
           // console.log(data.basic[0].cn_name);
           // console.log(data.csiifb[0].cn_name);
           // console.log(data.custfb[0].cn_name);
            
            var html = `<table class="table">
                <tr style="background-color: rgb(43, 153, 226);border:none">
                    <th style="text-align: left;font-size:20px;border:none;color: white;" colspan="5">详情信息</th>
                    <td style="border: none"> <button type="button" class="close">&times;</button></td>
                </tr> 
                <tr>
                    <td colspan="1">姓名：${data.basic[0].cn_name}</td>
                    <td colspan="2">性别：${data.basic[0].gender}</td>
                    <td colspan="3">英文名：${data.basic[0].en_name}</td>
                </tr>
                <tr>
                    <td colspan="1">电话：${data.basic[0].phone}</td>
                    <td colspan="2">邮箱：${data.basic[0].personal_email}</td>
                    <td colspan="3">期望工作地点：${data.basic[0].work_location}</td>
                </tr>
                <tr>
                    <td colspan="1">学历：${data.basic[0].degree}</td>
                    <td colspan="2">专业：${data.basic[0].major}</td>
                    <td colspan="3">毕业院校：${data.basic[0].university}</td>
                </tr>
                <tr>
                    <td colspan="2">HR：${data.basic[0].hr}</td>
                    <td colspan="2">RM：${data.basic[0].rm}</td>
                    <td colspan="2">部门：${data.basic[0].department}</td>
                </tr>
                <tr>
                    <td colspan="3">技术：${data.basic[0].skills}</td>
                    <td colspan="3">证书：${data.basic[0].certification}</td>
                </tr>
                <tr style="border-top:2px dashed rgb(43, 153, 226)">
                    <td colspan="3">CSI面试官姓名：${data.basic[0].csi_interviewer}</td>
                    <td colspan="3">CSI面试官邮箱：${data.basic[0].csi_interview_email}</td>
                </tr>
                <tr>
                    <th rowspan="2" style="text-align: left;vertical-align: middle;">语言测评：</th>
                    <td>听(英)</td>
                    <td>说(英)</td>
                    <td>读(英)</td>
                    <td>写(英)</td>
                    <td>粤 语</td>
                </tr>
                <tr>
                    <td>${data.csiifb[0]?data.csiifb[0].listening:"-"}</td>
                    <td>${data.csiifb[0]?data.csiifb[0].speaking:"-"}</td>
                    <td>${data.csiifb[0]?data.csiifb[0].reading:"-"}</td>
                    <td>${data.csiifb[0]?data.csiifb[0].writing:"-"}</td>
                    <td>${data.csiifb[0]?data.csiifb[0].cantonese:"-"}</td>
                </tr>
                <tr>
                    <td colspan="2">业务领域：${data.csiifb[0]?data.csiifb[0].domain_knowledge:"-"}</td>
                    <td colspan="2">系统领域：${data.csiifb[0]?data.csiifb[0].system_design:"-"}</td>
                    <td colspan="2">技术领域：${data.csiifb[0]?data.csiifb[0].technical:"-"}</td>
                </tr>
                <tr>
                    <td colspan="3">技术总分：${data.csiifb[0]?data.csiifb[0].technical_score:"-"}</td>
                    <td colspan="3">最终结果：${data.csiifb[0]?data.csiifb[0].result:"-"}</td>
                </tr>
                <tr  style="border-top:2px dashed rgb(43, 153, 226)">
                    <td colspan="3">HSBC面试官姓名：${data.basic[0].hsbc_interviewer}</td>
                    <td colspan="3">HSBC面试官邮箱：${data.basic[0].hsbc_interviewer_email}</td>
                </tr>
                <tr>
                    <th rowspan="2" style="text-align: left;vertical-align: middle;">能力测评：</th>
                    <td>技术评分：</td>
                    <td>语言评分：</td>
                    <td>管理能力：</td>
                    <td>沟通能力：</td>
                    <td>领域评分：</td>
                </tr>
                <tr>
                    <td>${data.custfb[0]?data.custfb[0].technical:"-"}</td>
                    <td>${data.custfb[0]?data.custfb[0].lang:"-"}</td>
                    <td>${data.custfb[0]?data.custfb[0].management:"-"}</td>
                    <td>${data.custfb[0]?data.custfb[0].communication:"-"}</td>
                    <td>${data.custfb[0]?data.custfb[0].domain:"-"}</td>
                </tr>
                <tr>
                    <td colspan="3">最终结果：${data.custfb[0]?data.custfb[0].finally_result:"-"}</td>
                    <td colspan="3">被拒理由：${data.custfb[0]?data.custfb[0].reject_reason:"-"}</td>
                </tr>
            </table>`;
            $(".show_detail").html(html).show();
        });
    });
    $(".show_detail").on("click",".close",function(){
        $(".show_detail").hide();
    })
});