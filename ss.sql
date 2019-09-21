/*
 Navicat Premium Data Transfer

 Source Server         : 弥赛亚
 Source Server Type    : MySQL
 Source Server Version : 50561
 Source Host           : localhost:3306
 Source Schema         : ss

 Target Server Type    : MySQL
 Target Server Version : 50561
 File Encoding         : 65001

 Date: 06/12/2018 23:51:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for abouttxt
-- ----------------------------
DROP TABLE IF EXISTS `abouttxt`;
CREATE TABLE `abouttxt`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `auid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `autxt` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `auname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of abouttxt
-- ----------------------------
INSERT INTO `abouttxt` VALUES ('1', '1', '迦尔纳，是在《Fate/EXTRA CCC》中以Lancer的职介登场（后被吉娜可擅自改为Launcher）的Servent，但因主人能力不足导致参数下降，并因故失去了重要的武具。', '简介');
INSERT INTO `abouttxt` VALUES ('2', '1', '2', '制度');
INSERT INTO `abouttxt` VALUES ('3', '1', '3', '团队');
INSERT INTO `abouttxt` VALUES ('4', '1', '4', '架构');
INSERT INTO `abouttxt` VALUES ('5', '1', '5', '联系我们');

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `auid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `auname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `autxt` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES ('1', '1', '简介', '简介简介简介简介简介简介简介简介1');
INSERT INTO `aboutus` VALUES ('10', '2', '联系我们', '13500000000');
INSERT INTO `aboutus` VALUES ('2', '1', '制度', '制度制度制度制度制度制度制度制度1');
INSERT INTO `aboutus` VALUES ('3', '1', '团队', '团队团队团队团队团队团队团队团队1');
INSERT INTO `aboutus` VALUES ('4', '1', '架构', '架构架构架构架构架构架构架构架构1');
INSERT INTO `aboutus` VALUES ('5', '1', '联系我们', '13599999999');
INSERT INTO `aboutus` VALUES ('6', '2', '简介', '2222222222');
INSERT INTO `aboutus` VALUES ('7', '2', '制度', '22222222222222222222');
INSERT INTO `aboutus` VALUES ('8', '2', '团队', '21212121');
INSERT INTO `aboutus` VALUES ('9', '2', '架构', '2323232');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `companyid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `companyname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `boss` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `companytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `companyinfo` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `isOk` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `typeisOk` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `typeid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`companyid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '乌鲁克金融有限公司', '金闪闪', '金融贸易业', '乌鲁克金融有限公司最牛逼！乌鲁克金融有限公司最牛逼！乌鲁克金融有限公司最牛逼！乌鲁克金融有限公司最牛逼！', '1', '1', '1');
INSERT INTO `company` VALUES ('2', '奥兹曼埃及旅游有限公司', '拉二', '旅游业', '光辉奥兹曼有限公司才牛逼,乌鲁克金融有限公司就是个渣渣。光辉奥兹曼有限公司才牛逼,乌鲁克金融有限公司就是个渣渣。', '1', '1', '2');
INSERT INTO `company` VALUES ('3', '黄金剧院金融有限公司', '唔姆', '影视娱乐业', '黄金剧院金融有限公司，最豪华的公司。黄金剧院金融有限公司，最豪华的公司。黄金剧院金融有限公司，最豪华的公司。', '1', '1', '3');
INSERT INTO `company` VALUES ('4', '魔鬼筋肉凛公司', '库丘凛', '食品业', '魔鬼筋肉凛公司，假一赔百，欢迎合作。魔鬼筋肉凛公司，假一赔百，欢迎合作。魔鬼筋肉凛公司，假一赔百，欢迎合作。', '1', '1', '4');
INSERT INTO `company` VALUES ('5', '卫宫家的饭桌', '卫宫巨侠', '餐饮业', '卫宫家的饭桌是真滴牛皮', '2', '1', '5');
INSERT INTO `company` VALUES ('6', '咸鱼水货店', '大狗', '食品业', '买鱼啊，有不有人买鱼啊', '2', '1', '6');

-- ----------------------------
-- Table structure for cp
-- ----------------------------
DROP TABLE IF EXISTS `cp`;
CREATE TABLE `cp`  (
  `proid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `proimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `protitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `timelimit` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `proinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `protj` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `prolc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `callme` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `protype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `prostate` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `shnumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `shtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `bhreason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `protime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `rzmoney` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `companyid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `companysize` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `companytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `rzcycle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `typeid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`proid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cp
-- ----------------------------
INSERT INTO `cp` VALUES ('1', 'Pro1.jpg', '一号产品', '1天', 'balabalabala1', 'balabalabala2', 'balabalabala23', '13566666666', '贸易类', 'T', '1', '2018/11/17', '无', '金闪闪', '2018/11/17', '90000000', '1', '乌鲁克金融有限公司', '大型企业', '1', '长期', '1', '1');
INSERT INTO `cp` VALUES ('10', 'Pro10.jpg', '十号产品', '2天', 'balabalabala1', 'balabalabala22', 'balabalabala33', '13588888888', '农业类', 'T', '1', '2018/11/17', '无', '金闪闪', '2018/11/17', '50000000', '2', '乌鲁克金融有限公司', '大型企业', '1', '短期', '2', '2');
INSERT INTO `cp` VALUES ('11', 'Pro11.jpg', '十一号产品', '2天', 'balabalabala1', 'balabalabala2', 'balabalabala3', '13566666666', '娱乐类', 'T', '1', '2018/11/17', '无', '拉二', '2018/11/17', '90000000', '1', '光辉奥兹曼有限公司', '大型企业', '1', '长期', '2', '3');
INSERT INTO `cp` VALUES ('12', 'Pro3.jpg', '十二号产品', '3天', 'balabalabala1', 'balabalabala2', 'balabalabala3', '13577777777', '食品类', 'T', '1', '2018/11/17', '无', '唔姆', '2018/11/17', '1000000', '1', '黄金剧院金融有限公司', '大型企业', '1', '短期', '2', '4');
INSERT INTO `cp` VALUES ('13', 'Pro13.jpg', '十三号产品', '4天', 'balabalabala1', 'balabalabala2', 'balabalabala23', '13566666666', '贸易类', 'F', '2', '2018/11/17', '大佬钱太多了', '金闪闪', '2018/11/17', '90000000', '', '乌鲁克金融有限公司', '大型企业', '', '长期', '', '1');
INSERT INTO `cp` VALUES ('14', 'Pro14.jpg', '十四号产品', '2天', 'balabalabala1', 'balabalabala22', 'balabalabala33', '13588888888', '农业类', 'F', '2', '2018/11/17', '你钱没地方花了？', '拉二', '2018/11/17', '50000000', '', '光辉奥兹曼有限公司', '大型企业', '', '短期', '', '2');
INSERT INTO `cp` VALUES ('15', 'Pro15.jpg', '十五号产品', '2天', 'balabalabala1', 'balabalabala2', 'balabalabala3', '13566666666', '娱乐类', 'F', '2', '2018/11/17', '系统崩溃', '唔姆', '2018/11/17', '90000000', '', '黄金剧院金融有限公司', '大型企业', '', '长期', '', '3');
INSERT INTO `cp` VALUES ('16', 'Pro16.jpg', '十六号产品', '3天', 'balabalabala1', 'balabalabala2', 'balabalabala3', '13577777777', '食品类', 'F', '2', '2018/11/17', '企业不符合标准', '库丘凛', '2018/11/17', '1000000', '', '魔鬼筋肉凛公司', '小微企业', '', '短期', '', '4');
INSERT INTO `cp` VALUES ('17', 'Pro17.jpg', '十七号产品', '3天', 'balabalabala1', 'balabalabala32', 'balabalabala33', '13577777777', '影视类', 'F', '2', '2018/11/17', '我不喜欢', '金闪闪', '2018/11/17', '1000000', '', '乌鲁克金融有限公司', '大型企业', '', '短期', '', '6');
INSERT INTO `cp` VALUES ('18', 'Pro18.jpg', '十八号产品', '3天', 'balabalabala1', 'balabalabala72', 'balabalabala73', '13577777777', '金融类', 'F', '2', '2018/11/17', '你都亏本了啊', '唔姆', '2018/11/17', '666666666', '', '黄金剧院金融有限公司', '大型企业', '', '长期', '', '5');
INSERT INTO `cp` VALUES ('2', 'Pro2.jpg', '二号产品', '2天', 'balabalabala1', 'balabalabala2', 'balabalabala23', '13566666666', '贸易类', 'T', '1', '2018/11/17', '无', '拉二', '2018/11/17', '90000000', '2', '光辉奥兹曼有限公司', '大型企业', '1', '长期', '2', '1');
INSERT INTO `cp` VALUES ('3', 'Pro3.jpg', '三号产品', '3天', 'balabalabala1', 'balabalabala32', 'balabalabala33', '13577777777', '影视类', 'T', '1', '2018/11/17', '无', '唔姆', '2018/11/17', '1000000', '2', '黄金剧院金融有限公司', '大型企业', '2', '短期', '1', '6');
INSERT INTO `cp` VALUES ('4', 'Pro4.jpg', '四号产品', '4天', 'balabalabala1', 'balabalabala42', 'balabalabala43', '13588888888', '农业类', 'T', '1', '2018/11/17', '无', '库丘凛', '2018/11/17', '5000000', '1', '魔鬼筋肉凛公司', '小微企业', '1', '短期', '1', '2');
INSERT INTO `cp` VALUES ('5', 'Pro5jpg', '五号产品', '1天', 'balabalabala1', 'balabalabala52', 'balabalabala53', '13533333333', '娱乐类', 'T', '1', '2018/11/17', '无', '金闪闪', '2018/11/17', '9000000', '3', '乌鲁克金融有限公司', '大型企业', '2', '短期', '1', '3');
INSERT INTO `cp` VALUES ('6', 'Pro6.jpg', '六号产品', '2天', 'balabalabala1', 'balabalabala62', 'balabalabala63', '13566666666', '食品类', 'T', '1', '2018/11/17', '无', '拉二', '2018/11/17', '21212121', '3', '光辉奥兹曼有限公司', '大型企业', '2', '短期', '1', '4');
INSERT INTO `cp` VALUES ('7', 'Pro7.jpg', '七号产品', '3天', 'balabalabala1', 'balabalabala72', 'balabalabala73', '13577777777', '金融类', 'T', '1', '2018/11/17', '无', '唔姆', '2018/11/17', '666666666', '3', '黄金剧院金融有限公司', '大型企业', '2', '长期', '1', '5');
INSERT INTO `cp` VALUES ('8', 'Pro8.jpg', '八号产品', '4天', 'balabalabala1', 'balabalabala82', 'balabalabala83', '13588888888', '金融类', 'T', '1', '2018/11/17', '无', '库丘凛', '2018/11/17', '5000000', '2', '魔鬼筋肉凛公司', '小微企业', '2', '短期', '2', '5');
INSERT INTO `cp` VALUES ('9', 'Pro9.jpg', '九号产品', '4天', 'balabalabala1', 'balabalabala92', 'balabalabala93', '13588888888', '影视类', 'T', '1', '2018/11/17', '无', '库丘凛', '2018/11/17', '5000000', '3', '魔鬼筋肉凛公司', '小微企业', '2', '短期', '2', '6');

-- ----------------------------
-- Table structure for cpdj
-- ----------------------------
DROP TABLE IF EXISTS `cpdj`;
CREATE TABLE `cpdj`  (
  `duijieid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `userinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `proid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `clicktime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `clickstate` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`duijieid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cpdj
-- ----------------------------
INSERT INTO `cpdj` VALUES ('1', 'wumuwumu', '001', '2018/11/17', 'T');

-- ----------------------------
-- Table structure for fj
-- ----------------------------
DROP TABLE IF EXISTS `fj`;
CREATE TABLE `fj`  (
  `fjid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fjname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `fjfilename` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `fjhz` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `fjsize` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `fjurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `fjourl` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `fjtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `downloads` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `fjstate` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`fjid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fj
-- ----------------------------
INSERT INTO `fj` VALUES ('7f080f1990354a998b6648cf65a1a668', '1.jpg', '1.jpg', 'jpg', '10000000', 'upload/file/201812042886ce5e7d9a4af38f2a117e738a14b6.jpg', 'upload/file/201812042886ce5e7d9a4af38f2a117e738a14b6.jpg', '2018/12/04 23:48:48', '1.jpg', '1.jpg');

-- ----------------------------
-- Table structure for fjgx
-- ----------------------------
DROP TABLE IF EXISTS `fjgx`;
CREATE TABLE `fjgx`  (
  `fjgxid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fjid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `fjtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ufjid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `newsid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `fjgxtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ramarkinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `urlinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`fjgxid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fjgx
-- ----------------------------
INSERT INTO `fjgx` VALUES ('f7d7bec71e3245baa89420a1319f9b38', '7f080f1990354a998b6648cf65a1a668', NULL, NULL, 'a1f17652e8d44e1c8ad6fc7f20dc858a', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for newslm
-- ----------------------------
DROP TABLE IF EXISTS `newslm`;
CREATE TABLE `newslm`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lmid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `lmname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `lmtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `lmimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `urllink` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of newslm
-- ----------------------------
INSERT INTO `newslm` VALUES ('1', '1', '国际新闻', '2018/11/7', '新闻.jpg', '新闻栏目.com');
INSERT INTO `newslm` VALUES ('2', '1', '国内新闻', '2018/11/7', '新闻.jpg', '新闻栏目.com');
INSERT INTO `newslm` VALUES ('3', '1', '辖区新闻', '2018/11/7', '新闻.jpg', '新闻栏目.com');
INSERT INTO `newslm` VALUES ('4', '2', '国际新闻', '2018/11/7', '新闻.jpg', '新闻栏目.com');
INSERT INTO `newslm` VALUES ('5', '2', '国内新闻', '2018/11/7', '新闻.jpg', '新闻栏目.com');
INSERT INTO `newslm` VALUES ('6', '2', '辖区新闻', '2018/11/7', '新闻.jpg', '新闻栏目.com');
INSERT INTO `newslm` VALUES ('7', '3', '国际新闻', '2018/11/7', '新闻.jpg', '新闻栏目.com');
INSERT INTO `newslm` VALUES ('8', '3', '国内新闻', '2018/11/7', '新闻.jpg', '新闻栏目.com');
INSERT INTO `newslm` VALUES ('9', '3', '辖区新闻', '2018/11/7', '新闻.jpg', '新闻栏目.com');

-- ----------------------------
-- Table structure for newszx
-- ----------------------------
DROP TABLE IF EXISTS `newszx`;
CREATE TABLE `newszx`  (
  `newsid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `newstitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `newstime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `newstext` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `fjid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `zid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `lmid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `lookednum` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `newsgoods` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `commentnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`newsid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of newszx
-- ----------------------------
INSERT INTO `newszx` VALUES ('1', '这个盾牌居然是饭桌？！！！', '2018/11/7', '贞贞', 'balabalabala', '盾牌 or 饭桌.jpg', '1', '2', '999+', '10', '100');
INSERT INTO `newszx` VALUES ('2', '钱花不完事是什么感受？', '2018/11/7', '金闪闪', 'balabalabala', '走开，你们这些该死的钱.jpg', '1', '3', '999+', '10', '100');
INSERT INTO `newszx` VALUES ('3', '...这把枪你要吗？', '2018/11/7', '小太阳', 'balabalabala', '给弱鸡送枪.jpg', '1', '1', '999+', '10', '100');
INSERT INTO `newszx` VALUES ('4', '没龙玩个蛋啊？！！！', '2018/11/7', '飞哥', 'balabalabala', '懵逼三连.jpg', '1', '2', '999+', '10', '100');
INSERT INTO `newszx` VALUES ('5', '唔姆唔姆！！！', '2018/11/7', '唔姆', 'balabalabala', '唔姆唔姆.jpg', '1', '1', '999+', '10', '100');
INSERT INTO `newszx` VALUES ('6', '每天起床看金字塔', '2018/11/7', '拉二', 'balabalabala', '啊，好忧伤.jpg', '1', '2', '999+', '10', '100');
INSERT INTO `newszx` VALUES ('7', '齐格你在哪？好气啊', '2018/11/7', '远坂凛', 'balabalabala', '报道.jpg', '1', '2', '999+', '10', '100');
INSERT INTO `newszx` VALUES ('8', '近战法师肌肉凛', '2018/11/7', '呆毛王', 'balabalabala', '你老弟你怎么肥四.jpg', '1', '3', '999+', '10', '100');
INSERT INTO `newszx` VALUES ('9', '朕的目标，是星辰大海', '2018/11/28', '始皇', 'balabalabala', '星河舰队.gif', '1', '1', '999+', '10', '100');
INSERT INTO `newszx` VALUES ('a1f17652e8d44e1c8ad6fc7f20dc858a', 'asda', '啊实打实的', 'asda', NULL, NULL, '', '2', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'Altria', '13511111111', '18', '1');
INSERT INTO `students` VALUES ('2', 'Jeanned', '13511111111', '18', '1');
INSERT INTO `students` VALUES ('3', 'Gilgamesh', '13511111111', '18', '0');
INSERT INTO `students` VALUES ('4', 'Karna', '13511111111', '18', '0');
INSERT INTO `students` VALUES ('5', 'Siegfried', '13511111111', '18', '0');
INSERT INTO `students` VALUES ('6', 'Gawain', '13511111111', '18', '0');
INSERT INTO `students` VALUES ('7', 'Nero', '13511111111', '18', '1');
INSERT INTO `students` VALUES ('8', 'Ishtar', '13511111111', '18', '1');
INSERT INTO `students` VALUES ('9', 'Frank', '13511111111', '21', '0');

-- ----------------------------
-- Table structure for tsjy
-- ----------------------------
DROP TABLE IF EXISTS `tsjy`;
CREATE TABLE `tsjy`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `yOn` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `xinyong` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tstext` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tsjy
-- ----------------------------
INSERT INTO `tsjy` VALUES ('1', '满意', '信用良好', '我钱哪？？？');
INSERT INTO `tsjy` VALUES ('4b57ceeaefff4f16aa6166375b30cc9f', '满意', '良好', '111111111111111111');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `upjone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `utypeid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `qiyeid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ujifen` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ufjid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ufj` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `loginid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '呆毛王', '123456', '13511111111', 'root1', '001', '999+', 'SSS01', 'SSS01F01', '001');
INSERT INTO `user` VALUES ('10', 'asd', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('2', '贞德', '123456', '13522222222', 'root1', '002', '999+', 'SSS02', 'SSS01F02', '002');
INSERT INTO `user` VALUES ('3', '金闪闪', '123456', '13533333333', 'root2', '003', '999+', 'SSS03', 'SSS01F03', '003');
INSERT INTO `user` VALUES ('4', '小太阳', '123456', '13544444444', 'root1', '004', '999+', 'SSS04', 'SSS01F04', '004');
INSERT INTO `user` VALUES ('5', '飞哥', '123456', '13555555555', 'root1', '005', '999+', 'SSS05', 'SSS01F05', '005');
INSERT INTO `user` VALUES ('6', '拉二', '123456', '13566666666', 'root2', '006', '999+', 'SSS06', 'SSS01F06', '006');
INSERT INTO `user` VALUES ('7', '唔姆', '123456', '13577777777', 'root2', '007', '999+', 'SSS07', 'SSS01F07', '007');
INSERT INTO `user` VALUES ('8', '库丘凛', '123456', '13588888888', 'root2', '008', '999+', 'SSS08', 'SSS01F08', '008');
INSERT INTO `user` VALUES ('9', '政哥哥', '123456', '13599999999', 'root3', '009', '999+', 'SSS09', 'SSS01F09', '009');

-- ----------------------------
-- Table structure for userhy
-- ----------------------------
DROP TABLE IF EXISTS `userhy`;
CREATE TABLE `userhy`  (
  `hyid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `hyname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `hystate` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tophy` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`hyid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userhy
-- ----------------------------
INSERT INTO `userhy` VALUES ('001', 'Hy001', 'F', 'Valhalla');
INSERT INTO `userhy` VALUES ('002', 'Hy002', 'T', 'Valhalla');
INSERT INTO `userhy` VALUES ('003', 'Hy003', 'T', 'Valhalla');
INSERT INTO `userhy` VALUES ('004', 'Hy004', 'T', 'Valhalla');
INSERT INTO `userhy` VALUES ('005', 'Hy005', 'T', 'Valhalla');
INSERT INTO `userhy` VALUES ('006', 'Hy006', 'T', 'Valhalla');
INSERT INTO `userhy` VALUES ('007', 'Hy007', 'T', 'Valhalla');
INSERT INTO `userhy` VALUES ('008', 'Hy008', 'T', 'Valhalla');

-- ----------------------------
-- Table structure for zczt
-- ----------------------------
DROP TABLE IF EXISTS `zczt`;
CREATE TABLE `zczt`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `zid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `typeid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `zname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zczt
-- ----------------------------
INSERT INTO `zczt` VALUES ('1', '1', '1', '所有');
INSERT INTO `zczt` VALUES ('2', '1', '2', '我的');
INSERT INTO `zczt` VALUES ('3', '3', '1', '所有');
INSERT INTO `zczt` VALUES ('4', '3', '2', '我的');

SET FOREIGN_KEY_CHECKS = 1;
