create database csii_db charset=utf8;
use csii_db;

create table basic(
  id INT PRIMARY KEY AUTO_INCREMENT,
  step enum('1','2','3') NOT NULL DEFAULT '1' COMMENT '1.初始录入、2.中软面试、3.客户面试',
  status enum('1','2','3','4','5') NOT NULL DEFAULT '1' COMMENT '1-progressing、2-CSI-Pass、3-CSI-Failed、4-CUI-Pass、5-CUI-Failed',
  personal_email varchar(225) DEFAULT NULL,
  department VARCHAR(32) NOT NULL DEFAULT '-',
  hsbc_bu VARCHAR(32) NOT NULL DEFAULT '-',
  hr VARCHAR(8) NOT NULL DEFAULT '-',
  rm VARCHAR(8) NOT NULL DEFAULT '-',
  csi_interviewer VARCHAR(8) NOT NULL DEFAULT '-',
  csi_interview_email VARCHAR(64) NOT NULL DEFAULT '-',
  hsbc_interviewer VARCHAR(8) NOT NULL DEFAULT '-',
  hsbc_interviewer_email VARCHAR(64) NOT NULL DEFAULT '-',
  cn_name VARCHAR(8) NOT NULL DEFAULT '-',
  en_name VARCHAR(32) NOT NULL DEFAULT '-',
  gender VARCHAR(2) NOT NULL DEFAULT '-',
  phone VARCHAR(16) NOT NULL DEFAULT '-',
  home_province VARCHAR(8) NOT NULL DEFAULT '-',
  home_city VARCHAR(8) NOT NULL DEFAULT '-',
  work_location VARCHAR(16) NOT NULL DEFAULT '-',
  card_number VARCHAR(16) NOT NULL DEFAULT '-',
  university VARCHAR(32) NOT NULL DEFAULT '-',
  degree VARCHAR(32) NOT NULL DEFAULT '-',
  major VARCHAR(64) NOT NULL DEFAULT '-',
  graduation_date VARCHAR(64) NOT NULL DEFAULT '-',
  skills VARCHAR(64) NOT NULL DEFAULT '-',
  certification VARCHAR(64) NOT NULL DEFAULT '-',
  lead_experience VARCHAR(64) NOT NULL DEFAULT '-',
  mf_as400 VARCHAR(64) NOT NULL DEFAULT '-',
  change_job VARCHAR(64) NOT NULL DEFAULT '-',
  create_time int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  update_time int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间'
);


create table csiifb(
  id INT PRIMARY KEY AUTO_INCREMENT,
  cid INT,
  cn_name VARCHAR(8) NOT NULL DEFAULT '-',
  introduction VARCHAR(2) NOT NULL DEFAULT '-',
  speaking VARCHAR(2) NOT NULL DEFAULT '-',
  listening VARCHAR(2) NOT NULL DEFAULT '-',
  reading VARCHAR(2) NOT NULL DEFAULT '-',
  writing VARCHAR(2) NOT NULL DEFAULT '-',
  cantonese VARCHAR(2) NOT NULL DEFAULT '-',
  exist_role VARCHAR(128) NOT NULL DEFAULT '-',
  domain_knowledge VARCHAR(2) NOT NULL DEFAULT '-',
  system_design VARCHAR(2) NOT NULL DEFAULT '-',
  technical VARCHAR(16) NOT NULL DEFAULT '-',
  technical_score VARCHAR(8) NOT NULL DEFAULT '-',
  motivation VARCHAR(2) NOT NULL DEFAULT '-',
  career_plan VARCHAR(2) NOT NULL DEFAULT '-',
  expession VARCHAR(2) NOT NULL DEFAULT '-',
  question_asked VARCHAR(2) NOT NULL DEFAULT '-',
  finally_rating VARCHAR(2) NOT NULL DEFAULT '-',
  work_date VARCHAR(64) NOT NULL DEFAULT '-',
  create_time int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  update_time int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  result VARCHAR(8) NOT NULL DEFAULT '-',
  FOREIGN KEY (cid) REFERENCES basic_background_information(id)
);

create table custfb(
  id INT PRIMARY KEY AUTO_INCREMENT,
  hid INT,
  cn_name VARCHAR(8) NOT NULL DEFAULT '-',
  hsbc_interview_date VARCHAR(64) NOT NULL DEFAULT '-',
  technical VARCHAR(2) NOT NULL DEFAULT '-',
  lang VARCHAR(2) NOT NULL DEFAULT '-',
  management VARCHAR(2) NOT NULL DEFAULT '-',
  communication VARCHAR(2) NOT NULL DEFAULT '-',
  domain VARCHAR(2) NOT NULL DEFAULT '-',
  finally_result VARCHAR(8) NOT NULL DEFAULT '-',
  reject_reason VARCHAR(64) NOT NULL DEFAULT '-',
  requirement_for_next VARCHAR(64) NOT NULL DEFAULT '-',
  FOREIGN KEY (hid) REFERENCES basic_background_information(id)
);

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(225) CHARACTER SET utf8 NOT NULL COMMENT '用户名',
  `user_password` varchar(225) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `f_id` int(11) NOT NULL COMMENT '父级id',
  `deparment` varchar(225) CHARACTER SET utf8 NOT NULL COMMENT '部门',
  `deparment_parent` varchar(225) CHARACTER SET utf8 NOT NULL COMMENT '部门',
  `role_type` enum('hr','csi','hsbc') CHARACTER SET utf8 NOT NULL COMMENT '角色类型',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `login_name` varchar(225) CHARACTER SET utf8 NOT NULL COMMENT '登陆账号',
  PRIMARY KEY (`id`)
);
--table update
ALTER TABLE basic CHANGE csi_interview_email csi_interviewer_email VARCHAR(64);