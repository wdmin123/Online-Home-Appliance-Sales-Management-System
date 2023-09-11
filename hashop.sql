/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : hashop

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 11/09/2023 15:26:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image1` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image2` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `intro` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `type_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_type_id_idx`(`type_id`) USING BTREE,
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (2, 'TCL 50V8E 50英寸电视', '/picture/1-2-1.jpg', '/picture/1-2-2.jpg', '/picture/1-2-3.jpg', 1399, '品牌：TCL 品牌类型：国产品牌 电视类型：HDR,智能电视,4K超高清电视 屏幕尺寸：50英寸 推荐观看距离：2.5m-3m（46-55英寸）能效等级：四级能效 语音控制：支持 网络连接方式：有线+无线 整机质保年限：1年', 10, 1);
INSERT INTO `goods` VALUES (3, '海信电视 85E3H 85英寸电视', '/picture/1-3-1.jpg', '/picture/1-3-2.jpg', '/picture/1-3-3.jpg', 5499, '品牌：海信(Hisense) 品牌类型：国产品牌 电视类型：智能电视,4K超高清电视,全面屏电视,智慧屏,HDR 屏幕尺寸：85英寸 推荐观看距离：3.5m以上（≥65英寸） 能效等级：三级能效 语音控制：支持 网络连接方式：有线+无线 整机质保年限：1年', 10, 1);
INSERT INTO `goods` VALUES (4, '索尼(SONY)XR-85X90K 85英寸电视', '/picture/1-4-1.jpg', '/picture/1-4-2.jpg', '/picture/1-4-3.jpg', 13799, '品牌：索尼(SONY) 品牌类型：合资品牌 电视类型：HDR,全面屏电视,游戏电视,智能电视,4K超高清电视 屏幕尺寸：85英寸 推荐观看距离：3.5m以上（≥65英寸） 能效等级：三级能效 语音控制：支持 网络连接方式：有线+无线 整机质保年限：1年', 10, 1);
INSERT INTO `goods` VALUES (5, '创维电视 85A5 Pro电视', '/picture/1-5-1.jpg', '/picture/1-5-2.jpg', '/picture/1-5-3.jpg', 4999, '品牌：创维(Skyworth) 品牌类型：国产品牌 电视类型：HDR,智慧屏', 10, 1);
INSERT INTO `goods` VALUES (6, '小米电视Redmi X86电视', '/picture/1-6-1.jpg', '/picture/1-6-2.jpg', '/picture/1-6-3.jpg', 5299, '品牌：小米(mi) 品牌类型：国产品牌 电视类型：全面屏电视,4K超高清电视,智能电视', 10, 1);
INSERT INTO `goods` VALUES (7, '小米电视98英寸电视', '/picture/1-7-1.jpg', '/picture/1-7-2.jpg', '/picture/1-7-3.jpg', 15999, '品牌：小米(mi) 品牌类型：国产品牌 电视类型：4K超高清电视,HDR 屏幕尺寸：98英寸', 10, 1);
INSERT INTO `goods` VALUES (8, '创维(SKYWORTH)85A5电视', '/picture/1-8-1.jpg', '/picture/1-8-2.jpg', '/picture/1-8-3.jpg', 7999, '品牌：创维(Skyworth) 品牌类型：国产品牌 电视类型：全面屏电视 屏幕尺寸：85英寸 推荐观看距离：3.5m以上（≥65英寸） 能效等级：三级能效 语音控制：支持 网络连接方式：无线 整机质保年限：1年', 10, 1);
INSERT INTO `goods` VALUES (9, '三星电视 85英寸电视', '/picture/1-9-1.jpg', '/picture/1-9-2.jpg', '/picture/1-9-3.jpg', 18999, '品牌：三星(SAMSUNG) 品牌类型：合资品牌 电视类型：智能电视,4K超高清电视,HDR,量子点电视,全面屏电视 屏幕尺寸：85英寸 推荐观看距离：3.5m以上（≥65英寸）能效等级：三级能效 语音控制：支持 网络连接方式：有线+无线', 10, 1);
INSERT INTO `goods` VALUES (10, '康佳KKTV 98英寸电视', '/picture/1-10-1.jpg', '/picture/1-10-2.jpg', '/picture/1-10-3.jpg', 10999, '品牌：康佳(KONKA) 品牌类型：国产品牌 电视类型：全面屏电视,4K超高清电视,智能电视游戏电视,智慧屏,HDR 屏幕尺寸：98英寸 推荐观看距离：3.5m以上（≥65英寸） 能效等级：三级能效 语音控制：支持 网络连接方式：有线+无线 整机质保年限：1年', 10, 1);
INSERT INTO `goods` VALUES (13, '美的单开门冰箱', '/picture/2-13-1.jpg', '/picture/2-13-2.jpg', '/picture/2-13-3.jpg', 1199, '美的(Midea)93升 单门小冰箱 灵巧小型 节能安静 冷藏家用宿舍办公室冰箱 租房神器 BC-93MF', 10, 2);
INSERT INTO `goods` VALUES (14, '海尔单开门冰箱', '/picture/2-14-1.jpg', '/picture/2-14-2.jpg', '/picture/2-14-3.jpg', 849, '海尔(Haier)93升 单门冰箱 一级能耗 全宽微冻室 电冰箱 小冰箱BC-93TMPF', 10, 2);
INSERT INTO `goods` VALUES (15, '海尔小型双门冰箱', '/picture/2-15-1.jpg', '/picture/2-15-2.jpg', '/picture/2-15-3.jpg', 999, '海尔(Haier) 118升 小冰箱家用 宿舍租房迷你小型双门小冰箱直冷 电冰箱两门 冷冻冷藏BCD-118TMPA', 10, 2);
INSERT INTO `goods` VALUES (16, '志高小型双门冰箱', '/picture/2-16-1.jpg', '/picture/2-16-2.jpg', '/picture/2-16-3.jpg', 548, '志高(CHIGO)BCD-98A168L 小型双门迷你小冰箱 家用双开门电冰箱 节能两门冰箱小闪亮银直冷', 10, 2);
INSERT INTO `goods` VALUES (17, '美菱双开门冰箱', '/picture/2-17-1.jpg', '/picture/2-17-2.jpg', '/picture/2-17-3.jpg', 2799, '[离子净]美菱(MELING) 632升对开门冰箱 一级能效变频风冷无霜低噪嵌入家用双开门电冰箱BCD-632WPUCX', 10, 2);
INSERT INTO `goods` VALUES (18, '西门子双开门冰箱', '/picture/2-18-1.jpg', '/picture/2-18-2.jpg', '/picture/2-18-3.jpg', 9999, '[一级节能]西门子 630升 对开门冰箱 家用大容量双开门电冰箱 风冷无霜 双循环不串味 变频节能 KA98NV143C', 10, 2);
INSERT INTO `goods` VALUES (19, '美的双开门冰箱', '/picture/2-19-1.jpg', '/picture/2-19-2.jpg', '/picture/2-19-3.jpg', 2699, '美的(Midea)470L对开门冰箱一级能效双变频净味抑菌智能WIFI风冷无霜家用大容量BCD-470WKPZM(E)', 10, 2);
INSERT INTO `goods` VALUES (20, '海尔双开门冰箱', '/picture/2-20-1.jpg', '/picture/2-20-2.jpg', '/picture/2-20-3.jpg', 3599, '海尔(haier)对开门双门冰箱515升新一级双变频风冷无霜超薄机身巨能冻265升巨能冻电冰箱节能净味杀菌', 10, 2);
INSERT INTO `goods` VALUES (21, '容声十字对开门冰箱', '/picture/2-21-1.jpg', '/picture/2-21-2.jpg', '/picture/2-21-3.jpg', 2999, '容声(Ronshen)465升多门四门对开门十字电冰箱家用墨韵灰外观 干湿分储三档变温BCD-465WD18FP', 10, 2);
INSERT INTO `goods` VALUES (22, '美的十字对开门冰箱', '/picture/2-22-1.jpg', '/picture/2-22-2.jpg', '/picture/2-22-3.jpg', 3099, '美的(Midea)465升十字对开门家用冰箱风冷无霜一级能效智能操控变频节能BCD-465WTPZM(E)', 10, 2);
INSERT INTO `goods` VALUES (23, '海尔多开门冰箱', '/picture/2-23-1.jpg', '/picture/2-23-2.jpg', '/picture/2-23-3.jpg', 5999, '海尔(haier)410零距离自由嵌入式双循环一级能效双变频净味除菌风冷无霜三档彩晶冰箱智能WIFI底部散热', 10, 2);
INSERT INTO `goods` VALUES (24, '美的多开门冰箱', '/picture/2-24-1.jpg', '/picture/2-24-2.jpg', '/picture/2-24-3.jpg', 2699, '美的(Midea)325升 多门电冰箱 双变频节能一级能效 风冷无霜 PT净味家用省电BCD-325WFPM(E)', 10, 2);
INSERT INTO `goods` VALUES (25, '扬子全自动洗衣机', '/picture/3-25-1.jpg', '/picture/3-25-2.jpg', '/picture/3-25-3.jpg', 538, '品牌： 扬子 商品名称：扬子10KG全自动洗衣机家用小型宿舍租房 一键洗脱智能遥控 蓝光洗护大容量波轮洗脱一体机 8KG智能风干+蓝光洗涤防缠绕商品编号：10025355348721店铺： 扬子冰箱洗衣机旗舰店商品毛重：28.0kg商品产地：中国大陆排水方式：下排水能效等级：三级能效变频/定频：定频宽度：55.1-60cm类型：波轮高度：90cm以上洗涤容量：10-20kg深度：55.1-60cm', 10, 3);
INSERT INTO `goods` VALUES (26, '创维滚筒洗衣机', '/picture/3-26-1.jpg', '/picture/3-26-2.jpg', '/picture/3-26-3.jpg', 1099, '品牌： 创维（Skyworth）商品名称：创维XQG80-B15MC商品编号：100002220113商品毛重：57.0kg商品产地：中国大陆能效等级：一级能效变频/定频：变频类型：滚筒高度：80.1-85cm色系：银色系宽度：55.1-60cm洗涤容量：8kg用户优选：除菌除螨，除菌排水方式：上排水深度：50.1-55cm', 10, 3);
INSERT INTO `goods` VALUES (27, '德姆勒洗衣机', '/picture/3-27-1.jpg', '/picture/3-27-2.jpg', '/picture/3-27-3.jpg', 799, '品牌： 德姆勒（DEMULLER）商品名称：德姆勒 洗衣机 母婴儿童全自动波轮高温煮洗 迷你小型宝宝妈内衣专用洗衣机除螨杀菌 桶自洁家用洗脱一体 【升级款】4.8KG高温煮洗+强力风干 象牙白商品编号：10044046543529店铺： 德姆勒冰箱旗舰店商品毛重：28.0kg排水方式：下排水能效等级：三级能效变频/定频：定频类型：迷你洗衣机洗涤容量：5kg及以下', 10, 3);
INSERT INTO `goods` VALUES (28, '奥克斯全自动波轮洗衣机', '/picture/3-28-1.jpg', '/picture/3-28-2.jpg', '/picture/3-28-3.jpg', 488, '品牌： 奥克斯（AUX）商品名称：奥克斯（AUX）HB55Q80-A1918T商品编号：10037375934695店铺： 奥克斯冰箱洗衣机旗舰店商品毛重：29.0kg能效等级：三级能效变频/定频：定频类型：波轮高度：85.1-90cm色系：灰色系宽度：50-55cm洗涤容量：5kg及以下排水方式：下排水深度：50.1cm以下', 10, 3);
INSERT INTO `goods` VALUES (29, '松下滚筒洗衣机', '/picture/3-29-1.jpg', '/picture/3-29-2.jpg', '/picture/3-29-3.jpg', 3899, '品牌： 松下（Panasonic）商品名称：松下(Panasonic)滚筒洗衣机带烘干10公斤除螨高温洗烘干一体变频全自动家用大容量商品编号：69637623815店铺： 松下冰箱洗衣机旗舰店商品毛重：73.0kg能效等级：一级能效变频/定频：变频类型：洗烘一体高度：85.1-90cm色系：白色系宽度：55.1-60cm洗涤容量：10-20kg排水方式：上排水深度：55.1-60cm', 10, 3);
INSERT INTO `goods` VALUES (30, '申花洗衣机全自动', '/picture/3-30-1.jpg', '/picture/3-30-2.jpg', '/picture/3-30-3.jpg', 418, '品牌： 申花（SHENHUA）商品名称：申花（SHENHUA）洗衣机全自动 家用小型智能波轮 蓝光健康洗桶风干一键快洗 出租房宿舍洗脱一体 6公斤【健康蓝光洗+智能桶风干+咖啡金】商品编号：10043539956554店铺： 申花冰箱洗衣机空调旗舰店商品毛重：26.0kg商品产地：中国大陆能效等级：二级能效变频/定频：定频类型：波轮高度：75.1-80cm排水方式：下排水宽度：50cm以下抗菌类型：银离子除菌洗涤容量：6kg色系：金色系深度：50.1cm以下', 10, 3);
INSERT INTO `goods` VALUES (31, '海尔超薄款滚筒洗衣机', '/picture/3-31-1.jpg', '/picture/3-31-2.jpg', '/picture/3-31-3.jpg', 3099, '品牌： 海尔（Haier）商品名称：海尔（Haier）纤美 8公斤商品编号：10030183093713店铺： 海尔冰箱洗衣机百诚专卖店商品毛重：55.5kg能效等级：一级能效变频/定频：变频类型：滚筒高度：80.1-85cm排水方式：上排水宽度：55.1-60cm洗涤容量：8kg色系：银色系深度：50.1cm以下', 10, 3);
INSERT INTO `goods` VALUES (32, '夏新洗衣机', '/picture/3-32-1.jpg', '/picture/3-32-2.jpg', '/picture/3-32-3.jpg', 389, '品牌： 夏新（Amoi）商品名称：夏新（Amoi）洗衣机全自动小型波轮 健康蓝光洗智能风干 家用宿舍洗脱一体机 桶自洁节能轻音 3.8公斤单人使用【蓝光洗护+智能风干+强力电机】商品编号：10059516152105店铺： 夏新冰箱旗舰店商品毛重：18.0kg商品产地：中国大陆排水方式：下排水能效等级：三级能效变频/定频：定频类型：波轮洗涤容量：5kg及以下', 10, 3);
INSERT INTO `goods` VALUES (33, '樱花全自动洗衣机', '/picture/3-33-1.jpg', '/picture/3-33-2.jpg', '/picture/3-33-3.jpg', 378, '品牌： 樱花（SAKURA）商品名称：樱花（SAKURA）全自动洗衣机小型家用宿舍租房大容量智能风干波轮洗脱一体 3.5KG标准款商品编号：10060061594089店铺： 樱花冰箱洗衣机旗舰店商品毛重：20.0kg商品产地：中国大陆排水方式：下排水能效等级：三级能效变频/定频：定频类型：波轮洗涤容量：5kg及以下', 10, 3);
INSERT INTO `goods` VALUES (34, '海信滚筒洗衣机', '/picture/3-34-1.jpg', '/picture/3-34-2.jpg', '/picture/3-34-3.jpg', 1649, '品牌： 海信（Hisense）商品名称：海信（Hisense）HG90DG12F商品编号：10044354030757商品毛重：65.0kg排水方式：上排水能效等级：一级能效变频/定频：变频洗涤容量：9kg类型：滚筒', 10, 3);
INSERT INTO `goods` VALUES (35, '小天鹅自动滚筒洗衣机', '/picture/3-35-1.jpg', '/picture/3-35-2.jpg', '/picture/3-35-3.jpg', 2099, '品牌： 小天鹅（LittleSwan）商品名称：小天鹅（LittleSwan）TG100PURE商品编号：10029444946834店铺： 小天鹅冰箱洗衣机旗舰店商品毛重：70.0kg排水方式：上排水能效等级：一级能效变频/定频：变频宽度：55.1-60cm类型：滚筒高度：80.1-85cm洗涤容量：10-20kg深度：55.1-60cm', 10, 3);
INSERT INTO `goods` VALUES (36, '西门子洗衣机滚筒', '/picture/3-36-1.jpg', '/picture/3-36-2.jpg', '/picture/3-36-3.jpg', 3799, '品牌： 西门子（SIEMENS）商品名称：西门子（SIEMENS）WM12P2692W商品编号：10056374987502店铺： 西门子家电冰箱洗衣机旗舰店商品毛重：79.0kg货号：XMZ04030075排水方式：上排水能效等级：一级能效变频/定频：变频宽度：55.1-60cm洗涤容量：10-20kg高度：80.1-85cm类型：滚筒深度：55.1-60cm', 10, 3);
INSERT INTO `goods` VALUES (37, '格力挂壁式空调', '/picture/4-37-1.jpg', '/picture/4-37-2.jpg', '/picture/4-37-3.jpg', 2899, '云佳新能效大1匹变频空调挂机 KFR-26GW/NhGc1B 冷暖家用低音 新一级能效', 10, 4);
INSERT INTO `goods` VALUES (38, '海尔挂壁式空调', '/picture/4-38-1.jpg', '/picture/4-38-2.jpg', '/picture/4-38-3.jpg', 2399, '海尔(Haier)静悦 1.5匹 变频 新能效 卧室冷暖空调挂机 智能 自清洁 KFR-35GW/02KBB83U1', 10, 4);
INSERT INTO `goods` VALUES (39, 'TCL立柜式空调', '/picture/4-39-1.jpg', '/picture/4-39-2.jpg', '/picture/4-39-3.jpg', 4899, 'TCL空调 大3匹 智净风 新一级变频冷暖 空调立式 健康净离子全域除菌自清洁 KFR-72LW/JV2Ea+B1', 10, 4);
INSERT INTO `goods` VALUES (40, '格力立柜式空调', '/picture/4-40-1.jpg', '/picture/4-40-2.jpg', '/picture/4-40-3.jpg', 6199, '云逸-Ⅱ新能效3匹变频冷暖柜机空调KFR-72LW/NhGk3BAs 家用冷暖低音 新三级能效', 10, 4);
INSERT INTO `goods` VALUES (41, '美的家用中央空调', '/picture/4-41-1.jpg', '/picture/4-41-2.jpg', '/picture/4-41-3.jpg', 5499, 'Midea/美的KFR-35T2W/B3DN1-LX(1)Ⅲ全直流变频风管机一拖一乐享三代客厅1.5匹美的家用中央空调', 10, 4);
INSERT INTO `goods` VALUES (42, '松下中央空调', '/picture/4-42-1.jpg', '/picture/4-42-2.jpg', '/picture/4-42-3.jpg', 7299, '松下(Panasonic)1.5匹一级能效变频冷暖纳诺怡X净化除菌除味中央空调一拖一风管机E12D0A09BW包基础安装', 10, 4);
INSERT INTO `goods` VALUES (43, '美的移动空调', '/picture/4-43-1.jpg', '/picture/4-43-2.jpg', '/picture/4-43-3.jpg', 1298, '美的(Midea) 家用租房智能移动空调KY-15/N7Y-PHA小1匹家用单制冷便携式小型室内可移动式空调一体机免排水', 10, 4);
INSERT INTO `goods` VALUES (44, '格力移动空调', '/picture/4-44-1.jpg', '/picture/4-44-2.jpg', '/picture/4-44-3.jpg', 3599, '格力(GREE)移动空调大2p/匹单冷带WIFI款家用智能除湿一体便携式免安装空调KY-40/NALA3A', 10, 4);
INSERT INTO `goods` VALUES (45, '美的空调天花机', '/picture/4-45-1.jpg', '/picture/4-45-2.jpg', '/picture/4-45-3.jpg', 10399, '美的(Midea)大3匹变频冷暖无风感中央空调天花机吸顶吊顶式嵌入式商用KFR-72QW/BP3DN8Y-D(2)-W', 10, 4);
INSERT INTO `goods` VALUES (46, '统帅空调天花机', '/picture/4-46-1.jpg', '/picture/4-46-2.jpg', '/picture/4-46-3.jpg', 6399, '统帅 (Leader) 海尔出品中央空调3匹吸顶空调天花机嵌机商用家用嵌入式天井机KFRd-72QW/61BBH13ST', 10, 4);
INSERT INTO `goods` VALUES (47, '美的商用柜机', '/picture/4-47-1.jpg', '/picture/4-47-2.jpg', '/picture/4-47-3.jpg', 9199, '美的(Midea)5匹 变频冷暖商用柜机空调380V使用RFD-120LW/BSDN8Y-PA401(B3)A', 10, 4);
INSERT INTO `goods` VALUES (48, '海尔商用柜机', '/picture/4-48-1.jpg', '/picture/4-48-2.jpg', '/picture/4-48-3.jpg', 10099, '海尔(Haier) 5匹柜机中央空调空调立式商用380V办公商铺自清洁三菱电机变频冷暖KFRd-120LW/50BC22', 10, 4);
INSERT INTO `goods` VALUES (49, '方太蒸烤一体机', '/picture/5-49-1.jpg', '/picture/5-49-2.jpg', '/picture/5-49-3.jpg', 4999, '[焕新升级]方太(FOTILE)蒸烤一体机家用多功能智能炸烘蒸烤台式一体机烘焙方太小方盒YZK26-E1G(绿色)', 10, 5);
INSERT INTO `goods` VALUES (50, '苏泊尔小型电烤箱', '/picture/5-50-1.jpg', '/picture/5-50-2.jpg', '/picture/5-50-3.jpg', 289, '苏泊尔(SUPOR)小型电烤箱 35L大容量烤箱 四旋钮上下管可调温 曜石黑 K35FK602', 10, 5);
INSERT INTO `goods` VALUES (51, '美的微波炉', '/picture/5-51-1.jpg', '/picture/5-51-2.jpg', '/picture/5-51-3.jpg', 319, '美的(Midea)微波炉 360°转盘加热 易清洁内胆 旋钮操控 精准控温 五档火力M1-L213B', 10, 5);
INSERT INTO `goods` VALUES (52, '格兰仕微波炉', '/picture/5-52-1.jpg', '/picture/5-52-2.jpg', '/picture/5-52-3.jpg', 399, '格兰仕(Galanz)微波炉家用小型 简约时尚机械旋钮 精准控温 五档火力 20升容量D4', 10, 5);
INSERT INTO `goods` VALUES (53, '欢呼好太太油烟机', '/picture/5-53-1.jpg', '/picture/5-53-2.jpg', '/picture/5-53-3.jpg', 498, '欢呼好太太油烟机710mm小尺寸大吸力侧吸式家用厨房抽油烟机小户型公寓出租房脱排近吸式单烟机', 10, 5);
INSERT INTO `goods` VALUES (54, '方太油烟机', '/picture/5-54-1.jpg', '/picture/5-54-2.jpg', '/picture/5-54-3.jpg', 1499, '方太(FOTILE)中式家用 深罩型 抽油烟机 欧式按键式小尺寸 17立方CXW-175-SY09G', 10, 5);
INSERT INTO `goods` VALUES (55, '美的智能电饭煲', '/picture/5-55-1.jpg', '/picture/5-55-2.jpg', '/picture/5-55-3.jpg', 259, '美的(Midea) 电饭煲4L/4升智能预约多功能家用电饭锅大容量微电脑式底盘加热不粘锅不溢锅WFD4016', 10, 5);
INSERT INTO `goods` VALUES (56, '苏泊尔多功能电饭煲', '/picture/5-56-1.jpg', '/picture/5-56-2.jpg', '/picture/5-56-3.jpg', 209, '苏泊尔(SUPOR)电饭煲4L家用3-6人多功能电饭锅厚釜陶晶不粘内胆智能预约定时CFXB40FC829E-75', 10, 5);
INSERT INTO `goods` VALUES (57, '苏泊尔电磁炉', '/picture/5-57-1.jpg', '/picture/5-57-2.jpg', '/picture/5-57-3.jpg', 149, '苏泊尔(SUPOR)电磁炉家用火锅智能滑控大功率爆炒家用多功能电池炉 过热断电电磁灶C22-IH9E32S', 10, 5);
INSERT INTO `goods` VALUES (58, '美的电磁炉', '/picture/5-58-1.jpg', '/picture/5-58-2.jpg', '/picture/5-58-3.jpg', 199, '美的(Midea)电磁炉 触控式 汉森微晶面板 多功能8档火力 大功率家用智能电池炉C21-SN2105', 10, 5);
INSERT INTO `goods` VALUES (59, '美的燃气灶', '/picture/5-59-1.jpg', '/picture/5-59-2.jpg', '/picture/5-59-3.jpg', 699, '美的(Midea)燃气灶JZT-Q218B 燃气灶 5.0KW大火力台式嵌入式厨房家用双灶煤气灶灶具双眼灶(天然气)', 10, 5);
INSERT INTO `goods` VALUES (60, '万和燃气灶', '/picture/5-60-1.jpg', '/picture/5-60-2.jpg', '/picture/5-60-3.jpg', 399, '万和(Vanward) 燃气灶天然气灶具 煤气灶双眼灶 台式灶具嵌入式灶两用 燃气炉具自营 JZT-B6B338XW', 10, 5);
INSERT INTO `goods` VALUES (61, '美的（Midea）16升燃气热水器', '/picture/6-61-1.jpg', '/picture/6-61-2.jpg', '/picture/6-61-3.jpg', 3599, '品牌： 美的（Midea）商品名称：美的JSQ30-AIR pro商品编号：100028917483商品毛重：14.0kg商品产地：中国大陆操控方式：触控式，按键式，APP操控能效等级：二级能效类型：强排式控温方式：水气双调特征特质：零冷水，静音，高清大屏是否防冻：机械防冻适用户型：一厨两卫安装费用：300元封顶燃热出水量：16L气源：天然气(12T)', 10, 6);
INSERT INTO `goods` VALUES (63, '海尔（Haier）12升液化气燃气热水器', '/picture/6-63-1.jpg', '/picture/6-63-21.jpg', '/picture/6-63-3.jpg', 849, '品牌： 海尔（Haier）商品名称：海尔JSQ22-12UTS(20Y)商品编号：100008607207商品毛重：11.7kg商品产地：中国大陆操控方式：按键式能效等级：二级能效类型：强排式控温方式：燃气比例阀特征特质：节能省气，CO预警，顶置风机气源：液化气(20Y)适用户型：一厨一卫燃热出水量：12L是否防冻：电辅防冻', 10, 6);
INSERT INTO `goods` VALUES (64, '万和 （Vanward ）12升燃气热水器', '/picture/6-64-1.jpg', '/picture/6-64-21.jpg', '/picture/6-64-3.jpg', 839, '品牌： 万和（Vanward）商品名称：万和JSQ24-370J12（12T）商品编号：100015285222商品毛重：12.0kg商品产地：中国大陆货号：JSQ24-370J12-12T操控方式：按键式，语音控制，APP操控能效等级：二级能效类型：强排式控温方式：燃气比例阀特征特质：低压启动，CO预警，磁化净水适用户型：一厨一卫气源：天然气(12T)安装费用：300元封顶燃热出水量：12L是否防冻：不防冻', 10, 6);
INSERT INTO `goods` VALUES (65, '华帝（VATTI）燃气热水器', '/picture/6-65-1.jpg', '/picture/6-65-21.jpg', '/picture/6-65-3.jpg', 997, '品牌： 华帝（VATTI）商品名称：华帝（VATTI）i12103商品编号：10045304912643商品毛重：11.7kg商品产地：中国大陆货号：i12103操控方式：触控式能效等级：二级能效类型：强排式控温方式：燃气比例阀特征特质：节能省气，静音，低压启动是否防冻：机械防冻适用户型：一厨一卫燃热出水量：12L气源：天然气(12T)', 10, 6);
INSERT INTO `goods` VALUES (66, '太阳雨燃气热水器', '/picture/6-66-1.jpg', '/picture/6-66-21.jpg', '/picture/6-66-3.jpg', 585, '品牌： 太阳雨', 10, 6);
INSERT INTO `goods` VALUES (67, '志高 CHIGO燃气热水器', '/picture/6-67-1.jpg', '/picture/6-67-21.jpg', '/picture/6-67-3.jpg', 698, '品牌： 志高（CHIGO）商品名称：志高JSQ23-H商品编号：100020691814商品毛重：10.0kg商品产地：中国大陆操控方式：触控式能效等级：二级能效类型：强排式控温方式：燃气比例阀特征特质：节能省气是否防冻：不防冻适用户型：全屋多点供水燃热出水量：12L气源：液化气(20Y)', 10, 6);
INSERT INTO `goods` VALUES (68, 'AO史密斯50升电热水器', '/picture/6-68-1.jpg', '/picture/6-68-21.jpg', '/picture/6-68-3.jpg', 2498, '品牌： 史密斯（A.O.SMITH）商品名称：史密斯E50VDS商品编号：100012657785商品毛重：25.0kg商品产地：中国大陆货号：E50VDS操控方式：机械式能效等级：一级能效容量：50-59L类型：储水式电热水器特征特质：金圭内胆外观设计：圆筒型', 10, 6);
INSERT INTO `goods` VALUES (69, '四季沐歌（MICOE）储水式电热水器', '/picture/6-69-1.jpg', '/picture/6-69-21.jpg', '/picture/6-69-3.jpg', 699, '品牌： 四季沐歌（MICOE）商品名称：四季沐歌M3-D50-30-YH1商品编号：100035058371商品毛重：18.2kg商品产地：中国大陆操控方式：触控式能效等级：二级能效容量：50-59L类型：储水式电热水器外观设计：圆筒型', 10, 6);
INSERT INTO `goods` VALUES (70, '卡萨帝（Casarte）50升电热水器', '/picture/6-70-1.jpg', '/picture/6-70-21.jpg', '/picture/6-70-3.jpg', 4099, '品牌： 卡萨帝（Casarte）商品名称：卡萨帝CEC5005-LPLS3L(U1)商品编号：100014384260商品毛重：34.0kg商品产地：中国大陆特征特质：炫彩机身，速热增容，高温抑菌能效等级：一级能效容量：50-59L类型：储水式电热水器操控方式：APP操控安装费用：全免安装外观设计：超薄型', 10, 6);
INSERT INTO `goods` VALUES (71, '美菱（MELING）50升电热水器', '/picture/6-71-1.jpg', '/picture/6-714-21.jpg', '/picture/6-71-3.jpg', 479, '品牌： 美菱（MeiLing）商品名称：美菱MD-YJ10503商品编号：7341890商品毛重：19.0kg商品产地：中国大陆操控方式：机械式能效等级：二级能效容量：50-59L类型：储水式电热水器安装费用：200元封顶外观设计：圆筒型', 10, 6);
INSERT INTO `goods` VALUES (72, '统帅50升电热水器', '/picture/6-72-1.jpg', '/picture/6-72-21.jpg', '/picture/6-72-3.jpg', 549, '品牌： 统帅（Leader）商品名称：统帅LEC5001-20X1商品编号：2802858商品毛重：23.0kg商品产地：中国大陆操控方式：机械式能效等级：二级能效容量：50-59L类型：储水式电热水器特征特质：速热增容，高温抑菌外观设计：圆筒型', 10, 6);
INSERT INTO `goods` VALUES (73, '美的吸尘器C7卧室吸尘器', '/picture/7-73-1.jpg', '/picture/7-73-2.jpg', '/picture/7-73-3.jpg', 449, '品牌：美的（Midea）商品名称：美的C7 商品编号：100008887948 商品毛重：7.14kg 商品产地：中国大陆  吸头数量：3个以下  类型：桶式  吸尘器吸力：151-180AW  续航时间：60分钟以上   适用对象：宠物，地毯，沙发床褥', 10, 7);
INSERT INTO `goods` VALUES (74, '小米加湿器', '/picture/7-74-1.jpg', '/picture/7-74-2.jpg', '/picture/7-74-3.jpg', 89, '品牌： 奥克斯（AUX）商品名称：奥克斯（AUX）NSBE-200GR商品编号：10037295574303商品毛重：2.295kg商品产地：中国大陆货号：NSBE-200GR特色功能：浴室可用，倾倒断电，智能控制类型：暖风机放置方式：落地式最大功率：2000W适用面积：11-15', 10, 7);
INSERT INTO `goods` VALUES (75, '奥克斯（AUX） 取暖器', '/picture/7-75-1.jpg', '/picture/7-75-2.jpg', '/picture/7-75-3.jpg', 199, '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', 10, 7);
INSERT INTO `goods` VALUES (76, '志高（CHIGO）热水袋', '/picture/7-76-1.jpg', '/picture/7-76-2.jpg', '/picture/7-76-3.jpg', 31.9, '品牌： 志高（CHIGO）商品名称：志高BMJ-G商品编号：100044412117商品毛重：1.55kg商品产地：中国大陆供电方式：锂电池消毒方式：高温', 10, 7);
INSERT INTO `goods` VALUES (77, '斗禾烘鞋器', '/picture/7-77-1.jpg', '/picture/7-77-2.jpg', '/picture/7-77-3.jpg', 179, '品牌： 斗禾 商品名称：斗禾HXD01B商品编号：10062488711032商品毛重：0.8kg消毒方式：高温，紫外线消毒类别：烘鞋器', 10, 7);
INSERT INTO `goods` VALUES (78, '飞科（FLYCO） 空气加湿器', '/picture/7-78-1.jpg', '/picture/7-78-2.jpg', '/picture/7-78-3.jpg', 199, '品牌： 飞科（FLYCO）商品名称：飞科（FLYCO）FH9219商品编号：10062653128325店铺： 飞科生活电器旗舰店商品毛重：1.0kg商品产地：中国大陆货号：FH9219水箱容量：3-4L适用面积：<10㎡类型：有雾型额定加湿量：<300mL/h加水方式：普通加水适用场景：卧室，桌面，客厅', 10, 7);
INSERT INTO `goods` VALUES (79, '美菱（MeiLing） 饮水机', '/picture/7-79-1.jpg', '/picture/7-79-2.jpg', '/picture/7-79-3.jpg', 98, '品牌： 美菱（MeiLing）商品名称：美菱（MeiLing）MY-L103商品编号：10059176010438店铺： 美菱生活电器旗舰店商品毛重：4.3kg类型：桶装饮水机水温类型：加热颜色：白色款式：上置式', 10, 7);
INSERT INTO `goods` VALUES (80, '大宇（DAEWOO） 韩国取暖器', '/picture/7-80-1.jpg', '/picture/7-80-2.jpg', '/picture/7-80-3.jpg', 329, '品牌： 大宇（DAEWOO）商品名称：大宇（DAEWOO）DWH-BH03M商品编号：10024479194601店铺： 大宇家用电器旗舰店商品毛重：4.0kg特色功能：倾倒断电，恒温，小巧便携放置方式：台地两用类型：小太阳适用面积：11-15', 10, 7);
INSERT INTO `goods` VALUES (81, '苏泊尔（SUPOR）加湿器', '/picture/7-81-1.jpg', '/picture/7-81-2.jpg', '/picture/7-81-3.jpg', 209, '品牌： 苏泊尔（SUPOR）商品名称：苏泊尔（SUPOR） SC-AE35C商品编号：10034831321125店铺： 苏泊尔生活电器旗舰店商品毛重：1.5kg货号：SC-AE35C类型：有雾型', 10, 7);
INSERT INTO `goods` VALUES (82, '四季沐歌（MICOE） 取暖器', '/picture/7-82-1.jpg', '/picture/7-82-2.jpg', '/picture/7-82-3.jpg', 99, '品牌： 四季沐歌（MICOE）商品名称：四季沐歌（MICOE）M3-08-QN1908商品编号：10043511711998店铺： 四季沐歌生活电器旗舰店商品毛重：3.3kg商品产地：中国大陆货号：M3-08-QN1908特色功能：倾倒断电，摇头功能，小巧便携类型：小太阳放置方式：落地式最大功率：800W适用面积：5-10', 10, 7);
INSERT INTO `goods` VALUES (83, '海纳斯(HANASS)暖脚宝', '/picture/7-83-1.jpg', '/picture/7-83-2.jpg', '/picture/7-83-3.jpg', 49.9, '品牌： 海纳斯（HANASS）商品名称：海纳斯AW-505商品编号：100001722658商品毛重：0.86kg商品产地：中国慈溪特色功能：小巧便携类型：暖脚器最大功率：800W以下放置方式：落地式适用面积：5及以下', 10, 7);
INSERT INTO `goods` VALUES (84, '海尔（Haier） 大面积石墨烯取暖器', '/picture/7-84-1.jpg', '/picture/7-84-2.jpg', '/picture/7-84-3.jpg', 759, '品牌： 海尔（Haier）商品名称：海尔（Haier）HKS2206HX商品编号：10042828844068店铺： 海尔创道专卖店商品毛重：7.0kg特色功能：浴室可用，遥控，恒温类型：欧式快热炉放置方式：落地式最大功率：2200W适用面积：25㎡以上', 10, 7);
INSERT INTO `goods` VALUES (85, '博朗Braun5系小猎豹电动剃须刀', '/picture/8-85-1.jpg', '/picture/8-85-2.jpg', '/picture/8-85-3.jpg', 499, '品牌： 博朗（BRAUN）商品名称：博朗50-W1000s商品编号：100012434446商品毛重：0.68kg商品产地：中国大陆刀头数量：多个刀头材质：不锈钢产地归属：刀头进口类型：往复式剃须刀包装形式：礼盒装续航时间：45-60分钟功能：快充适合肤质：普通肤质充电时间：1小时快充清洗方式：全身水洗，刀头水洗电源方式：电源适配器供电', 0, 8);
INSERT INTO `goods` VALUES (86, '初先颈椎按摩器', '/picture/8-86-1.jpg', '/picture/8-86-2.jpg', '/picture/8-86-3.jpg', 46, '品牌： 初先 商品名称：初先KS6908B商品编号：10064197796345店铺： 质佳电器专营店商品毛重：200.00g按摩手法：低频脉冲适用部位：全身适用场景：居家，家用，旅行功能：分区按摩，多部位按摩，多模式按摩', 10, 8);
INSERT INTO `goods` VALUES (87, '海尔（Haier）手持小型挂烫机', '/picture/8-87-1.jpg', '/picture/8-87-2.jpg', '/picture/8-87-3.jpg', 139, '品牌： 海尔（Haier）商品名称：海尔HY-GW2503商品编号：100027397329商品毛重：0.88kg商品产地：中国大陆特色功能：小巧便携，快速蒸汽，高温除菌功率：1000-1500W熨烫方式：支持平烫，支持挂烫调温档位：一档调温适用场景：家用', 9, 8);
INSERT INTO `goods` VALUES (88, '飞利浦（PHILIPS）泡脚桶', '/picture/8-88-1.jpg', '/picture/8-88-2.jpg', '/picture/8-88-3.jpg', 779, '品牌： 飞利浦（PHILIPS）商品名称：飞利浦（PHILIPS）PPM3303F/PPM5303F商品编号：10062786449326店铺： 飞利浦生活电器旗舰店商品毛重：8.2kg商品产地：中国大陆货号：PPM3303F/PPM5303F操控方式：电脑式按摩手法：物理揉捏，电动滚轮，仿人手揉捏，电动转盘是否可折叠：不可折叠内桶深度：20-30cm档位：5档以上有无脚轮：有脚轮特色功能：自动按摩，冲浪功能', 10, 8);
INSERT INTO `goods` VALUES (89, '摩菲眼部护眼仪', '/picture/8-89-1.jpg', '/picture/8-89-2.jpg', '/picture/8-89-3.jpg', 859, '商品名称：mofitME20商品编号：10062669604519店铺： 摩菲官方旗舰店商品毛重：500.00g商品产地：中国大陆适用场景：车用，居家，家用按摩手法：气囊按压适用部位：眼部供电方式：锂电池功能：语音交互，温感热敷，蓝牙音', 10, 8);
INSERT INTO `goods` VALUES (90, '利泽（Linzir）智能体脂秤', '/picture/8-90-1.jpg', '/picture/8-90-2.jpg', '/picture/8-90-3.jpg', 29, '品牌： 利泽（Linzir）商品名称：利泽BT801商品编号：100042109593商品毛重：0.85kg商品产地：中国大陆类型：体重秤电源方式：USB充电特色功能：脂肪测量，水分测量，蛋白质测量显示类型：LCD显示', 10, 8);
INSERT INTO `goods` VALUES (91, '小米家用电吹风机', '/picture/8-91-1.jpg', '/picture/8-91-2.jpg', '/picture/8-91-3.jpg', 65, '品牌： 小适（showsee）商品名称：小适小适（showsee）吹风机 家用电吹风小适电吹风A1-W商品编号：100009327632商品毛重：0.63kg商品产地：中国大陆货号：A1-W控温类型：一键冷风最大风速：<10m/s特色功能：低噪设计最大噪音：66-70dB(A)风嘴类型：集风风嘴风嘴安装方式：卡扣式包装形式：普通装适用发质：中性，油性风温档位：2档负离子量：1-3千万ions/m³电机转速：<30000rpm护发类型：负离子最大功率：1500-1799W风速档位：2档适用场景：家用，酒店', 10, 8);
INSERT INTO `goods` VALUES (92, '佰仕傲（BAYSHARALL） 米家U型枕颈部按摩仪', '/picture/8-92-1.jpg', '/picture/8-92-2.jpg', '/picture/8-92-3.jpg', 389, '品牌： 佰仕傲（BAYSHARALL）商品名称：佰仕傲（BAYSHARALL） 米家U型枕颈部按摩仪便携物理揉捏护颈椎按摩器电动热敷办公家用车载礼物 APP款U型按摩枕商品编号：10064248222416店铺： 佰仕傲个护健康旗舰店商品毛重：0.65kg操控方式：APP操控功能：多档热敷，语音提示，多部位按摩，多模式按摩按摩手法：仿人手揉捏适用部位：颈部供电方式：锂电池适用场景：车用，旅行，职场', 10, 8);
INSERT INTO `goods` VALUES (93, '胖猫超声波洁牙机器', '/picture/8-93-1.jpg', '/picture/8-93-2.jpg', '/picture/8-93-3.jpg', 119, '品牌： 胖猫 商品名称：胖猫PERSMAX(8016）商品编号：10054603559741店铺： 胖猫官方旗舰店商品毛重：290.00g商品产地：中国大陆货号：超声波洁牙器包装形式：普通装电源方式：USB充电喷头数量：2个清洁类型：敏感，牙龈呵护，美白类型：立式一体档位：≤5档喷头类型：标准喷头适用场景：送礼，旅行，居家，职场', 10, 8);
INSERT INTO `goods` VALUES (94, '网易严选无线按摩器', '/picture/8-94-1.jpg', '/picture/8-94-2.jpg', '/picture/8-94-3.jpg', 299, '品牌： 网易严选 商品名称：网易严选日式无线按摩靠枕商品编号：8135313商品毛重：2.178kg商品产地：中国大陆货号：300219634适用场景：居家，旅行，职场按摩手法：仿人手揉捏适用部位：全身供电方式：无线充电功能：红光照射，多模式按摩', 10, 8);
INSERT INTO `goods` VALUES (95, '康佳（KONKA） 泡脚桶', '/picture/8-95-1.jpg', '/picture/8-95-2.jpg', '/picture/8-95-3.jpg', 118, '品牌： 康佳（KONKA）商品名称：康佳（KONKA）P5商品编号：10058447136211店铺： 康佳个护健康旗舰店商品毛重：4.2kg商品产地：中国大陆操控方式：遥控器控制特色功能：冲浪功能，恒温调节，红外加热是否可折叠：不可折叠按摩手法：物理揉捏，电动滚轮，仿人手揉捏，脚动滚轮，电动转盘档位：无档位有无脚轮：有脚轮内桶深度：20cm以下', 10, 8);
INSERT INTO `goods` VALUES (96, '奔腾（POVOS）电动剃须刀', '/picture/8-96-1.jpg', '/picture/8-96-2.jpg', '/picture/8-96-3.jpg', 29.9, '品牌： 奔腾（POVOS）商品名称：奔腾PB0292Q商品编号：860667商品毛重：130.00g商品产地：中国大陆刀头数量：2个刀头材质：不锈钢产地归属：整机国产类型：旋转式剃须刀包装形式：普通装续航时间：30-45分钟功能：一触即启适合肤质：普通肤质充电时间：8小时以上清洗方式：刀头水洗电源方式：电源适配器供电', 10, 8);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float NULL DEFAULT NULL,
  `amount` int(6) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `paytype` tinyint(1) NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datetime` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user_id_idx`(`user_id`) USING BTREE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (75, 28, 1, 4, 2, '管理员', '1333333333', '中华人民共和国', '2019-10-07 12:31:07', 1);
INSERT INTO `order` VALUES (76, 299, 1, 4, 2, 'vili', '1344444444', '中华人民共和国', '2022-12-04 07:53:10', 2);
INSERT INTO `order` VALUES (78, 9338, 2, 4, 2, '管理员', '1333333333', '中华人民共和国', '2022-12-05 14:37:33', 1);
INSERT INTO `order` VALUES (88, 139, 1, 2, 1, '管理员', '1333333333', '中华人民共和国', '2022-12-09 09:24:35', 1);
INSERT INTO `order` VALUES (89, 1251, 9, 2, 1, '管理员', '1333333333', '中华人民共和国', '2022-12-09 09:24:54', 1);
INSERT INTO `order` VALUES (90, 0, 0, 2, 1, 'vili', '1344444444', '中华人民共和国', '2023-04-15 17:39:29', 2);
INSERT INTO `order` VALUES (91, 139, 1, 2, 1, 'vili', '1344444444', '中华人民共和国', '2023-05-19 03:43:51', 2);

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float NULL DEFAULT NULL,
  `amount` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  `order_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_order_id_idx`(`order_id`) USING BTREE,
  INDEX `fk_orderitem_goods_id_idx`(`goods_id`) USING BTREE,
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES (78, 28, 1, 10, 75);
INSERT INTO `orderitem` VALUES (79, 299, 1, 9, 76);
INSERT INTO `orderitem` VALUES (81, 139, 1, 87, 78);
INSERT INTO `orderitem` VALUES (82, 9199, 1, 47, 78);
INSERT INTO `orderitem` VALUES (92, 139, 1, 87, 88);
INSERT INTO `orderitem` VALUES (93, 139, 9, 87, 89);
INSERT INTO `orderitem` VALUES (94, 139, 1, 87, 91);

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_goods_id_idx`(`goods_id`) USING BTREE,
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES (10, 3, 10);
INSERT INTO `recommend` VALUES (46, 2, 87);
INSERT INTO `recommend` VALUES (49, 1, 13);
INSERT INTO `recommend` VALUES (50, 1, 41);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '电视');
INSERT INTO `type` VALUES (2, '冰箱');
INSERT INTO `type` VALUES (3, '洗衣机');
INSERT INTO `type` VALUES (4, '空调');
INSERT INTO `type` VALUES (5, '厨房电器');
INSERT INTO `type` VALUES (6, '卫生间电器');
INSERT INTO `type` VALUES (7, '生活电器');
INSERT INTO `type` VALUES (8, '个护健康');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isadmin` bit(1) NULL DEFAULT NULL,
  `isvalidate` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_UNIQUE`(`username`) USING BTREE,
  UNIQUE INDEX `email_UNIQUE`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin@vilicode.com', 'admin', '管理员', '1333333333', '中华人民共和国', b'1', b'0');
INSERT INTO `user` VALUES (2, 'vili', 'vili@vilicode.com', 'vili', 'vili', '1344444444', '中华人民共和国', b'0', b'0');
INSERT INTO `user` VALUES (3, 'XYG', '1754331364@qq.com', '123', '秀豆', '13774785101', '1213', b'0', b'0');
INSERT INTO `user` VALUES (4, 'mmz', '12213', '131', '13131', '13123', '131', b'0', b'0');

SET FOREIGN_KEY_CHECKS = 1;
