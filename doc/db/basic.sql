-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2019 �?05 �?28 �?02:25
-- 服务器版本: 5.5.53
-- PHP 版本: 5.5.38

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `csii_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `basic`
--

CREATE TABLE IF NOT EXISTS `basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `step` enum('1','2','3') NOT NULL DEFAULT '1' COMMENT '1.初始录入、2.中软面试、3.客户面试',
  `status` enum('1','2','3','4','5') NOT NULL DEFAULT '1' COMMENT '1-progressing、2-CSI-Pass/CSI-Failed、3-CUI-Pass/CUI-Failed',
  `department` varchar(32) NOT NULL DEFAULT '-',
  `hsbc_bu` varchar(32) NOT NULL DEFAULT '-',
  `hr` varchar(8) NOT NULL DEFAULT '-',
  `rm` varchar(8) NOT NULL DEFAULT '-',
  `csi_interviewer` varchar(8) NOT NULL DEFAULT '-',
  `csi_interview_email` varchar(64) NOT NULL DEFAULT '-',
  `hsbc_interviewer` varchar(8) NOT NULL DEFAULT '-',
  `hsbc_interviewer_email` varchar(64) NOT NULL DEFAULT '-',
  `cn_name` varchar(8) NOT NULL DEFAULT '-',
  `en_name` varchar(32) NOT NULL DEFAULT '-',
  `gender` varchar(2) NOT NULL DEFAULT '-',
  `phone` varchar(16) NOT NULL DEFAULT '-',
  `home_province` varchar(8) NOT NULL DEFAULT '-',
  `home_city` varchar(8) NOT NULL DEFAULT '-',
  `work_location` varchar(16) NOT NULL DEFAULT '-',
  `card_number` varchar(16) NOT NULL DEFAULT '-',
  `university` varchar(32) NOT NULL DEFAULT '-',
  `degree` varchar(32) NOT NULL DEFAULT '-',
  `major` varchar(64) NOT NULL DEFAULT '-',
  `graduation_date` varchar(64) NOT NULL DEFAULT '-',
  `skills` varchar(64) NOT NULL DEFAULT '-',
  `certification` varchar(64) NOT NULL DEFAULT '-',
  `lead_experience` varchar(64) NOT NULL DEFAULT '-',
  `mf_as400` varchar(64) NOT NULL DEFAULT '-',
  `change_job` varchar(64) NOT NULL DEFAULT '-',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `u_id` int(11) NOT NULL COMMENT '属于那个用户',
  `personal_email` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `basic`
--

INSERT INTO `basic` (`id`, `step`, `status`, `department`, `hsbc_bu`, `hr`, `rm`, `csi_interviewer`, `csi_interview_email`, `hsbc_interviewer`, `hsbc_interviewer_email`, `cn_name`, `en_name`, `gender`, `phone`, `home_province`, `home_city`, `work_location`, `card_number`, `university`, `degree`, `major`, `graduation_date`, `skills`, `certification`, `lead_experience`, `mf_as400`, `change_job`, `create_time`, `update_time`, `u_id`, `personal_email`) VALUES
(18, '1', '1', 'mono', 'boc', '李雯', '陈-', 'Maggie', 'maggie@sina.com', 'Jason', 'jason@sina.com', '宋洋', 'James', '男', '13434567890', '3', '3', 'Guangzhou', '1243545464565767', '四川大学', 'master', '专业', '05/08/2019', 'java', 'CET-6', '未知', 'MF 2years', '个人原因', 1558078953, 1558078953, 1, NULL),
(20, '1', '1', 'mono', 'hcc', '惠子', '仝新轩', 'Samantha', 'samantha@163.com', 'Hailey', 'hailey@163.com', '涂悦兹', 'Lavelle', '女', '17728952368', '14', '2', 'Xi''an', '4565676768687867', '中山大学', 'bachelor', '文学', '05/01/2014', 'java', 'CET-4', '7', 'MF 3years', '无', 1558080427, 1558080427, 1, NULL),
(19, '1', '1', 'mono', 'ccs', '乔一', '金珂', 'David', 'david@126.com ', 'Tyler', 'tyler@126.com ', '辛欣', 'Elizabeth', '女', '18823456721', '1', '1', 'Xi''an', '5678888888888888', '北京大学', 'doctor', '计算机', '05/01/2014', 'mainframe,AS400', 'CET-6', '3', 'MF 3years', '个人原因', 1558079809, 1558079809, 3, NULL),
(24, '1', '1', 'mono', 'ccs', '乔一', '金珂', 'David', 'david@126.com ', 'Tyler', 'tyler@126.com ', '辛欣01', 'Elizabeth', '女', '18823456721', '1', '1', 'Xi''an', '5678888888888888', '北京大学', 'doctor', '计算机', '05/01/2014', 'mainframe,AS400', 'CET-6', '3', 'MF 3years', '个人原因', 1558079809, 1558079809, 4, NULL),
(25, '1', '1', 'mono', 'ccs', '乔一01', '金珂', 'David', 'david@126.com ', 'Tyler', 'tyler@126.com ', '辛欣01', 'Elizabeth', '女', '18823456721', '1', '1', 'Xi''an', '5678888888888888', '北京大学', 'doctor', '计算机', '05/01/2014', 'mainframe,AS400', 'CET-6', '3', 'MF 3years', '个人原因', 1558079809, 1558079809, 5, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
