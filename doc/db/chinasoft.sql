set names utf8;
create database chinasoft charset=utf8;
use chinasoft;

create table basic(
  id INT PRIMARY KEY AUTO_INCREMENT,
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
  change_job VARCHAR(64) NOT NULL DEFAULT '-'，
  create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间'
);

insert into basic_background_information
(id,department,hsbc_bu,hr,rm,csi_interviewer,csi_interview_email,hsbc_interviewer,hsbc_interviewer_email,cn_name,en_name,
gender,phone,home_province,home_city,work_location,card_number,university,degree,major,graduation_date,skills,certification,
lead_experience,mf_as400,change_job) values 
(null,'Wealth','WD','郝娜','王蓓','罗浩','luohao@chinasofti.com','魏东科','weidongke@chinasofti.com','李军','Michael','男',
'15129884931','山西','河津','西安','44122510','陕西科技大学镐京学院','大学本科','电气工程及其自动化','2015-7-7','Javascript',
'CET-6',DEFAULT,DEFAULT,DEFAULT),
(null,'Wealth','WD','郝娜','王蓓','罗浩','luohao@chinasofti.com','魏东科','weidongke@chinasofti.com','张军','Michael','男',
'15129884931','山西','河津','西安','44122510','陕西科技大学镐京学院','大学本科','电气工程及其自动化','2015-7-7','Javascript',
'CET-6',DEFAULT,DEFAULT,DEFAULT),
(null,'Wealth','WD','郝娜','王蓓','罗浩','luohao@chinasofti.com','魏东科','weidongke@chinasofti.com','王军','Michael','男',
'15129884931','山西','河津','西安','44122510','陕西科技大学镐京学院','大学本科','电气工程及其自动化','2015-7-7','Javascript',
'CET-6',DEFAULT,DEFAULT,DEFAULT),
(null,'Wealth','WD','郝娜','王蓓','罗浩','luohao@chinasofti.com','魏东科','weidongke@chinasofti.com','赵军','Michael','男',
'15129884931','山西','河津','西安','44122510','陕西科技大学镐京学院','大学本科','电气工程及其自动化','2015-7-7','Javascript',
'CET-6',DEFAULT,DEFAULT,DEFAULT),
(null,'Wealth','WD','郝娜','王蓓','罗浩','luohao@chinasofti.com','魏东科','weidongke@chinasofti.com','周军','Michael','男',
'15129884931','山西','河津','西安','44122510','陕西科技大学镐京学院','大学本科','电气工程及其自动化','2015-7-7','Javascript',
'CET-6',DEFAULT,DEFAULT,DEFAULT),
(null,'Wealth','WD','郝娜','王蓓','罗浩','luohao@chinasofti.com','魏东科','weidongke@chinasofti.com','吴军','Michael','男',
'15129884931','山西','河津','西安','44122510','陕西科技大学镐京学院','大学本科','电气工程及其自动化','2015-7-7','Javascript',
'CET-6',DEFAULT,DEFAULT,DEFAULT),
(null,'Wealth','WD','郝娜','王蓓','罗浩','luohao@chinasofti.com','魏东科','weidongke@chinasofti.com','郑军','Michael','男',
'15129884931','山西','河津','西安','44122510','陕西科技大学镐京学院','大学本科','电气工程及其自动化','2015-7-7','Javascript',
'CET-6',DEFAULT,DEFAULT,DEFAULT),
(null,'Wealth','WD','郝娜','王蓓','罗浩','luohao@chinasofti.com','魏东科','weidongke@chinasofti.com','王军','Michael','男',
'15129884931','山西','河津','西安','44122510','陕西科技大学镐京学院','大学本科','电气工程及其自动化','2015-7-7','Javascript',
'CET-6',DEFAULT,DEFAULT,DEFAULT),
(null,'Wealth','WD','郝娜','王蓓','罗浩','luohao@chinasofti.com','魏东科','weidongke@chinasofti.com','钱军','Michael','男',
'15129884931','山西','河津','西安','44122510','陕西科技大学镐京学院','大学本科','电气工程及其自动化','2015-7-7','Javascript',
'CET-6',DEFAULT,DEFAULT,DEFAULT);

create table csi_interview_information(
  id INT PRIMARY KEY AUTO_INCREMENT,
  cid INT,
  cn_name VARCHAR(8) NOT NULL DEFAULT '-',
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
  result VARCHAR(8) NOT NULL DEFAULT '-',
  FOREIGN KEY (cid) REFERENCES basic_background_information(id)
);

insert into csi_interview_information (id,cid,cn_name,speaking,listening,reading,writing,cantonese,exist_role,
domain_knowledge,system_design,technical,technical_score,motivation,career_plan,expession,question_asked,
finally_rating,work_date,result) values
(null,1,'李军','3','3','3','3','3',DEFAULT,'3','3','JAVA','100','3','3','3','3','3','2019-5-13','PASS');

create table hsbc_interview_information(
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

insert into hsbc_interview_information (hid,cn_name,hsbc_interview_date,technical,lang,management,communication,
domain,finally_result,reject_reason,requirement_for_next)values
(null,1,'李军','2019-5-13','4','4','4','4','4','Pass',DEFAULT,DEFAULT);


