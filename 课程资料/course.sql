-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: 100.67.90.31:4850
-- Generation Time: 2017-07-12 16:01:07
-- 服务器版本： 5.6.28-cdb20160902-log
-- PHP Version: 5.6.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course`
--
CREATE DATABASE course;
use course;
-- --------------------------------------------------------

--
-- 表的结构 `t_advert`
--

CREATE TABLE `t_advert` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `linkurl` char(100) NOT NULL,
  `sortnumber` int(20) DEFAULT '10000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_carousel`
--

CREATE TABLE `t_carousel` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `linkurl` char(100) NOT NULL,
  `sortnumber` int(20) DEFAULT '10000',
  `path` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_category`
--

CREATE TABLE `t_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortnumber` int(11) DEFAULT '10000',
  `pid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_cgroup`
--

CREATE TABLE `t_cgroup` (
  `id` int(11) NOT NULL,
  `name` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_channel`
--

CREATE TABLE `t_channel` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `sortnumber` int(11) DEFAULT '10000',
  `createtime` varchar(255) DEFAULT NULL,
  `modifytime` varchar(255) DEFAULT NULL,
  `prefix` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_channel`
--

INSERT INTO `t_channel` (`id`, `siteid`, `name`, `parentid`, `sortnumber`, `createtime`, `modifytime`, `prefix`) VALUES
(18, 17, '课程详情', NULL, 10000, '2017-06-20 15:39:28', NULL, NULL),
(19, 18, '课程详情', NULL, 10000, '2017-06-20 15:39:34', NULL, NULL),
(20, 19, '课程详情', NULL, 10000, '2017-06-20 15:39:41', NULL, NULL),
(21, 20, '课程详情', NULL, 10000, '2017-06-20 15:39:45', NULL, NULL),
(22, 21, '课程详情', NULL, 10000, '2017-06-20 15:39:50', NULL, NULL),
(23, 23, '课程详情', NULL, 10000, '2017-06-20 15:39:55', NULL, NULL),
(24, 22, '课程详情', NULL, 10000, '2017-06-20 15:39:59', NULL, NULL),
(25, 24, '课程详情', NULL, 10000, '2017-06-20 15:40:06', NULL, NULL),
(26, 25, '课程详情', NULL, 10000, '2017-06-20 15:51:41', NULL, NULL),
(27, 26, '课程详情', NULL, 10000, '2017-06-20 15:51:48', NULL, NULL),
(28, 27, '课程详情', NULL, 10000, '2017-06-20 15:51:59', NULL, NULL),
(29, 28, '课程详情', NULL, 10000, '2017-06-20 15:52:05', NULL, NULL),
(30, 29, '课程详情', NULL, 10000, '2017-06-20 15:52:10', NULL, NULL),
(31, 30, '课程详情', NULL, 10000, '2017-06-20 15:52:15', NULL, NULL),
(32, 31, '课程详情', NULL, 10000, '2017-06-20 15:52:20', NULL, NULL),
(33, 32, '课程详情', NULL, 10000, '2017-06-20 15:53:42', NULL, NULL),
(34, 33, '课程详情', NULL, 10000, '2017-06-20 15:53:48', NULL, NULL),
(35, 34, '课程详情', NULL, 10000, '2017-06-20 15:53:53', NULL, NULL),
(36, 35, '课程详情', NULL, 10000, '2017-06-20 15:53:58', NULL, NULL),
(37, 36, '课程详情', NULL, 10000, '2017-06-20 15:54:07', NULL, NULL),
(38, 37, '课程详情', NULL, 10000, '2017-06-20 15:54:13', NULL, NULL),
(39, 40, '课程详情', NULL, 10000, '2017-06-20 15:54:22', NULL, NULL),
(40, 39, '课程详情', NULL, 10000, '2017-06-20 15:54:27', NULL, NULL),
(41, 38, '课程详情', NULL, 10000, '2017-06-20 15:54:32', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_chapter`
--

CREATE TABLE `t_chapter` (
  `id` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `pid` int(20) DEFAULT NULL,
  `sortnumber` int(20) DEFAULT '10000',
  `cid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_chapterunit`
--

CREATE TABLE `t_chapterunit` (
  `id` int(11) NOT NULL,
  `courseid` int(20) NOT NULL,
  `chapterid` int(20) NOT NULL,
  `uid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_content`
--

CREATE TABLE `t_content` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `title` char(100) NOT NULL,
  `describle` varchar(1000) DEFAULT NULL,
  `channelid` int(11) NOT NULL,
  `content` text,
  `createtime` varchar(255) DEFAULT NULL,
  `modifytime` varchar(255) DEFAULT NULL,
  `prefix` char(100) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `swfpath` varchar(255) DEFAULT NULL,
  `clicknumber` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_content`
--

INSERT INTO `t_content` (`id`, `siteid`, `title`, `describle`, `channelid`, `content`, `createtime`, `modifytime`, `prefix`, `thumbnail`, `path`, `swfpath`, `clicknumber`, `type`) VALUES
(17, 17, '什么是云', '1.云计算-什么是云', 18, '', '2017-06-20 15:56:00', '2017-06-24 11:28:38', 'hd/news', NULL, '9031868222988335378', '9031868222988335378', 0, 2),
(18, 18, '从上云开始（一）——最简云架构', 'B03.从上云开始（一）——最简云架构', 19, '', '2017-06-20 15:56:53', NULL, 'hd/news', NULL, '/upload/image/20170620/1497945403472022373.mp4', '/upload/image/20170620/1497945403472022373.mp4', 0, 2),
(19, 19, '从上云开始（二）——单点与多点', 'B04.从上云开始（二）——单点与多点', 20, '', '2017-06-20 15:57:22', NULL, 'hd/news', NULL, '/upload/image/20170620/1497945432756039424.mp4', '/upload/image/20170620/1497945432756039424.mp4', 0, 2),
(20, 20, '云服务器CVM功能概述', '45.云服务器CVM功能概述', 21, '', '2017-06-20 15:58:00', NULL, 'hd/news', NULL, '/upload/image/20170620/1497945459915096909.mp4', '/upload/image/20170620/1497945459915096909.mp4', 0, 2),
(21, 21, '安全稳定的云数据库——数据库主备双活', 'B05.安全稳定的云数据库——数据库主备双活', 22, '', '2017-06-20 15:59:03', NULL, 'hd/news', NULL, '/upload/image/20170620/1497945528736074450.mp4', '/upload/image/20170620/1497945528736074450.mp4', 0, 2),
(22, 22, ' 对象存储服务COS概述', ' 对象存储服务COS概述', 24, '', '2017-06-20 16:00:18', '2017-06-20 16:03:53', 'hd/news', NULL, '/upload/image/20170620/1497945822665008574.mp4', '/upload/image/20170620/1497945822665008574.mp4', 0, 2),
(23, 23, ' 更好的网络（一）——内容分发网络CDN', ' 更好的网络（一）——内容分发网络CDN', 23, '', '2017-06-20 16:04:39', NULL, 'hd/news', NULL, '/upload/image/20170620/1497945876486025031.mp4', '/upload/image/20170620/1497945876486025031.mp4', 0, 2),
(24, 24, '更好的网络（二）——CDN的命中率是什么？', 'B07.更好的网络（二）——CDN的命中率是什么？', 25, '', '2017-06-20 16:05:12', NULL, 'hd/news', NULL, '/upload/image/20170620/1497945901095065017.mp4', '/upload/image/20170620/1497945901095065017.mp4', 0, 2),
(25, 25, '如何搭建高可用的WordPress站点', '如何搭建高可用的WordPress站点', 26, '', '2017-06-20 16:07:13', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946029325087560.mp4', '/upload/image/20170620/1497946029325087560.mp4', 0, 2),
(26, 26, '直播/互动直播iOS集成-课程概述', '直播/互动直播iOS集成-课程概述', 27, '', '2017-06-20 16:07:48', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946064297089043.mp4', '/upload/image/20170620/1497946064297089043.mp4', 0, 2),
(27, 27, '一个小时搭建自己的Discuz!论坛', '3..云计算进阶教程-一个小时搭建自己的Discuz!论坛', 28, '', '2017-06-20 16:08:24', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946094202083026.mp4', '/upload/image/20170620/1497946094202083026.mp4', 0, 2),
(28, 28, '云通信IM-iOS ImSDK集成', '云通信IM-iOS ImSDK集成', 29, '', '2017-06-20 16:09:07', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946136446013504.mp4', '/upload/image/20170620/1497946136446013504.mp4', 0, 2),
(29, 29, '云通信IM-Android ImSDK集成', '云通信IM-Android ImSDK集成', 30, '', '2017-06-20 16:09:43', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946165886057656.mp4', '/upload/image/20170620/1497946165886057656.mp4', 0, 2),
(30, 30, '云通信IM-iOS ImSDk登录', '云通信IM-iOS ImSDk登录.', 31, '', '2017-06-20 16:10:23', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946208212081422.mp4', '/upload/image/20170620/1497946208212081422.mp4', 0, 2),
(31, 31, '云通信IM-Android ImSDk登录', '', 32, '', '2017-06-20 16:11:00', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946250610034837.mp4', '/upload/image/20170620/1497946250610034837.mp4', 0, 2),
(32, 32, '云通信IM-iOS ImSDK会话和消息', '', 33, '', '2017-06-20 16:11:44', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946291819070113.mp4', '/upload/image/20170620/1497946291819070113.mp4', 0, 2),
(33, 33, '如何搭建高可用的WordPress站点.', '', 34, '', '2017-06-20 16:13:54', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946425065081626.mp4', '/upload/image/20170620/1497946425065081626.mp4', 0, 2),
(34, 34, '视频创业那些坑', '视频创业那些坑.', 35, '', '2017-06-20 16:14:22', '2017-06-20 16:15:10', 'hd/news', NULL, '/upload/image/20170620/1497946491892068614.mp4', '/upload/image/20170620/1497946491892068614.mp4', 0, 2),
(35, 35, '云计算向公共资源演化之路', '', 36, '', '2017-06-20 16:15:44', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946532907070489.mp4', '/upload/image/20170620/1497946532907070489.mp4', 0, 2),
(36, 36, '云时代程序员的社会责任', '', 37, '', '2017-06-20 16:16:14', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946566218087411.mp4', '/upload/image/20170620/1497946566218087411.mp4', 0, 2),
(37, 37, '创业CEO如何招到合适的CTO', '创业CEO如何招到合适的CTO', 38, '', '2017-06-20 16:16:50', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946600499006238.mp4', '/upload/image/20170620/1497946600499006238.mp4', 0, 2),
(38, 38, '全栈工程师的自我修养', '', 41, '', '2017-06-20 16:17:27', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946635698069566.mp4', '/upload/image/20170620/1497946635698069566.mp4', 0, 2),
(39, 39, '冷热分离 高性能架构设计的基本法则', '冷热分离', 40, '', '2017-06-20 16:18:06', '2017-06-20 16:18:21', 'hd/news', NULL, '/upload/image/20170620/1497946670314046205.mp4', '/upload/image/20170620/1497946670314046205.mp4', 0, 2),
(40, 40, '微票的Cloud Native实践之路', '微票的Cloud Native实践之路', 39, '', '2017-06-20 16:18:53', NULL, 'hd/news', NULL, '/upload/image/20170620/1497946720760049705.mp4', '/upload/image/20170620/1497946720760049705.mp4', 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `t_course`
--

CREATE TABLE `t_course` (
  `id` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `describle` varchar(1000) DEFAULT NULL,
  `category` char(100) NOT NULL,
  `createtime` char(100) DEFAULT NULL,
  `modifytime` char(100) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `thumb` char(100) DEFAULT NULL,
  `siteid` int(11) NOT NULL,
  `feature` varchar(1000) DEFAULT NULL,
  `prize` char(100) DEFAULT NULL,
  `level` char(100) DEFAULT NULL,
  `video` char(100) DEFAULT NULL,
  `website` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_course`
--

INSERT INTO `t_course` (`id`, `name`, `describle`, `category`, `createtime`, `modifytime`, `userid`, `thumb`, `siteid`, `feature`, `prize`, `level`, `video`, `website`) VALUES
(17, '什么是云', '简单介绍云计算的基本原理', '初级', '2017-06-20 15:25:48', '2017-06-24 12:15:32', 6, 'http://objectstorage-1253440178.cossh.myqcloud.com/image/1498277674969.png', 17, NULL, '产品入门', NULL, NULL, NULL),
(18, '从上云开始（一）——最简云架构', '本课程基于腾讯云云计算平台，展示了从上云开始到构建一个完整、稳定的云计算架构平台的流程。全方位的介绍云计算架构演化的方方面面。', '初级', '2017-06-20 15:28:52', '2017-06-20 15:28:52', 6, '/upload/image/20170620/1497943704413031698.jpg', 18, NULL, '产品入门', '', NULL, NULL),
(19, '从上云开始（二）——单点与多点', '本课程基于腾讯云云计算平台，展示了从上云开始到构建一个完整、稳定的云计算架构平台的流程。全方位的介绍云计算架构演化的方方面面。', '初级', '2017-06-20 15:29:48', '2017-06-20 15:29:48', 6, '/upload/image/20170620/1497943769560033825.jpg', 19, NULL, '产品入门', '', NULL, NULL),
(20, ' 云服务器CVM功能概述', '本课向大家介绍腾讯云云服务器CVM稳定、弹性、易用等功能特点。', '初级', '2017-06-20 15:30:22', '2017-06-20 15:30:22', 6, '/upload/image/20170620/1497943809364048435.png', 20, NULL, '产品入门', '', NULL, NULL),
(21, ' 安全稳定的云数据库——数据库主备双活', '本课程基于腾讯云云计算平台，展示了从上云开始到构建一个完整、稳定的云计算架构平台的流程。全方位的介绍云计算架构演化的方方面面。', '初级', '2017-06-20 15:37:47', '2017-06-20 15:37:47', 6, '/upload/image/20170620/1497944247809082960.jpg', 21, NULL, '产品入门', '', NULL, NULL),
(22, ' 对象存储服务COS概述', '本课向大家介绍腾讯云对象存储COS主要功能、应用场景等，帮助大家快速了解COS', '初级', '2017-06-20 15:38:14', '2017-06-20 15:38:14', 6, '/upload/image/20170620/1497944283147087463.png', 22, NULL, '产品入门', '', NULL, NULL),
(23, ' 更好的网络（一）——内容分发网络CDN', '本课程基于腾讯云云计算平台，展示了从上云开始到构建一个完整、稳定的云计算架构平台的流程。全方位的介绍云计算架构演化的方方面面。', '初级', '2017-06-20 15:38:42', '2017-06-20 15:38:42', 6, '/upload/image/20170620/1497944312036023321.jpg', 23, NULL, '产品入门', '', NULL, NULL),
(24, '更好的网络（二）——CDN的命中率是什么？', '本课程基于腾讯云云计算平台，展示了从上云开始到构建一个完整、稳定的云计算架构平台的流程。全方位的介绍云计算架构演化的方方面面。', '初级', '2017-06-20 15:39:04', '2017-06-20 15:39:04', 6, '/upload/image/20170620/1497944326899054731.jpg', 24, NULL, '产品入门', '', NULL, NULL),
(25, '如何搭建高可用的WordPress站点', '本教程为技术公开课直播的配套实战 演示，分享了如何利用云服务器CVM、云数据库CDB、负载均衡、弹性伸缩灯产品和服务，搭建一个高可用的WordPress站点，满足海量用户访问的需求。', '中级', '2017-06-20 15:40:55', '2017-06-20 15:40:55', 6, '/upload/image/20170620/1497944438090069704.png', 25, NULL, '产品进阶', '', NULL, NULL),
(26, '直播/互动直播iOS集成-课程概述', '本课主要分享如何在腾讯云AV SDK和IM SDK的基础上，快速进行二次开发。', '中级', '2017-06-20 15:41:24', '2017-06-20 15:41:24', 6, '/upload/image/20170620/1497944471427031983.png', 26, NULL, '产品进阶', '', NULL, NULL),
(27, ' 一个小时搭建自己的Disuz!论坛', '本课程将带大家手把手的在一个小时内搭建出自己的 Disuz 论坛，也借此带大家悉熟云计算服务中云服务器、云数据库等服务的使用。', '中级', '2017-06-20 15:41:53', '2017-06-20 15:41:53', 6, '/upload/image/20170620/1497944502652047167.png', 27, NULL, '产品进阶', '', NULL, NULL),
(28, ' 云通信IM-iOS ImSDK集成', '云计算  云通信IM', '中级', '2017-06-20 15:42:31', '2017-06-20 15:42:31', 6, '/upload/image/20170620/1497944535959055868.png', 28, NULL, '产品进阶', '', NULL, NULL),
(29, '云通信IM-Android Im SDK集成', '云计算  云通信IM', '中级', '2017-06-20 15:43:20', '2017-06-20 15:43:20', 6, '/upload/image/20170620/1497944580558039211.png', 29, NULL, '产品进阶', '', NULL, NULL),
(30, ' 云通信IM-iOS ImSDK登录', '\n云计算  云通信IM', '中级', '2017-06-20 15:44:46', '2017-06-20 15:44:46', 6, '/upload/image/20170620/1497944675349077781.png', 30, NULL, '产品进阶', '', NULL, NULL),
(31, '云通信IM-Android ImSDK登录', '云计算  云通信IM', '中级', '2017-06-20 15:45:22', '2017-06-20 15:45:22', 6, '/upload/image/20170620/1497944713732067438.png', 31, NULL, '产品进阶', '', NULL, NULL),
(32, '云通信IM-iOS ImSDK会话和消息', '云计算  云通信IM', '中级', '2017-06-20 15:45:47', '2017-06-20 15:45:47', 6, '/upload/image/20170620/1497944738462042208.png', 32, NULL, '产品进阶', '', NULL, NULL),
(33, '零基础入门高可用云端架构设计', '\n刘颖是腾讯云基础产品中心总监，先后从事过VPC，高性能防火墙，虚拟化调度管理平台等工作，致力于建设高性能、高可用、安全的云平台基础设施。本期技术公开课中，他将从计算、网络、存储三个角度，分享公有云应该如何应对架构不断调整、优化带来的挑战，并介绍腾讯云在架构设计方面的最佳实践经验。', '高级', '2017-06-20 15:46:39', '2017-06-20 15:46:39', 6, '/upload/image/20170620/1497944761185087627.jpg', 33, NULL, '大咖分享', '', NULL, NULL),
(34, '视频创业那些坑', '视频创业都有哪些坑？该如何巧妙地避开这些坑？腾讯云布道师贺嘉与你分享。', '高级', '2017-06-20 15:47:08', '2017-06-20 15:47:08', 6, '/upload/image/20170620/1497944806045067809.png', 34, NULL, '大咖分享', '', NULL, NULL),
(35, ' 云计算向公共资源演化之路', '云计算是什么？新技术？概念？还是资源？本节课腾讯云布道师为你解密云计算的本质。', '高级', '2017-06-20 15:47:28', '2017-06-20 15:47:28', 6, '/upload/image/20170620/1497944836100065989.png', 35, NULL, '大咖分享', '', NULL, NULL),
(36, ' 云时代程序员的社会责任', '和信息时代相比，在云时代背景下，程序员应该承担起怎样的社会责任呢？如何通过云计算，让世界更加美好？', '高级', '2017-06-20 15:47:52', '2017-06-20 15:47:52', 6, '/upload/image/20170620/1497944853972043406.png', 36, NULL, '大咖分享', '', NULL, NULL),
(37, '创业CEO如何招到合适的CTO', '优秀的CTO长什么样？招CTO之前，CEO是不是需要先懂技术？如何找到合适的技术合伙人？本课为你一一解答。', '高级', '2017-06-20 15:48:18', '2017-06-20 15:48:18', 6, '/upload/image/20170620/1497944880006092274.png', 37, NULL, '大咖分享', '', NULL, NULL),
(38, '全栈工程师的自我修养', '《Web全栈工程师的自我修养》作者，《众妙之门#3》、《响应式Web设计全流程解析》译者余果，与你讨论为什么要做全栈工程师，如何做全栈工程师，全栈工程师的职业前景等问题。', '高级', '2017-06-20 15:49:29', '2017-06-20 15:49:29', 6, '/upload/image/20170620/1497944904827079084.png', 38, NULL, '大咖分享', '', NULL, NULL),
(39, '冷热分离 高性能架构设计的基本法则', '结合8年的性能工作经验，通过介绍基本的硬件基础知识，并分享不遵守该法则所导致的血案，腾讯云布道师为你细说冷热分离法则。', '高级', '2017-06-20 15:50:14', '2017-06-20 15:50:14', 6, '/upload/image/20170620/1497944999271030825.png', 39, NULL, '大咖分享', '', NULL, NULL),
(40, ' 微票的Cloud Native实践之路', '微票的Cloud Native实践之路', '高级', '2017-06-20 15:50:37', '2017-06-20 15:50:37', 6, '/upload/image/20170620/1497945019979098732.png', 40, NULL, '大咖分享', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_coursecategory`
--

CREATE TABLE `t_coursecategory` (
  `id` int(11) NOT NULL,
  `courseid` int(20) NOT NULL,
  `categoryid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_evaluation`
--

CREATE TABLE `t_evaluation` (
  `id` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `score` int(10) DEFAULT NULL,
  `evatime` char(50) DEFAULT NULL,
  `ecommnent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_hd`
--

CREATE TABLE `t_hd` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `starttime` char(50) DEFAULT NULL,
  `endtime` char(50) DEFAULT NULL,
  `cstime` char(50) DEFAULT NULL,
  `fstime` char(50) DEFAULT NULL,
  `zstime` char(50) DEFAULT NULL,
  `describle` varchar(1000) DEFAULT NULL,
  `siteid` int(11) NOT NULL,
  `prefix` char(100) DEFAULT 'index',
  `userid` int(11) DEFAULT NULL,
  `orgid` int(11) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_hdcourse`
--

CREATE TABLE `t_hdcourse` (
  `id` int(11) NOT NULL,
  `hdid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_hdorg`
--

CREATE TABLE `t_hdorg` (
  `id` int(11) NOT NULL,
  `hdid` int(11) NOT NULL,
  `orgid` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `reply` varchar(255) DEFAULT NULL,
  `attach` varchar(255) NOT NULL,
  `signtime` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_hduser`
--

CREATE TABLE `t_hduser` (
  `id` int(11) NOT NULL,
  `hdid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `identity` int(11) DEFAULT '0',
  `reply` varchar(255) DEFAULT NULL,
  `signtime` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_link`
--

CREATE TABLE `t_link` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `linkurl` char(100) NOT NULL,
  `sortnumber` int(11) DEFAULT '10000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_org`
--

CREATE TABLE `t_org` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `describle` varchar(1000) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `category` char(100) DEFAULT NULL,
  `logoimg` char(100) DEFAULT NULL,
  `xcimg` char(100) DEFAULT NULL,
  `zzimg` char(100) DEFAULT NULL,
  `fmimg` char(100) DEFAULT NULL,
  `siteid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `email` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_orguser`
--

CREATE TABLE `t_orguser` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `orgid` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `reply` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_permission`
--

CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_role`
--

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `rolekey` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_role`
--

INSERT INTO `t_role` (`id`, `name`, `rolekey`) VALUES
(1, '系统管理员', 'admin'),
(2, '机构管理员', 'orgadmin'),
(3, '活动管理员', 'hdadmin'),
(4, '老师', 'teacher'),
(5, '学生', 'student');

-- --------------------------------------------------------

--
-- 表的结构 `t_site`
--

CREATE TABLE `t_site` (
  `id` int(11) NOT NULL,
  `name` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_site`
--

INSERT INTO `t_site` (`id`, `name`) VALUES
(17, '什么是云'),
(18, '从上云开始（一）——最简云架构'),
(19, '从上云开始（二）——单点与多点'),
(20, ' 云服务器CVM功能概述'),
(21, ' 安全稳定的云数据库——数据库主备双活'),
(22, ' 对象存储服务COS概述'),
(23, ' 更好的网络（一）——内容分发网络CDN'),
(24, '更好的网络（二）——CDN的命中率是什么？'),
(25, '如何搭建高可用的WordPress站点'),
(26, '直播/互动直播iOS集成-课程概述'),
(27, ' 一个小时搭建自己的Disuz!论坛'),
(28, ' 云通信IM-iOS ImSDK集成'),
(29, '云通信IM-Android Im SDK集成'),
(30, ' 云通信IM-iOS ImSDK登录'),
(31, '云通信IM-Android ImSDK登录'),
(32, '云通信IM-iOS ImSDK会话和消息'),
(33, '零基础入门高可用云端架构设计'),
(34, '视频创业那些坑'),
(35, ' 云计算向公共资源演化之路'),
(36, ' 云时代程序员的社会责任'),
(37, '创业CEO如何招到合适的CTO'),
(38, '全栈工程师的自我修养'),
(39, '冷热分离 高性能架构设计的基本法则'),
(40, ' 微票的Cloud Native实践之路');

-- --------------------------------------------------------

--
-- 表的结构 `t_unit`
--

CREATE TABLE `t_unit` (
  `id` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `type` int(20) NOT NULL,
  `path` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_user`
--

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL,
  `username` char(100) NOT NULL,
  `realname` char(100) DEFAULT NULL,
  `password` char(100) NOT NULL,
  `email` char(100) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `headimg` varchar(255) DEFAULT NULL,
  `sex` char(10) DEFAULT '0',
  `describle` varchar(1000) DEFAULT NULL,
  `code` char(100) DEFAULT NULL,
  `codeimg` char(100) DEFAULT NULL,
  `token` char(100) DEFAULT NULL,
  `pwdtoken` char(100) DEFAULT NULL,
  `job` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_user`
--

INSERT INTO `t_user` (`id`, `username`, `realname`, `password`, `email`, `status`, `headimg`, `sex`, `describle`, `code`, `codeimg`, `token`, `pwdtoken`, `job`) VALUES
(1, 'admin', '管理员', 'e10adc3949ba59abbe56e057f20f883e', 'admin@qq.com', 2, '/upload/image/20170620/1497922947832094977.jpg', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'dyb', '董宜彬', 'e10adc3949ba59abbe56e057f20f883e', '412138625@qq.com', 0, '/upload/image/20170620/1497929356329066891.jpg', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'sjh', '盛建宏', 'e10adc3949ba59abbe56e057f20f883e', '', -1, '/style/img/head.png', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'qcloudqcce', 'qcloudtcce', 'e10adc3949ba59abbe56e057f20f883e', '1111@qq.com', 0, '/style/img/head.png', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'cwl', NULL, 'E10ADC3949BA59ABBE56E057F20F883E', NULL, 0, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_userrole`
--

CREATE TABLE `t_userrole` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `reply` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_userrole`
--

INSERT INTO `t_userrole` (`id`, `userid`, `roleid`, `status`, `reply`) VALUES
(1, 1, 1, 2, NULL),
(2, 1, 2, 2, NULL),
(3, 1, 3, 2, NULL),
(4, 4, 4, 2, NULL),
(5, 5, 4, 2, NULL),
(6, 6, 4, 2, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_advert`
--
ALTER TABLE `t_advert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_carousel`
--
ALTER TABLE `t_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_category`
--
ALTER TABLE `t_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_category_ibfk_1` (`pid`),
  ADD KEY `t_category_ibfk_2` (`cid`);

--
-- Indexes for table `t_cgroup`
--
ALTER TABLE `t_cgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_channel`
--
ALTER TABLE `t_channel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_channel_ibfk_1` (`siteid`),
  ADD KEY `t_channel_ibfk_2` (`parentid`);

--
-- Indexes for table `t_chapter`
--
ALTER TABLE `t_chapter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_chapter_ibfk_1` (`cid`),
  ADD KEY `t_chapter_ibfk_2` (`pid`);

--
-- Indexes for table `t_chapterunit`
--
ALTER TABLE `t_chapterunit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_chapterunit_ibfk_1` (`courseid`),
  ADD KEY `t_chapterunit_ibfk_2` (`chapterid`),
  ADD KEY `t_chapterunit_ibfk_3` (`uid`);

--
-- Indexes for table `t_content`
--
ALTER TABLE `t_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_content_ibfk_1` (`siteid`),
  ADD KEY `t_content_ibfk_2` (`channelid`);

--
-- Indexes for table `t_course`
--
ALTER TABLE `t_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`userid`),
  ADD KEY `t_course_ibfk_1` (`userid`),
  ADD KEY `t_course_ibfk_2` (`siteid`);

--
-- Indexes for table `t_coursecategory`
--
ALTER TABLE `t_coursecategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_coursecategory_ibfk_1` (`courseid`),
  ADD KEY `t_coursecategory_ibfk_2` (`categoryid`);

--
-- Indexes for table `t_evaluation`
--
ALTER TABLE `t_evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_evaluation_ibfk_1` (`courseid`),
  ADD KEY `t_evaluation_ibfk_2` (`userid`);

--
-- Indexes for table `t_hd`
--
ALTER TABLE `t_hd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_hd_ibfk_1` (`siteid`),
  ADD KEY `t_hd_ibfk_2` (`userid`),
  ADD KEY `t_hd_ibfk_3` (`orgid`);

--
-- Indexes for table `t_hdcourse`
--
ALTER TABLE `t_hdcourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_hdcourse_ibfk_1` (`hdid`),
  ADD KEY `t_hdcourse_ibfk_2` (`courseid`);

--
-- Indexes for table `t_hdorg`
--
ALTER TABLE `t_hdorg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hdid` (`hdid`,`orgid`),
  ADD KEY `t_hdorg_ibfk_2` (`orgid`);

--
-- Indexes for table `t_hduser`
--
ALTER TABLE `t_hduser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hdid` (`hdid`,`userid`),
  ADD KEY `t_hduser_ibfk_2` (`userid`);

--
-- Indexes for table `t_link`
--
ALTER TABLE `t_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_link_ibfk_1` (`siteid`);

--
-- Indexes for table `t_org`
--
ALTER TABLE `t_org`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `t_org_ibfk_1` (`siteid`),
  ADD KEY `t_org_ibfk_2` (`userid`);

--
-- Indexes for table `t_orguser`
--
ALTER TABLE `t_orguser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`,`orgid`),
  ADD KEY `t_orguser_ibfk_2` (`orgid`);

--
-- Indexes for table `t_permission`
--
ALTER TABLE `t_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_role`
--
ALTER TABLE `t_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `rolekey` (`rolekey`);

--
-- Indexes for table `t_site`
--
ALTER TABLE `t_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_unit`
--
ALTER TABLE `t_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `t_userrole`
--
ALTER TABLE `t_userrole`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`,`roleid`),
  ADD KEY `t_userrole_ibfk_2` (`roleid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `t_advert`
--
ALTER TABLE `t_advert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_carousel`
--
ALTER TABLE `t_carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_category`
--
ALTER TABLE `t_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_cgroup`
--
ALTER TABLE `t_cgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_channel`
--
ALTER TABLE `t_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- 使用表AUTO_INCREMENT `t_chapter`
--
ALTER TABLE `t_chapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_chapterunit`
--
ALTER TABLE `t_chapterunit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_content`
--
ALTER TABLE `t_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- 使用表AUTO_INCREMENT `t_course`
--
ALTER TABLE `t_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- 使用表AUTO_INCREMENT `t_coursecategory`
--
ALTER TABLE `t_coursecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_evaluation`
--
ALTER TABLE `t_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `t_hd`
--
ALTER TABLE `t_hd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_hdcourse`
--
ALTER TABLE `t_hdcourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_hdorg`
--
ALTER TABLE `t_hdorg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_hduser`
--
ALTER TABLE `t_hduser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_link`
--
ALTER TABLE `t_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_org`
--
ALTER TABLE `t_org`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_orguser`
--
ALTER TABLE `t_orguser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_permission`
--
ALTER TABLE `t_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_role`
--
ALTER TABLE `t_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `t_site`
--
ALTER TABLE `t_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- 使用表AUTO_INCREMENT `t_unit`
--
ALTER TABLE `t_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `t_userrole`
--
ALTER TABLE `t_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 限制导出的表
--

--
-- 限制表 `t_category`
--
ALTER TABLE `t_category`
  ADD CONSTRAINT `t_category_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `t_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_category_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `t_cgroup` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_channel`
--
ALTER TABLE `t_channel`
  ADD CONSTRAINT `t_channel_ibfk_1` FOREIGN KEY (`siteid`) REFERENCES `t_site` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_channel_ibfk_2` FOREIGN KEY (`parentid`) REFERENCES `t_channel` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_chapter`
--
ALTER TABLE `t_chapter`
  ADD CONSTRAINT `t_chapter_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `t_course` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_chapter_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `t_chapter` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_chapterunit`
--
ALTER TABLE `t_chapterunit`
  ADD CONSTRAINT `t_chapterunit_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `t_course` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_chapterunit_ibfk_2` FOREIGN KEY (`chapterid`) REFERENCES `t_chapter` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_chapterunit_ibfk_3` FOREIGN KEY (`uid`) REFERENCES `t_unit` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_content`
--
ALTER TABLE `t_content`
  ADD CONSTRAINT `t_content_ibfk_1` FOREIGN KEY (`siteid`) REFERENCES `t_site` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_content_ibfk_2` FOREIGN KEY (`channelid`) REFERENCES `t_channel` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_course`
--
ALTER TABLE `t_course`
  ADD CONSTRAINT `t_course_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `t_course_ibfk_2` FOREIGN KEY (`siteid`) REFERENCES `t_site` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_coursecategory`
--
ALTER TABLE `t_coursecategory`
  ADD CONSTRAINT `t_coursecategory_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `t_course` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_coursecategory_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `t_category` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_evaluation`
--
ALTER TABLE `t_evaluation`
  ADD CONSTRAINT `t_evaluation_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `t_course` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_evaluation_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_hd`
--
ALTER TABLE `t_hd`
  ADD CONSTRAINT `t_hd_ibfk_1` FOREIGN KEY (`siteid`) REFERENCES `t_site` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_hd_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `t_hd_ibfk_3` FOREIGN KEY (`orgid`) REFERENCES `t_org` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_hdcourse`
--
ALTER TABLE `t_hdcourse`
  ADD CONSTRAINT `t_hdcourse_ibfk_1` FOREIGN KEY (`hdid`) REFERENCES `t_hd` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_hdcourse_ibfk_2` FOREIGN KEY (`courseid`) REFERENCES `t_course` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_hdorg`
--
ALTER TABLE `t_hdorg`
  ADD CONSTRAINT `t_hdorg_ibfk_1` FOREIGN KEY (`hdid`) REFERENCES `t_hd` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_hdorg_ibfk_2` FOREIGN KEY (`orgid`) REFERENCES `t_org` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_hduser`
--
ALTER TABLE `t_hduser`
  ADD CONSTRAINT `t_hduser_ibfk_1` FOREIGN KEY (`hdid`) REFERENCES `t_hd` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_hduser_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_link`
--
ALTER TABLE `t_link`
  ADD CONSTRAINT `t_link_ibfk_1` FOREIGN KEY (`siteid`) REFERENCES `t_site` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_org`
--
ALTER TABLE `t_org`
  ADD CONSTRAINT `t_org_ibfk_1` FOREIGN KEY (`siteid`) REFERENCES `t_site` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_org_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE SET NULL;

--
-- 限制表 `t_orguser`
--
ALTER TABLE `t_orguser`
  ADD CONSTRAINT `t_orguser_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_orguser_ibfk_2` FOREIGN KEY (`orgid`) REFERENCES `t_org` (`id`) ON DELETE CASCADE;

--
-- 限制表 `t_userrole`
--
ALTER TABLE `t_userrole`
  ADD CONSTRAINT `t_userrole_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_userrole_ibfk_2` FOREIGN KEY (`roleid`) REFERENCES `t_role` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
