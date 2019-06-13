INSERT INTO `basic` (`id`, `step`, `status`, `department`, `hsbc_bu`, `hr`, `rm`, `csi_interviewer`, `csi_interviewer_email`, `hsbc_interviewer`, `hsbc_interviewer_email`, `cn_name`, `en_name`, `gender`, `phone`, `home_province`, `home_city`, `work_location`, `card_number`, `university`, `degree`, `major`, `graduation_date`, `skills`, `certification`, `lead_experience`, `mf_as400`, `change_job`, `create_time`, `update_time`, `personal_email`) VALUES
(18, '1', '1', 'mono', 'boc', '李雯', '陈-', 'Maggie', 'maggie@sina.com', 'Jason', 'jason@sina.com', '宋洋', 'James', '男', '13434567890', '3', '3', 'Guangzhou', '1243545464565767', '四川大学', 'master', '专业', '05/08/2019', 'java', 'CET-6', '未知', 'MF 2years', '个人原因', 1558078953, 1558078953, NULL),
(20, '1', '1', 'mono', 'hcc', '惠子', '仝新轩', 'Samantha', 'samantha@163.com', 'Hailey', 'hailey@163.com', '涂悦兹', 'Lavelle', '女', '17728952368', '14', '2', 'Xi''an', '4565676768687867', '中山大学', 'bachelor', '文学', '05/01/2014', 'java', 'CET-4', '7', 'MF 3years', '无', 1558080427, 1558080427, NULL),
(19, '1', '1', 'mono', 'ccs', '乔一', '金珂', 'David', 'david@126.com ', 'Tyler', 'tyler@126.com ', '辛欣', 'Elizabeth', '女', '18823456721', '1', '1', 'Xi''an', '5678888888888888', '北京大学', 'doctor', '计算机', '05/01/2014', 'mainframe,AS400', 'CET-6', '3', 'MF 3years', '个人原因', 1558079809, 1558079809, NULL),
(24, '1', '1', 'mono', 'ccs', '乔一', '金珂', 'David', 'david@126.com ', 'Tyler', 'tyler@126.com ', '辛欣01', 'Elizabeth', '女', '18823456721', '1', '1', 'Xi''an', '5678888888888888', '北京大学', 'doctor', '计算机', '05/01/2014', 'mainframe,AS400', 'CET-6', '3', 'MF 3years', '个人原因', 1558079809, 1558079809, NULL),
(25, '1', '1', 'mono', 'ccs', '乔一01', '金珂', 'David', 'david@126.com ', 'Tyler', 'tyler@126.com ', '辛欣01', 'Elizabeth', '女', '18823456721', '1', '1', 'Xi''an', '5678888888888888', '北京大学', 'doctor', '计算机', '05/01/2014', 'mainframe,AS400', 'CET-6', '3', 'MF 3years', '个人原因', 1558079809, 1558079809, NULL);

insert into csiifb (id,cid,cn_name,speaking,listening,reading,writing,cantonese,exist_role,
domain_knowledge,system_design,technical,technical_score,motivation,career_plan,expession,question_asked,
finally_rating,work_date,result) values
(null,1,'李军','3','3','3','3','3',DEFAULT,'3','3','JAVA','100','3','3','3','3','3','2019-5-13','PASS');

insert into custfb (id,hid,cn_name,hsbc_interview_date,technical,lang,management,communication,
domain,finally_result,reject_reason,requirement_for_next)values
(null,1,'李军','2019-5-13','4','4','4','4','4','Pass',DEFAULT,DEFAULT);

INSERT INTO `user` (`id`, `user_name`, `user_password`, `f_id`, `deparment`, `role_type`, `create_time`, `login_name`) VALUES
(1, 'HR测试', '123456', 0, 'MNC', 'hr', '2019-05-25 13:14:00', 'hrmnc001'),
(2, 'CSI测试', '123456', 0, 'MNC', 'csi', '2019-05-25 13:14:00', 'csimnc001'),
(3, 'HSBC测试', '123456', 0, 'MNC', 'hsbc', '2019-05-25 13:14:00', 'hsbcmnc001'),
(4, 'HR子账号测试1', '123456', 1, 'MNC', 'hr', '2019-05-28 13:14:00', 'hrmnc001'),
(5, 'HR子账号测试2', '123456', 1, 'MNC', 'hr', '2019-05-28 13:14:00', 'hrmnc001'),
(6, 'HR子账号测试3', '123456', 1, 'MNC', 'hr', '2019-05-28 13:14:00', 'hrmnc001');