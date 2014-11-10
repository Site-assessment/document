-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 10, 2014 at 07:11 AM
-- Server version: 5.6.21
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sybwj`
--

-- --------------------------------------------------------

--
-- Table structure for table `wj_answer`
--

CREATE TABLE IF NOT EXISTS `wj_answer` (
`group_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL COMMENT '提交问卷用户id',
  `username` varchar(255) NOT NULL COMMENT '答题人名字',
  `form_id` int(10) NOT NULL COMMENT '用户答题的问卷id',
  `grade` int(10) NOT NULL DEFAULT '0' COMMENT '用户得到的分数',
  `cTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wj_answer_detail`
--

CREATE TABLE IF NOT EXISTS `wj_answer_detail` (
`id` int(10) NOT NULL,
  `ques_id` int(10) NOT NULL COMMENT '问题id',
  `opt_id` int(10) NOT NULL COMMENT '回答选项id',
  `group_id` int(10) NOT NULL COMMENT '回答组id',
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wj_form`
--

CREATE TABLE IF NOT EXISTS `wj_form` (
`form_id` int(10) NOT NULL,
  `form_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '问卷名称',
  `state` int(2) NOT NULL DEFAULT '0' COMMENT '问卷是否启用,0 否  1 是',
  `user_id` int(10) NOT NULL COMMENT '创建人',
  `cTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(255) NOT NULL COMMENT '出题人名字'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wj_opt`
--

CREATE TABLE IF NOT EXISTS `wj_opt` (
`opt_id` int(10) NOT NULL,
  `ques_id` int(10) NOT NULL COMMENT '所属题目的选项',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选项内容',
  `is_answer` int(1) NOT NULL COMMENT '0 不是答案 1是答案',
  `location` int(10) NOT NULL COMMENT '选项的位置（0/1/2..）',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '0-选择    1-填空',
  `cTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wj_ques`
--

CREATE TABLE IF NOT EXISTS `wj_ques` (
`ques_id` int(10) NOT NULL,
  `ques_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '题目',
  `cTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `form_id` int(10) NOT NULL COMMENT '所属问卷的id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wj_user`
--

CREATE TABLE IF NOT EXISTS `wj_user` (
`user_id` int(10) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户名/学号',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '密码',
  `realname` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '真实名字',
  `state` int(1) NOT NULL DEFAULT '0' COMMENT '身份（0：学生 1：老师）'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='用户表';

--
-- Dumping data for table `wj_user`
--

INSERT INTO `wj_user` (`user_id`, `username`, `password`, `realname`, `state`) VALUES
(1, 'ww', 'wwzmm', '吴伟', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wj_answer`
--
ALTER TABLE `wj_answer`
 ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `wj_answer_detail`
--
ALTER TABLE `wj_answer_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wj_form`
--
ALTER TABLE `wj_form`
 ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wj_opt`
--
ALTER TABLE `wj_opt`
 ADD PRIMARY KEY (`opt_id`);

--
-- Indexes for table `wj_ques`
--
ALTER TABLE `wj_ques`
 ADD PRIMARY KEY (`ques_id`);

--
-- Indexes for table `wj_user`
--
ALTER TABLE `wj_user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wj_answer`
--
ALTER TABLE `wj_answer`
MODIFY `group_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wj_answer_detail`
--
ALTER TABLE `wj_answer_detail`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wj_form`
--
ALTER TABLE `wj_form`
MODIFY `form_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wj_opt`
--
ALTER TABLE `wj_opt`
MODIFY `opt_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wj_ques`
--
ALTER TABLE `wj_ques`
MODIFY `ques_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wj_user`
--
ALTER TABLE `wj_user`
MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
