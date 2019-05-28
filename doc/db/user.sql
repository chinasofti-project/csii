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
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(225) CHARACTER SET utf8 NOT NULL COMMENT '用户名',
  `user_password` varchar(225) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `f_id` int(11) NOT NULL COMMENT '父级id',
  `deparment` varchar(225) CHARACTER SET utf8 NOT NULL COMMENT '部门',
  `role_type` enum('hr','csi','hsbc') CHARACTER SET utf8 NOT NULL COMMENT '角色类型',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `login_name` varchar(225) CHARACTER SET utf8 NOT NULL COMMENT '登陆账号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `user_name`, `user_password`, `f_id`, `deparment`, `role_type`, `create_time`, `login_name`) VALUES
(1, 'HR测试', '123456', 0, 'MNC', 'hr', '2019-05-25 13:14:00', 'hrmnc001'),
(2, 'CSI测试', '123456', 0, 'MNC', 'csi', '2019-05-25 13:14:00', 'csimnc001'),
(3, 'HSBC测试', '123456', 0, 'MNC', 'hsbc', '2019-05-25 13:14:00', 'hsbcmnc001'),
(4, 'HR子账号测试1', '123456', 1, 'MNC', 'hr', '2019-05-28 13:14:00', 'hrmnc001'),
(5, 'HR子账号测试2', '123456', 1, 'MNC', 'hr', '2019-05-28 13:14:00', 'hrmnc001'),
(6, 'HR子账号测试3', '123456', 1, 'MNC', 'hr', '2019-05-28 13:14:00', 'hrmnc001');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
