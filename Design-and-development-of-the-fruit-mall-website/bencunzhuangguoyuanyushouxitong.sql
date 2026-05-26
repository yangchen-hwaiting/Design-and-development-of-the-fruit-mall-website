/*
Navicat MySQL Data Transfer

Source Server         : phpstudy
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : bencunzhuangguoyuanyushouxitong

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2024-01-11 10:01:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收货地址';

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '收货人1', '17703786901', '地址1', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('2', '2', '收货人2', '17703786902', '地址2', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('3', '1', '收货人3', '17703786903', '地址3', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('4', '1', '收货人4', '17703786904', '地址4', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('5', '2', '收货人5', '17703786905', '地址5', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('6', '1', '收货人6', '17703786906', '地址6', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('7', '3', '收货人7', '17703786907', '地址7', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('8', '3', '收货人8', '17703786908', '地址8', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('9', '3', '收货人9', '17703786909', '地址9', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('10', '3', '收货人10', '17703786910', '地址10', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('11', '2', '收货人11', '17703786911', '地址11', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('12', '1', '收货人12', '17703786912', '地址12', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('13', '1', '收货人13', '17703786913', '地址13', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('14', '1', '收货人14', '17703786914', '地址14', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `address` VALUES ('15', '4', '张三', '15841012522', 'xxx', '2', '2024-01-11 09:56:37', '2024-01-11 09:56:36', '2024-01-11 09:56:37');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '轮播图1', '/upload/1704878301008.jpg');
INSERT INTO `config` VALUES ('2', '轮播图2', '/upload/1704878996037.jpg');
INSERT INTO `config` VALUES ('3', '轮播图3', '/upload/1704937693692.jpg');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='字典';

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', 'sex_types', '性别类型', '1', '男', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('2', 'sex_types', '性别类型', '2', '女', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('3', 'gonggao_types', '公告类型', '1', '新闻资讯', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('5', 'news_types', '水果类型', '1', '水果类型1', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('6', 'news_types', '水果类型', '2', '水果类型2', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('7', 'forum_state_types', '帖子状态', '1', '发帖', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('8', 'forum_state_types', '帖子状态', '2', '回帖', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('9', 'guoyuan_types', '果园类型', '1', '果园类型1', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('10', 'guoyuan_types', '果园类型', '2', '果园类型2', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('11', 'guoyuan_types', '果园类型', '3', '果园类型3', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('12', 'guoyuan_types', '果园类型', '4', '果园类型4', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('13', 'guoyuan_yuyue_yesno_types', '报名状态', '1', '待审核', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('14', 'guoyuan_yuyue_yesno_types', '报名状态', '2', '同意', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('15', 'guoyuan_yuyue_yesno_types', '报名状态', '3', '拒绝', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('16', 'guoshu_types', '果树类型', '1', '果树类型1', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('17', 'guoshu_types', '果树类型', '2', '果树类型2', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('18', 'guoshu_types', '果树类型', '3', '果树类型3', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('19', 'guoshu_types', '果树类型', '4', '果树类型4', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('20', 'guoshu_collection_types', '收藏表类型', '1', '收藏', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('21', 'guoshu_order_types', '订单类型', '101', '已认养', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('22', 'guoshu_order_types', '订单类型', '102', '已取消认养', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('23', 'guoshu_order_types', '订单类型', '103', '已同意认养', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('24', 'shuiguo_types', '水果类型', '1', '水果类型1', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('25', 'shuiguo_types', '水果类型', '2', '水果类型2', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('26', 'shuiguo_types', '水果类型', '3', '水果类型3', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('27', 'shuiguo_types', '水果类型', '4', '水果类型4', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('28', 'shuiguo_collection_types', '收藏表类型', '1', '收藏', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('29', 'shuiguo_order_types', '订单类型', '101', '已支付', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('30', 'shuiguo_order_types', '订单类型', '102', '已退款', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('31', 'shuiguo_order_types', '订单类型', '103', '已发货', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('32', 'shuiguo_order_types', '订单类型', '104', '已收货', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('34', 'isdefault_types', '是否默认地址', '1', '否', null, null, '2023-03-24 13:50:16');
INSERT INTO `dictionary` VALUES ('35', 'isdefault_types', '是否默认地址', '2', '是', null, null, '2023-03-24 13:50:16');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='论坛';

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('1', '帖子标题1', '1', null, '发布内容1', '376', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `forum` VALUES ('2', '帖子标题2', '2', null, '发布内容2', '263', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `forum` VALUES ('3', '帖子标题3', '2', null, '发布内容3', '6', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `forum` VALUES ('7', '帖子标题7', '3', null, '发布内容7', '278', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `forum` VALUES ('8', '帖子标题8', '3', null, '发布内容8', '417', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `forum` VALUES ('9', '帖子标题9', '1', null, '发布内容9', '207', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `forum` VALUES ('10', '帖子标题10', '1', null, '发布内容10', '309', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `forum` VALUES ('11', '帖子标题11', '2', null, '发布内容11', '267', '1', '2023-03-24 13:50:42', '2023-03-24 13:50:42', '2023-03-24 13:50:42');

-- ----------------------------
-- Table structure for gonggao
-- ----------------------------
DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='公告';

-- ----------------------------
-- Records of gonggao
-- ----------------------------
INSERT INTO `gonggao` VALUES ('5', '一个黄苹果“668万”——苹果新品种“烟金蜜”', '/upload/1704935993682.jpg', '1', '2024-01-11 09:20:01', '<p><span style=\"color: rgb(51, 51, 51);\">龙口市</span><a href=\"http://www.dddapple.com/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(182, 18, 18);\">南村果园</a><span style=\"color: rgb(51, 51, 51);\">果业有限公司董事长邵刚：它的成品率特别高，基本上成品率能达到80%以上，而且套袋不用摘袋，它的口味特别好，吃到嘴里有一种饮料的味道，微微的酸，纯纯的甜，果农种这个品种能够保持持续盈利。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;烟台市农科院苹果果业研究所副所长宋来庆：口感和品质方面，一点不比进口的维纳斯黄金差。我们这个品种选育的目的，主要实现一个晚熟黄色品种的进口替代，就是实现我们的品种国产化。</span></p><p class=\"ql-align-center\"><span style=\"color: rgb(51, 51, 51);\"><img src=\"http://www.dddapple.com/UploadFiles/FCK/2023-11/6383460051686284212462358.jpg\" alt=\"00300946965_5726eacd.jpg\"></span></p><p>&nbsp;&nbsp;&nbsp;烟金蜜是由烟台农科院以红露和光辉为亲本杂交育成。外观表现亮亮的金黄色，像蜜蜡一样的感觉。口感层次分明，像白砂糖一样纯纯的甜，外加一点很舒服的酸，像天然饮料的味道。</p><p>	&nbsp;果面干净无锈，色泽诱人。果肉黄色、酸甜爽口、香气浓郁，平均可溶性固形物含量17.5%&nbsp;，适度晚采，糖蜜果实在60%以上。新植幼树以腋花芽结果为主，早果丰产性好。果实10月上旬成熟，无落果现象。果个大，平均单果重245g,最大可达370g,盛果期亩产3500kg以上。</p><p class=\"ql-align-center\">	<img src=\"http://www.dddapple.com/UploadFiles/FCK/2023-11/6383460120188702326643720.jpg\" alt=\"04.jpg\" height=\"749\" width=\"1000\"></p><p><br></p>', '2024-01-11 09:20:01');
INSERT INTO `gonggao` VALUES ('6', '广西水果产量连续5年排名全国第一', '/upload/1704937434986.png', '1', '2024-01-11 09:44:03', '<p class=\"ql-align-justify\">	10月27日，记者从2023年“桂字号”秋冬水果产销对接活动媒体对接会上获悉，以“水果自由在广西，甜蜜飘香销全国”为主题的2023年“桂字号”秋冬水果产销对接活动将于近日全面启动，通过财政资金撬动社会资金投入，完善联农带农机制，巩固产业帮扶成果，开展品牌宣传、产品推介、互动交流等活动，把“桂字号”秋冬水果产销对接活动打造成为全国知名农产品营销品牌，进一步畅通“桂果”产供销一体化供应链，提升“桂字号”农业品牌影响力和市场竞争力，推动全区农业经济持续向好。</p><p class=\"ql-align-justify\">&nbsp;</p><p class=\"ql-align-center\">	<img src=\"http://www.gxmmgy.com/uploadfile/2023/1129/20231129091611627.png\"></p><p class=\"ql-align-center\">	武鸣沃柑</p><p>	&nbsp;</p><p class=\"ql-align-justify\">	自治区党委、政府高度重视水果产业发展，先后出台了《广西“10+3”现代特色农业产业高质量发展三年提升行动》《广西推进水果产业高质量发展实施方案》等一系列政策措施，持续推进水果产业健康发展。在规模种植上，2014年以来，全区水果每年以超过百万吨速度增长，平均每年增长200多万吨。2022年广西水果种植面积超2000万亩，产量在全国率先突破3000万吨，达3080万吨，连续5年排名全国第一；在产业发展上，柑橘、柿子、火龙果、百香果等4种水果种植面积和产量实现全国第一，香蕉、芒果、荔枝、龙眼等4种水果种植面积和产量位列全国第二；在科技成果上，成功研发推广柑橘树冠覆膜延迟采收、葡萄一年两收、火龙果补光、荔枝“光驱避”等技术，选育出脆蜜金橘、桂蕉9号、桂热芒3号、钦蜜9号、壮蜜05百香果、桂丰早龙眼等水果新品种；在品牌打造上，目前全区认定“桂字号”农业品牌503个，品牌价值4450亿元。2023年中国品牌价值区域品牌（地理标志）百强名单中，广西入选的14个品牌中有6个果品品牌。</p><p class=\"ql-align-justify\">&nbsp;</p><p class=\"ql-align-center\">	<img src=\"http://www.gxmmgy.com/uploadfile/2023/1129/20231129091633323.png\"></p><p><br></p>', '2024-01-11 09:44:03');
INSERT INTO `gonggao` VALUES ('7', '华中农大团队“正名”柑橘起源于中国南方', '/upload/1704937466749.jpg', '1', '2024-01-11 09:44:31', '<p class=\"ql-align-justify\">	10月2日，华中农业大学园艺林学学院徐强教授团队在《自然·遗传》杂志发表最新研究成果，通过对柑橘系谱野生种植资源的广泛研究，确认芸香科柑橘亚科柑橘属是中国南方起源的植物，并解析了果实风味变化的机理。</p><p>	</p><p class=\"ql-align-center\">	<strong style=\"color: rgb(64, 118, 0);\"><img src=\"http://www.gxmmgy.com/uploadfile/2023/1129/20231129090416356.jpg\"></strong></p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-justify\">	早在2018年前后，美国主导的团队在《自然》杂志上发表研究成果，提出柑橘起源于喜马拉雅东南麓。该学说传播很快，受到了主流学界的重视。但是徐强教授团队认为，该学说“值得怀疑”且“不精确”。</p><p>	&nbsp;</p><p class=\"ql-align-center\">	<img src=\"http://www.gxmmgy.com/uploadfile/2023/1129/20231129090518926.jpg\"></p><p><br></p>', '2024-01-11 09:44:31');
INSERT INTO `gonggao` VALUES ('8', '今年一季度广西农产品进出口额超164亿元 水果出口同比劲增', '/upload/1704937504170.png', '1', '2024-01-11 09:45:12', '<p>	据广西壮族自治区农业农村厅介绍，今年一季度，广西农产品进出口总额164.2亿元(人民币，下同)，同比增长52.3%。其中，水果出口额为8.4亿元，同比增长131.1%，“果盘子”飘香海外。	</p><p>	</p><p>	广西雨水丰沛，光照充足，南北横跨4个纬度，各类果树品种资源近300种，占中国果树种类的70%，是中国水果种植优势区域。	</p><p>	</p><p>	“广西积温高，品质好，早晚熟优势明显。我们的特色水果种类丰富，除苹果外，国内主栽的大宗水果在广西均有种植。”广西壮族自治区水果技术指导站负责人介绍，2022年广西园林水果产量突破3080万吨，水果总产量连续五年保持中国第一。	</p><p>	</p><p>	目前，广西柑橘产量已突破1800万吨，中国每3个柑橘就有1个产自广西。一季度，广西出口水果主要为柑橘、梨、葡萄、橙等品种，远销越南、泰国、阿联酋、吉尔吉斯斯坦等国。	</p><p>	</p><p>	为推动广西农产品走向国际市场，今年初，广西农业农村厅印发相关通知，联合南宁海关、广西商务厅等部门指导当地农业企业用好《区域全面经济伙伴关系协定》(RCEP)政策红利，助推企业开拓RCEP市场。	</p><p>	</p><p>	一季度，广西与RCEP成员国农产品贸易额达53.7亿元，同比增长45%。其中，与印度尼西亚、文莱等东盟国家贸易额显著上升。	</p><p>	</p><p>	今年以来，广西农业农村厅还组织了近百家农业企业赴越南、柬埔寨、老挝、文莱、阿联酋、意大利等国家开展经贸交流活动，达成一批农产品进出口贸易合作项目，签约贸易额近92亿元人民币。其中，在意大利国际果蔬展上，广西沃柑、火龙果等优势出口农产品受到众多贸易商的青睐。	</p><p>	</p><p>	广西农业农村厅对外交流合作处负责人表示，下一步当地将继续推动广西农产品走向国际市场，积极搭建农业国际经贸交流平台，助力广西农业企业抱团出海，不断提升广西农业国际影响力和知名度。</p>', '2024-01-11 09:45:12');
INSERT INTO `gonggao` VALUES ('9', '习近平：加快建设农业强国　推进农业农村现代化', '/upload/1704937531920.jpg', '1', '2024-01-11 09:45:39', '<p class=\"ql-align-justify\">	2022年12月23日至24日，中央农村工作会议在北京举行。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话。　新华社记者 饶爱民/摄</p><p class=\"ql-align-justify\">	&nbsp;</p><p class=\"ql-align-justify\">	这次中央农村工作会议的主要任务是：全面贯彻落实党的二十大精神，总结今年“三农”工作，研究部署明年工作，就加快建设农业强国进行战略部署。</p><p class=\"ql-align-justify\">&nbsp;</p><p class=\"ql-align-justify\">	党的二十大闭幕后，我第一次外出考察去了陕西延安、河南安阳看乡村振兴，一路思考在全面建设社会主义现代化国家新征程上如何加快建设农业强国、推进农业农村现代化。这次会议我来讲讲，就是表明党中央加强“三农”工作的鲜明态度，发出重农强农的强烈信号。下面，我就加快建设农业强国、加强“三农”工作讲几点意见。</p><p class=\"ql-align-justify\">&nbsp;</p><p class=\"ql-align-justify\">	<strong style=\"color: rgb(0, 0, 255);\">一、锚定建设农业强国目标，切实抓好农业农村工作</strong></p><p class=\"ql-align-justify\">	&nbsp;</p><p class=\"ql-align-justify\">	党的二十大在擘画全面建成社会主义现代化强国宏伟蓝图时，对农业农村工作进行了总体部署。概括地讲：未来5年“三农”工作要全面推进乡村振兴，到2035年基本实现农业现代化，到本世纪中叶建成农业强国。这是党中央着眼全面建成社会主义现代化强国作出的战略部署。强国必先强农，农强方能国强。没有农业强国就没有整个现代化强国；没有农业农村现代化，社会主义现代化就是不全面的。我们必须深刻领会党中央这一战略部署，把加快建设农业强国摆上建设社会主义现代化强国的重要位置。</p><p class=\"ql-align-justify\">	&nbsp;</p><p class=\"ql-align-justify\">	农业强国是社会主义现代化强国的根基。农业是基础，基础不牢大厦不稳。无论社会现代化程度有多高，14亿多人口的粮食和重要农产品稳定供给始终是头等大事。满足人民美好生活需要，离不开农业发展。全面建设社会主义现代化国家，出发点和落脚点是让人民生活越过越好。现代化越往前走、物质生活越丰富，人民群众越喜欢山清水秀的田园风光，农业除了保障粮食和重要农产品供给，其生态涵养、休闲观光、文化传承的功能就越能发挥积极作用。农业是近两亿人就业的产业，农村是近5亿农民常住的家园，只有把农业农村搞好了，广大农民安居乐业，他们才有充足的获得感、幸福感、安全感。实现高质量发展，也离不开农业发展。只有农业强了，农产品供给有保障，物价稳定、人心安定，经济大局才能稳住。拓展现代化发展空间，农业农村是大有可为的广阔天地。几亿农民整体迈入现代化，会释放巨大的创造动能和消费潜能，为经济社会发展注入强大动力。畅通工农城乡循环，是畅通国内经济大循环、增强我国经济韧性和战略纵深的重要方面。扩内需、稳增长、促发展，农业强国建设是重要的发力点和突破口。农业还是国家安全的基础。农业保的是生命安全、生存安全，是极端重要的国家安全。当今世界，百年未有之大变局加速演进，新冠疫情反复延宕，来自外部的打压遏制不断升级，各种不确定难预料因素明显增多。一旦农业出问题，饭碗被人拿住，看别人脸色吃饭，还谈什么现代化建设？只有农业强起来，粮食安全有完全保障，我们稳大局、应变局、开新局才有充足底气和战略主动。</p><p class=\"ql-align-justify\">	&nbsp;</p><p><br></p>', '2024-01-11 09:45:39');
INSERT INTO `gonggao` VALUES ('10', '瞭望 | 端稳全国“果盘子”', '/upload/1704937552268.jpg', '1', '2024-01-11 09:46:01', '<p class=\"ql-align-justify\">	雨水丰沛，光照充足，南北横跨4个纬度，有各类果树品种资源近300种……广西壮族自治区拥有发展水果产业的独特气候和地形区位条件。2022年，广西水果种植业产值突破1000亿元；园林水果产量突破3000万吨，同比增长10.1%，稳居全国首位。</p><p class=\"ql-align-justify\">	&nbsp;</p><p class=\"ql-align-justify\">	“粗略测算，广西水果一年的产量可让全国人民人均吃上40多斤水果，不仅是全国的‘果盘子’，而且是广西乡村振兴的支柱产业。”广西壮族自治区水果技术指导站副站长王举兵说。</p><p class=\"ql-align-justify\">	&nbsp;</p><p class=\"ql-align-justify\">	近年来，广西持续升级发展优质特色水果，形成千亿级水果产业集群。2022年，广西印发《广西推进水果产业高质量发展实施方案》，全力推进全产业链标准化、规范化、数据化，加强科技创新突破，助力产业提质升级，更好服务全国大市场。</p><p class=\"ql-align-center\">	&nbsp;</p><p class=\"ql-align-center\">	<img src=\"http://www.gxmmgy.com/uploadfile/2023/0524/20230524024518380.jpg\"></p><p class=\"ql-align-center\">	在广西柳州市柳江区里高镇万亩青花梨基地，农民采摘青花梨（2022年7月21日摄）&nbsp;&nbsp;黎寒池摄/本刊</p><p>	&nbsp;</p><p class=\"ql-align-justify\">	<strong>品牌力拓展市场</strong></p><p class=\"ql-align-justify\">	&nbsp;</p><p class=\"ql-align-justify\">	3月27日，一艘满载18吨沃柑的货轮从广西北部湾港钦州港码头出发驶向泰国。这是武鸣沃柑首次自主出口泰国，标志着武鸣沃柑品牌拓展海外市场又迈出重要一步。“今年前三个月公司已出口沃柑800吨，比去年同期增长约50%。”鸣鸣果园集团董事长纪素峰说。</p><p class=\"ql-align-justify\">	&nbsp;</p><p class=\"ql-align-justify\">	南宁市武鸣区是我国最大的沃柑种植基地，全区沃柑面积超46万亩，2022年12月至2023年4月的采收季预计总产量150万吨。而早在2012年武鸣首次引进沃柑品种时，当地就开始为沃柑的品牌建设和标准化方向发展谋篇布局。</p><p class=\"ql-align-justify\">	&nbsp;</p><p class=\"ql-align-justify\">	每颗沃柑拍42张照片，用时不到1秒……在位于南宁市武鸣区的鸣鸣果园集团采后分选中心，记者见到了这样的“黑科技”。一台台光电智能分选设备为每颗进场沃柑拍照筛选，通过果面、颜色、重量、果型等维度将果品分选为25个等级，再进行分类包装销售。</p><p><br></p>', '2024-01-11 09:46:01');

-- ----------------------------
-- Table structure for guoshu
-- ----------------------------
DROP TABLE IF EXISTS `guoshu`;
CREATE TABLE `guoshu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `guoyuan_id` int(11) DEFAULT NULL COMMENT '商家',
  `guoshu_name` varchar(200) DEFAULT NULL COMMENT '果树名称  Search111 ',
  `guoshu_uuid_number` varchar(200) DEFAULT NULL COMMENT '果树编号',
  `guoshu_photo` varchar(200) DEFAULT NULL COMMENT '果树照片',
  `guoshu_address` varchar(200) DEFAULT NULL COMMENT '果树地点',
  `guoshu_new_money` decimal(10,2) DEFAULT NULL COMMENT '果树认养费用 ',
  `guoshu_types` int(11) DEFAULT NULL COMMENT '果树类型 Search111',
  `guoshu_kucun_number` int(11) DEFAULT NULL COMMENT '果树库存',
  `guoshu_content` longtext COMMENT '果树介绍 ',
  `guoshu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='果树';

-- ----------------------------
-- Records of guoshu
-- ----------------------------
INSERT INTO `guoshu` VALUES ('1', '1', '果树名称1', '1679637042494', 'upload/guoshu1.jpg', '果树地点1', '347.83', '4', '101', '果树介绍1', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('2', '2', '果树名称2', '1679637042458', 'upload/guoshu2.jpg', '果树地点2', '437.78', '2', '102', '果树介绍2', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('3', '3', '果树名称3', '1679637042500', 'upload/guoshu3.jpg', '果树地点3', '456.70', '2', '103', '果树介绍3', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('4', '4', '果树名称4', '1679637042489', 'upload/guoshu4.jpg', '果树地点4', '33.51', '2', '104', '果树介绍4', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('5', '5', '果树名称5', '1679637042434', 'upload/guoshu5.jpg', '果树地点5', '479.59', '1', '105', '果树介绍5', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('6', '6', '果树名称6', '1679637042485', 'upload/guoshu6.jpg', '果树地点6', '284.07', '3', '106', '果树介绍6', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('7', '7', '果树名称7', '1679637042490', 'upload/guoshu7.jpg', '果树地点7', '268.70', '2', '107', '果树介绍7', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('8', '8', '果树名称8', '1679637042463', 'upload/guoshu8.jpg', '果树地点8', '248.11', '2', '108', '果树介绍8', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('9', '9', '果树名称9', '1679637042514', 'upload/guoshu9.jpg', '果树地点9', '409.16', '4', '109', '果树介绍9', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('10', '10', '果树名称10', '1679637042490', 'upload/guoshu10.jpg', '果树地点10', '422.15', '2', '1010', '果树介绍10', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('11', '11', '果树名称11', '1679637042510', 'upload/guoshu11.jpg', '果树地点11', '264.21', '3', '1011', '果树介绍11', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('12', '12', '果树名称12', '1679637042506', 'upload/guoshu12.jpg', '果树地点12', '271.52', '1', '1012', '果树介绍12', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('13', '13', '果树名称13', '1679637042464', 'upload/guoshu13.jpg', '果树地点13', '232.15', '1', '1012', '果树介绍13', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `guoshu` VALUES ('14', '14', '果树名称14', '1679637042504', 'upload/guoshu14.jpg', '果树地点14', '489.76', '4', '1014', '果树介绍14', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');

-- ----------------------------
-- Table structure for guoshu_collection
-- ----------------------------
DROP TABLE IF EXISTS `guoshu_collection`;
CREATE TABLE `guoshu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guoshu_id` int(11) DEFAULT NULL COMMENT '果树',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `guoshu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='果树收藏';

-- ----------------------------
-- Records of guoshu_collection
-- ----------------------------

-- ----------------------------
-- Table structure for guoshu_order
-- ----------------------------
DROP TABLE IF EXISTS `guoshu_order`;
CREATE TABLE `guoshu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guoshu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `guoshu_id` int(11) DEFAULT NULL COMMENT '果树',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `guoshu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `guoshu_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='果树订单';

-- ----------------------------
-- Records of guoshu_order
-- ----------------------------

-- ----------------------------
-- Table structure for guoyuan
-- ----------------------------
DROP TABLE IF EXISTS `guoyuan`;
CREATE TABLE `guoyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `guoyuan_name` varchar(200) DEFAULT NULL COMMENT '果园名称 Search111 ',
  `guoyuan_photo` varchar(200) DEFAULT NULL COMMENT '果园照片',
  `guoyuan_types` int(11) DEFAULT NULL COMMENT '果园类型 Search111',
  `guoyuan_address` varchar(200) DEFAULT NULL COMMENT '果园地点',
  `guoyuan_content` longtext COMMENT '果园介绍 ',
  `guoyuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='果园';

-- ----------------------------
-- Records of guoyuan
-- ----------------------------
INSERT INTO `guoyuan` VALUES ('1', '果园名称1', 'upload/guoyuan1.jpg', '3', '果园地点1', '果园介绍1', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('2', '果园名称2', 'upload/guoyuan2.jpg', '2', '果园地点2', '果园介绍2', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('3', '果园名称3', 'upload/guoyuan3.jpg', '4', '果园地点3', '果园介绍3', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('4', '果园名称4', 'upload/guoyuan4.jpg', '3', '果园地点4', '果园介绍4', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('5', '果园名称5', 'upload/guoyuan5.jpg', '2', '果园地点5', '果园介绍5', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('6', '果园名称6', 'upload/guoyuan6.jpg', '3', '果园地点6', '果园介绍6', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('7', '果园名称7', 'upload/guoyuan7.jpg', '1', '果园地点7', '果园介绍7', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('8', '果园名称8', 'upload/guoyuan8.jpg', '4', '果园地点8', '果园介绍8', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('9', '果园名称9', 'upload/guoyuan9.jpg', '2', '果园地点9', '果园介绍9', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('10', '果园名称10', 'upload/guoyuan10.jpg', '3', '果园地点10', '果园介绍10', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('11', '果园名称11', 'upload/guoyuan11.jpg', '4', '果园地点11', '果园介绍11', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('12', '果园名称12', 'upload/guoyuan12.jpg', '4', '果园地点12', '果园介绍12', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('13', '果园名称13', 'upload/guoyuan13.jpg', '3', '果园地点13', '果园介绍13', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('14', '果园名称14', 'upload/guoyuan14.jpg', '2', '果园地点14', '果园介绍14', '2', '2023-03-24 13:50:42');
INSERT INTO `guoyuan` VALUES ('15', '天奇果园', '/upload/1704877187303.jpeg', null, '蓟州区官庄镇联合村二队', '<p><span style=\"color: rgb(85, 83, 83); background-color: rgb(255, 255, 255);\">丰收节来了，十一正是金灿灿的一波丰收季节开始了，你的胃口和麻袋准备好了么！！！！！！！！大丰收啦！</span>	<span style=\"color: rgb(0, 176, 80); background-color: rgb(255, 255, 0);\">苹果，黑布林李子，雪花梨，中华寿桃、磨盘柿子，栗子，核桃，红果，山楂，地瓜、大枣、葡萄、冬瓜、小倭瓜、南瓜、茴香、香菜、茄子、西红柿、辣椒、青椒、豆角、油麦菜、生菜、大白菜、大白萝卜、心里美、樱桃萝卜:::</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 176, 80);\">:::</span>	<span style=\"color: rgb(85, 83, 83); background-color: rgb(255, 255, 255);\">::::: 硕果累累的金秋岁月里，天津天奇采摘园欢迎您！老朋友们，伴着中秋月圆，秋季果实累累，大丰收的时候来啦，还等什么，来吧！新朋友们，听说不如亲见，眼见不如咬到，吃过，玩过</span> <span style=\"color: rgb(85, 83, 83); background-color: rgb(255, 255, 255);\">，**让你念念想念，念念来！我们的位置，只要您搜索“中智农场”就能找到我们。我们距离“中智农场”300米。 我们距离天津盘山高速路口五分钟车程。</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 176, 80);\">具体位置地图导航即到。</span>	<span style=\"color: rgb(85, 83, 83); background-color: rgb(255, 255, 255);\">这里在盘山脚下，景色优美，民风朴实，直通景观道，临近盘山高速口，车程5分钟。景色娟丽，蓝天白云，道路畅通，极其适合自驾游。 采摘节欢迎各位客官前来游玩，采摘苹果，李子，雪花梨，桃子，栗子，核桃，红果，山楂，地瓜等等。 美食： 大磨盘柿子，晒着吃，做柿饼吃，吃脆柿子，做冰欺凌吃，怎么都是个美 喜欢吃富士苹果么，糖心苹果甜倒你的牙， 喜欢吃烤地瓜么，我们的红薯能考出甜浆哦，较喜欢了： 喜欢吃糖炒栗子么，我们的栗子不用加糖炒就是甜的，穿天然的甜美： 景点：盘山滑雪场、石趣园、万佛寺、独乐寺、白塔寺、九龙山、清东陵、八仙 山、梨木台、溶洞、黄崖关长城、白蛇谷、九龙潭、黑峪神秘谷等景点 正是秋高气爽十一黄金周，盘山天奇采摘节静候您的到来，我们这里临近盘山第二峰，卧女峰，这里有热情的农家，怪石嶙峋的山峰，潺潺的山间流水，是您休闲娱乐的好去处。 这里有纯天然无公害的苹果，绿油油的印度青（苹果梨），适合爷爷奶奶小盆友吃的，黄灿灿的黄香蕉苹果，有脆甜爽口的富士苹果，每一人都有你命定的果果在等待着你，每一种都适合你，走过路过，不要错过。 我们还有足够新鲜的果子，**无添加剂，无激素，纯天然的果实，接地气的游玩，欢迎您来采摘游玩。 无论是孩子的扩展训练的活动，还是寻找盘山特产回家走亲访友，这里都能满足您！</span></p>', '1', '2024-01-10 16:59:51');
INSERT INTO `guoyuan` VALUES ('16', '南村果园', '/upload/1704877490753.jpg', null, '龙口市南村', '<p class=\"ql-align-center\"><img src=\"http://www.dddapple.com/UploadFiles/FCK/2015-08/6357419477392935377206847.jpg\" alt=\"南村果园\" height=\"580\" width=\"960\"></p><p>龙口市南村果园果业有限公司成立于2003年5月8日，并于2008年成立烟台南村果园苹果专业合作社，公司专注高端富士苹果的发展。从无到有的开创了高端全红富士苹果和贴字艺术苹果的发展，从田间地头、冬闲开会的技术指导和有机肥的大量应用开始，保证每个苹果的表光、色泽、口感都是上乘的。南村果园在保证苹果质量和安全的基础上，力求农业生产与生态系统的健康和可持续发展。</p><p class=\"ql-align-center\"><img src=\"http://www.dddapple.com/UploadFiles/FCK/2015-08/6357419477375747878492460.jpg\" alt=\"南村果园\" height=\"145\" width=\"960\"></p><p class=\"ql-align-center\"><img src=\"http://www.dddapple.com/UploadFiles/FCK/2015-08/6357419560689810378030660.jpg\" alt=\"南村果园\" height=\"211\" width=\"960\"></p><p class=\"ql-align-center\">从品种选育开始中，保证苹果品质更优</p><p class=\"ql-align-center\">从根的研究开始，保证苹果质量更好</p><p class=\"ql-align-center\">从有机肥料栽培开始，保证苹果口味更美(纯)</p><p class=\"ql-align-center\">从有机肥原料选择开始，保证食品安全</p><p class=\"ql-align-center\">从科学的农业知识开始，保证苹果的综合质量</p><p class=\"ql-align-center\">从引进世界专业设备开始，保证苹果质量始终如一</p><p class=\"ql-align-center\">我们苹果的优点不是漂亮，关键是好吃!因为我们的苹果是使用大量的有机肥种植的健康、绿色无公害的苹果</p>', '1', '2024-01-10 17:05:24');
INSERT INTO `guoyuan` VALUES ('17', '鸣鸣果园', '/upload/1704877643493.jpeg', null, '南宁市东盟经济技术开发区安平路25号', '<p>	鸣鸣果园创建于2014年3月，目前已发展成为一家拥有超过10000亩种植基地、3 个具有国际先进水平的采后分选中心（南宁武鸣 2个、桂林荔浦 1个），以及14个经营实体的现代农业企业，逐步形成集育苗、种植、研发、技术咨询、示范教学、采后商品化、冷链物流、销售一体化的现代农业全产业链体系。</p><p>	打造中国果蔬领导品牌是鸣鸣果园的经营目标。公司依托中国科学院、中国柑橘研究所等国内各级科研机构技术力量，从国内外优良果蔬品种的选种育苗，绿色栽培和综合种养的有益实践，到绿色保鲜技术的应用，探寻新型产学研模式，搭建完善自身的技术体系，培育出好吃、营养、健康的优质产品，提供可体验和追溯的优质服务。</p><p>	鸣鸣果园全面实施良好农业规范，在广西率先同时取得了出境水果果园、出境水果包装厂注册登记，并通过了GAP良好农业规范和ISO9001质量管理体系、ISO22000食品安全管理体系认证。公司荣获“自治区级农业产业化重点龙头企业”、“广西扶贫龙头企业”等荣誉称号，并入选国家级星创天地、国家农业科技示范基地和国家高新技术企业。</p><p>	经过多年市场布局与品牌建设，鸣鸣果园旗下的果蔬渠道已遍布中国各地一二级果蔬市场和KA大卖场、水果连锁渠道，品牌沃柑畅销全国，并出口加拿大、越南、泰国等国家，成为中国沃柑领先品牌。鸣鸣果园将以“果蔬齐进，布局全 球”为中长期发展战略，积极拓展全球市场。</p><p>	鸣鸣果园注重信息技术在农业管理中的应用，以“用数据定义好水果”为理念，先后自主研发农事信息管理、供应链信息管理等系统，采集产业链中种植、加工、营销数据，逐步建立沃柑种植管理模型和供应链管理模型，借助数字资源进行规模果园及供应链的精细化与标准化管理，提升农业全产业链信息化。</p><p>	鸣鸣果园是一家富于社会责任感的企业。在全面推动乡村振兴的新时期， 在各生产基地所在地区的党委、政府领导下，将充分发挥产业龙头企业示范作用，以“龙头企业+标准化基地&amp;采后商品化处理中心+农户”的模式，践行农业高质量发展新理念，积极推动产业兴旺和乡村振兴。</p>', '1', '2024-01-10 17:07:48');

-- ----------------------------
-- Table structure for guoyuan_liuyan
-- ----------------------------
DROP TABLE IF EXISTS `guoyuan_liuyan`;
CREATE TABLE `guoyuan_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guoyuan_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `guoyuan_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='果园留言';

-- ----------------------------
-- Records of guoyuan_liuyan
-- ----------------------------

-- ----------------------------
-- Table structure for guoyuan_yuyue
-- ----------------------------
DROP TABLE IF EXISTS `guoyuan_yuyue`;
CREATE TABLE `guoyuan_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guoyuan_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `guoyuan_id` int(11) DEFAULT NULL COMMENT '果园',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `guoyuan_yuyue_text` longtext COMMENT '报名理由',
  `guoyuan_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `guoyuan_yuyue_yesno_text` longtext COMMENT '审核回复',
  `guoyuan_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `guoyuan_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='果园预约';

-- ----------------------------
-- Records of guoyuan_yuyue
-- ----------------------------
INSERT INTO `guoyuan_yuyue` VALUES ('1', '1704938102936', '17', '4', '   ', '1', null, null, '2024-01-11 09:54:44', '2024-01-11 09:55:03', '2024-01-11 09:55:03');
INSERT INTO `guoyuan_yuyue` VALUES ('2', '1704938107079', '16', '4', '  ', '1', null, null, '2024-01-11 09:55:04', '2024-01-11 09:55:07', '2024-01-11 09:55:07');
INSERT INTO `guoyuan_yuyue` VALUES ('3', '1704938111972', '15', '4', '  ', '1', null, null, '2024-01-11 09:55:09', '2024-01-11 09:55:12', '2024-01-11 09:55:12');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '水果名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '水果图片 ',
  `news_types` int(11) NOT NULL COMMENT '水果类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '水果发布时间 ',
  `news_content` longtext COMMENT '水果详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='水果资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '水果名称1', 'upload/news1.jpg', '1', '2023-03-24 13:50:42', '水果详情1', '2023-03-24 13:50:42');
INSERT INTO `news` VALUES ('2', '水果名称2', 'upload/news2.jpg', '1', '2023-03-24 13:50:42', '水果详情2', '2023-03-24 13:50:42');
INSERT INTO `news` VALUES ('3', '水果名称3', 'upload/news3.jpg', '1', '2023-03-24 13:50:42', '水果详情3', '2023-03-24 13:50:42');
INSERT INTO `news` VALUES ('4', '水果名称4', 'upload/news4.jpg', '1', '2023-03-24 13:50:42', '水果详情4', '2023-03-24 13:50:42');

-- ----------------------------
-- Table structure for shuiguo
-- ----------------------------
DROP TABLE IF EXISTS `shuiguo`;
CREATE TABLE `shuiguo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `guoyuan_id` int(11) DEFAULT NULL COMMENT '水果',
  `shuiguo_name` varchar(200) DEFAULT NULL COMMENT '水果名称  Search111 ',
  `shuiguo_uuid_number` varchar(200) DEFAULT NULL COMMENT '水果编号',
  `shuiguo_photo` varchar(200) DEFAULT NULL COMMENT '水果照片',
  `shuiguo_address` varchar(200) DEFAULT NULL COMMENT '水果地点',
  `shuiguo_new_money` decimal(10,2) DEFAULT NULL COMMENT '预售价 ',
  `shuiguo_types` int(11) DEFAULT NULL COMMENT '水果类型 Search111',
  `shuiguo_kucun_number` int(11) DEFAULT NULL COMMENT '水果库存',
  `shuiguo_content` longtext COMMENT '水果介绍 ',
  `shuiguo_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='水果预售';

-- ----------------------------
-- Records of shuiguo
-- ----------------------------
INSERT INTO `shuiguo` VALUES ('1', '1', '水果名称1', '1679637042506', 'upload/shuiguo1.jpg', '水果地点1', '322.75', '2', '101', '水果介绍1', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('2', '2', '水果名称2', '1679637042464', 'upload/shuiguo2.jpg', '水果地点2', '410.75', '2', '102', '水果介绍2', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('3', '3', '水果名称3', '1679637042494', 'upload/shuiguo3.jpg', '水果地点3', '193.50', '1', '103', '水果介绍3', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('4', '4', '水果名称4', '1679637042489', 'upload/shuiguo4.jpg', '水果地点4', '133.51', '4', '104', '水果介绍4', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('5', '5', '水果名称5', '1679637042541', 'upload/shuiguo5.jpg', '水果地点5', '42.09', '3', '105', '水果介绍5', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('6', '6', '水果名称6', '1679637042522', 'upload/shuiguo6.jpg', '水果地点6', '110.37', '1', '106', '水果介绍6', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('7', '7', '水果名称7', '1679637042451', 'upload/shuiguo7.jpg', '水果地点7', '295.07', '3', '107', '水果介绍7', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('8', '8', '水果名称8', '1679637042542', 'upload/shuiguo8.jpg', '水果地点8', '148.83', '2', '108', '水果介绍8', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('9', '9', '水果名称9', '1679637042447', 'upload/shuiguo9.jpg', '水果地点9', '232.52', '3', '109', '水果介绍9', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('10', '10', '水果名称10', '1679637042527', 'upload/shuiguo10.jpg', '水果地点10', '30.28', '2', '1010', '水果介绍10', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('11', '11', '水果名称11', '1679637042458', 'upload/shuiguo11.jpg', '水果地点11', '361.28', '3', '1011', '水果介绍11', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('12', '12', '水果名称12', '1679637042505', 'upload/shuiguo12.jpg', '水果地点12', '424.58', '4', '1012', '水果介绍12', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('13', '13', '水果名称13', '1679637042446', 'upload/shuiguo13.jpg', '水果地点13', '456.16', '3', '1013', '水果介绍13', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('14', '14', '水果名称14', '1679637042469', 'upload/shuiguo14.jpg', '水果地点14', '128.92', '2', '1011', '水果介绍14', '2', '2023-03-24 13:50:42', '2023-03-24 13:50:42');
INSERT INTO `shuiguo` VALUES ('15', '17', '沃柑', '1704877841307', '/upload/1704877868585.jpg', '', '99.00', '1', '998', '<p><strong>	</strong><strong style=\"color: rgb(0, 79, 57);\">· 全面实施生草栽培</strong>	</p><p>	<a href=\"http://www.gxmmgy.com/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">鸣鸣果园</a>实行机械化割草，全面实施生草栽培技术。生草栽培能有效保护土壤，提高土壤有机质、水分和营养元素的有效利用，有效调控土壤温度、湿度、减少病虫害。 鸣鸣果园的生草栽培得到行业专家和同行的认同并很快推广仿效。</p><p><strong>	</strong><strong style=\"color: rgb(0, 79, 57);\">· 广泛使用生物有机肥和生物制剂</strong>	</p><p>	植物也是有生命的。你善待它，它一定会以更好的果实回报你。所以，鸣鸣果园坚持绿色栽培，一直在各个基地大量使用花生麸、菜籽以及各类生物有机肥，出产的鲜果果皮好、果形漂亮，口感极佳，糖酸比28-35，化渣率高达100%。</p>', '1', '2024-01-10 17:12:21', '2024-01-10 17:12:21');
INSERT INTO `shuiguo` VALUES ('16', '16', '苹果红富士', '1704878041544', '/upload/1704878102007.jpg', '', '99.00', '1', '998', '<p><img src=\"https://img30.360buyimg.com/sku/jfs/t1/180527/28/26754/219024/6348fd18E86d08d91/f2a158c4f0417ec6.jpg\"></p>', '1', '2024-01-10 17:15:20', '2024-01-10 17:15:20');
INSERT INTO `shuiguo` VALUES ('17', '16', '甘肃天水花牛苹果', '1704878148865', '/upload/1704878176171.jpg', '', '99.00', '1', '998', '<p><img src=\"https://img30.360buyimg.com/sku/jfs/t1/6645/15/25539/224794/634786f4E73e420b8/68cdff5e68ed6cbf.jpg\"></p>', '1', '2024-01-10 17:16:45', '2024-01-10 17:16:45');

-- ----------------------------
-- Table structure for shuiguo_collection
-- ----------------------------
DROP TABLE IF EXISTS `shuiguo_collection`;
CREATE TABLE `shuiguo_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuiguo_id` int(11) DEFAULT NULL COMMENT '水果',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shuiguo_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='水果收藏';

-- ----------------------------
-- Records of shuiguo_collection
-- ----------------------------

-- ----------------------------
-- Table structure for shuiguo_order
-- ----------------------------
DROP TABLE IF EXISTS `shuiguo_order`;
CREATE TABLE `shuiguo_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuiguo_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shuiguo_id` int(11) DEFAULT NULL COMMENT '水果',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shuiguo_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `guoyuan_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `guoyuan_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shuiguo_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='水果预售订单';

-- ----------------------------
-- Records of shuiguo_order
-- ----------------------------
INSERT INTO `shuiguo_order` VALUES ('1', '1704938270745', '15', '17', '4', '1', '99.00', null, null, '101', '2024-01-11 09:57:51', '2024-01-11 09:57:51');
INSERT INTO `shuiguo_order` VALUES ('2', '1704938275574', '15', '16', '4', '1', '99.00', null, null, '101', '2024-01-11 09:57:56', '2024-01-11 09:57:56');
INSERT INTO `shuiguo_order` VALUES ('3', '1704938279156', '15', '15', '4', '1', '99.00', null, null, '101', '2024-01-11 09:57:59', '2024-01-11 09:57:59');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'a1', 'yonghu', '用户', 'kxo79pdzaeizat8oqwrh5usw382mnhj1', '2023-03-24 13:51:54', '2023-03-24 15:37:25');
INSERT INTO `token` VALUES ('2', '1', 'admin', 'users', '管理员', '00yowkp0jifeeo32gtkhj2ojc8k21ri2', '2023-03-24 13:54:10', '2024-01-11 10:12:25');
INSERT INTO `token` VALUES ('3', '4', '001', 'yonghu', '用户', 'p0x0fxf3ycee0u8g1qihcj5eqem8sn87', '2024-01-10 16:30:58', '2024-01-11 10:10:56');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin', '管理员', '2023-03-24 13:50:16');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('4', '001', '123456', '张锋', '15851063255', '123456201010232553', '/upload/1704875436401.jpg', '1', '999702.00', '15615123@qq.com', '2024-01-10 16:30:52');
INSERT INTO `yonghu` VALUES ('5', '002', '123456', '002', '15851052166', '132555200102023258', '/upload/1704937732398.jpg', '1', '99999.00', '15648623@qq.com', '2024-01-11 09:49:06');
INSERT INTO `yonghu` VALUES ('6', '003', '123456', '003', '19521063596', '123556200302020158', '/upload/1704937773797.jpg', '2', '99999.00', '1564563@qq.com', '2024-01-11 09:49:44');
