/*
 Navicat Premium Data Transfer

 Source Server         : ybb-prod
 Source Server Type    : MySQL
 Source Server Version : 50645 (5.6.45b)
 Source Host           : 10.12.212.195:8270
 Source Schema         : duedge_gtserver

 Target Server Type    : MySQL
 Target Server Version : 50645 (5.6.45b)
 File Encoding         : 65001

 Date: 17/07/2024 21:23:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `device` varchar(20) NOT NULL DEFAULT '' COMMENT 'ios/android/all/j5/pc',
  `channel` varchar(40) NOT NULL DEFAULT '' COMMENT '渠道名称',
  `title` varchar(40) NOT NULL DEFAULT '' COMMENT '名称',
  `content` varchar(40) NOT NULL DEFAULT '' COMMENT '内容',
  `link` varchar(400) DEFAULT NULL,
  `notice_id` int(11) NOT NULL DEFAULT '0' COMMENT 'notice id',
  `description` varchar(40) NOT NULL DEFAULT '' COMMENT '描述',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '排序,数越大越靠前',
  `created_on` datetime NOT NULL COMMENT '记录创建时间',
  `modified_on` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` (`id`, `device`, `channel`, `title`, `content`, `link`, `notice_id`, `description`, `number`, `created_on`, `modified_on`) VALUES (00000000000000000010, 'router', 'mirouter', '绑定提示参数错误时，请将路由器名称改为英文', '小米路由插件公告', 'https://ybb.baidu.com/html/xiaomi_router.html', 100003, '小米路由器公告', 0, '2022-07-21 09:09:48', '2022-07-21 09:09:48');
INSERT INTO `notice` (`id`, `device`, `channel`, `title`, `content`, `link`, `notice_id`, `description`, `number`, `created_on`, `modified_on`) VALUES (00000000000000000011, 'ios', '', '', '', '', 100002, '', 0, '2022-07-26 09:09:50', '2022-07-26 09:09:50');
INSERT INTO `notice` (`id`, `device`, `channel`, `title`, `content`, `link`, `notice_id`, `description`, `number`, `created_on`, `modified_on`) VALUES (00000000000000000014, 'pc', 'NCF-PCS-WIN-HJ01', '百度旗下加速器，限时优惠体验！', '百度旗下加速器，限时优惠体验！', 'tornado-pay', 100101, '', 0, '2022-08-17 16:00:00', '2022-08-18 00:31:52');
INSERT INTO `notice` (`id`, `device`, `channel`, `title`, `content`, `link`, `notice_id`, `description`, `number`, `created_on`, `modified_on`) VALUES (00000000000000000015, 'pc', 'NCF-PCS-WIN-HJ02', '百度旗下加速器，限时优惠体验！', '百度旗下加速器，限时优惠体验！', 'tornado-pay', 100102, '', 0, '2022-08-17 16:00:00', '2022-08-17 16:31:54');
INSERT INTO `notice` (`id`, `device`, `channel`, `title`, `content`, `link`, `notice_id`, `description`, `number`, `created_on`, `modified_on`) VALUES (00000000000000000016, 'pc', 'NCF-PCS-WIN-HJ03', '百度旗下加速器，限时优惠体验！', '百度旗下加速器，限时优惠体验！', 'tornado-pay', 100103, '', 0, '2022-08-17 16:00:00', '2022-08-17 16:31:57');
INSERT INTO `notice` (`id`, `device`, `channel`, `title`, `content`, `link`, `notice_id`, `description`, `number`, `created_on`, `modified_on`) VALUES (00000000000000000017, 'pc', 'NCF-PCS-WIN-HJ04', '百度旗下加速器，限时优惠体验！', '百度旗下加速器，限时优惠体验！', 'tornado-pay', 100104, '', 0, '2022-08-17 16:00:00', '2022-08-17 16:31:59');
INSERT INTO `notice` (`id`, `device`, `channel`, `title`, `content`, `link`, `notice_id`, `description`, `number`, `created_on`, `modified_on`) VALUES (00000000000000000018, 'pc', 'NCF-PCS-WIN-HJ05', '百度旗下加速器，限时优惠体验！', '百度旗下加速器，限时优惠体验！', 'tornado-pay', 100105, '', 0, '2022-08-17 16:00:00', '2022-08-17 16:32:01');
INSERT INTO `notice` (`id`, `device`, `channel`, `title`, `content`, `link`, `notice_id`, `description`, `number`, `created_on`, `modified_on`) VALUES (00000000000000000019, 'pc', 'NCF-PCS-WIN-TEST', '百度旗下加速器，限时优惠体验！', '百度旗下加速器，限时优惠体验！', 'tornado-pay', 100100, '', 0, '2022-08-17 16:00:00', '2022-08-18 00:33:50');
INSERT INTO `notice` (`id`, `device`, `channel`, `title`, `content`, `link`, `notice_id`, `description`, `number`, `created_on`, `modified_on`) VALUES (00000000000000000020, 'router', 'jdrouter', '权益调整公告', '京东云路由插件公告', 'https://ybb.baidu.com/html/jdrouter.html', 0, '京东路由器公告', 0, '2022-08-26 22:36:00', '2022-08-26 14:35:56');
INSERT INTO `notice` (`id`, `device`, `channel`, `title`, `content`, `link`, `notice_id`, `description`, `number`, `created_on`, `modified_on`) VALUES (00000000000000000023, 'router', 'h3crouter', '常见问题QA', 'H3C路由插件公告', 'https://ybb.baidu.com/html/h3crouter.html', 100004, 'H3C路由器公告', 0, '0000-00-00 00:00:00', '2023-08-26 07:24:10');
INSERT INTO `notice` (`id`, `device`, `channel`, `title`, `content`, `link`, `notice_id`, `description`, `number`, `created_on`, `modified_on`) VALUES (00000000000000000024, 'router', 'zte', '常见问题QA', '中兴路由插件公告', 'https://ybb.baidu.com/html/zterouter.html', 1000005, 'https://ybb.baidu.com/html/zterouter.htm', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
