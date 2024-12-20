// Note: This file is automatically generated by the python script Tests/testsFromGroundtruth.py
//       Running this script will be overwrite any changes you make to this file

import Testing
@testable import NumberTranslator

@Test func simplifiedChinese() {
    let translator = NumberTranslator()
    // /https: www.mezzoguild.com/learn/chinese/numbers/
    #expect(translator.translate(0, to: .simplifiedChinese).x == "〇")
    #expect(translator.translate(1, to: .simplifiedChinese).x == "一")
    #expect(translator.translate(2, to: .simplifiedChinese).x == "二")
    #expect(translator.translate(3, to: .simplifiedChinese).x == "三")
    #expect(translator.translate(4, to: .simplifiedChinese).x == "四")
    #expect(translator.translate(5, to: .simplifiedChinese).x == "五")
    #expect(translator.translate(6, to: .simplifiedChinese).x == "六")
    #expect(translator.translate(7, to: .simplifiedChinese).x == "七")
    #expect(translator.translate(8, to: .simplifiedChinese).x == "八")
    #expect(translator.translate(9, to: .simplifiedChinese).x == "九")
    #expect(translator.translate(10, to: .simplifiedChinese).x == "十")
    #expect(translator.translate(11, to: .simplifiedChinese).x == "十一")
    #expect(translator.translate(12, to: .simplifiedChinese).x == "十二")
    #expect(translator.translate(13, to: .simplifiedChinese).x == "十三")
    #expect(translator.translate(14, to: .simplifiedChinese).x == "十四")
    #expect(translator.translate(15, to: .simplifiedChinese).x == "十五")
    #expect(translator.translate(16, to: .simplifiedChinese).x == "十六")
    #expect(translator.translate(17, to: .simplifiedChinese).x == "十七")
    #expect(translator.translate(18, to: .simplifiedChinese).x == "十八")
    #expect(translator.translate(19, to: .simplifiedChinese).x == "十九")
    #expect(translator.translate(20, to: .simplifiedChinese).x == "二十")
    #expect(translator.translate(30, to: .simplifiedChinese).x == "三十")
    #expect(translator.translate(32, to: .simplifiedChinese).x == "三十二")
    #expect(translator.translate(50, to: .simplifiedChinese).x == "五十")
    #expect(translator.translate(54, to: .simplifiedChinese).x == "五十四")
    #expect(translator.translate(78, to: .simplifiedChinese).x == "七十八")
    #expect(translator.translate(98, to: .simplifiedChinese).x == "九十八")
    #expect(translator.translate(99, to: .simplifiedChinese).x == "九十九")
    #expect(translator.translate(100, to: .simplifiedChinese).x == "一百")
    #expect(translator.translate(101, to: .simplifiedChinese).x == "一百 零一")
    #expect(translator.translate(102, to: .simplifiedChinese).x == "一百 零二")
    #expect(translator.translate(103, to: .simplifiedChinese).x == "一百 零三")
    #expect(translator.translate(104, to: .simplifiedChinese).x == "一百 零四")
    #expect(translator.translate(110, to: .simplifiedChinese).x == "一百 一十")
    #expect(translator.translate(111, to: .simplifiedChinese).x == "一百 一十一")
    #expect(translator.translate(112, to: .simplifiedChinese).x == "一百 一十二")
    #expect(translator.translate(113, to: .simplifiedChinese).x == "一百 一十三")
    #expect(translator.translate(120, to: .simplifiedChinese).x == "一百 二十")
    #expect(translator.translate(130, to: .simplifiedChinese).x == "一百 三十")
    #expect(translator.translate(140, to: .simplifiedChinese).x == "一百 四十")
    #expect(translator.translate(125, to: .simplifiedChinese).x == "一百 二十五")
    #expect(translator.translate(132, to: .simplifiedChinese).x == "一百 三十二")
    #expect(translator.translate(147, to: .simplifiedChinese).x == "一百 四十七")
    #expect(translator.translate(152, to: .simplifiedChinese).x == "一百 五十二")
    #expect(translator.translate(166, to: .simplifiedChinese).x == "一百 六十六")
    #expect(translator.translate(178, to: .simplifiedChinese).x == "一百 七十八")
    #expect(translator.translate(183, to: .simplifiedChinese).x == "一百 八十三")
    #expect(translator.translate(197, to: .simplifiedChinese).x == "一百 九十七")
    #expect(translator.translate(200, to: .simplifiedChinese).x == "二百")
    #expect(translator.translate(208, to: .simplifiedChinese).x == "二百 零八")
    #expect(translator.translate(300, to: .simplifiedChinese).x == "三百")
    #expect(translator.translate(305, to: .simplifiedChinese).x == "三百 零五")
    #expect(translator.translate(400, to: .simplifiedChinese).x == "四百")
    #expect(translator.translate(432, to: .simplifiedChinese).x == "四百 三十二")
    #expect(translator.translate(500, to: .simplifiedChinese).x == "五百")
    #expect(translator.translate(600, to: .simplifiedChinese).x == "六百")
    #expect(translator.translate(700, to: .simplifiedChinese).x == "七百")
    #expect(translator.translate(800, to: .simplifiedChinese).x == "八百")
    #expect(translator.translate(900, to: .simplifiedChinese).x == "九百")
    #expect(translator.translate(301, to: .simplifiedChinese).x == "三百 零一")
    #expect(translator.translate(565, to: .simplifiedChinese).x == "五百 六十五")
    #expect(translator.translate(732, to: .simplifiedChinese).x == "七百 三十二")
    #expect(translator.translate(890, to: .simplifiedChinese).x == "八百 九十")
    #expect(translator.translate(945, to: .simplifiedChinese).x == "九百 四十五")
    #expect(translator.translate(1_000, to: .simplifiedChinese).x == "一千")
    #expect(translator.translate(1_001, to: .simplifiedChinese).x == "一千 零一")
    #expect(translator.translate(1_003, to: .simplifiedChinese).x == "一千 零三")
    #expect(translator.translate(1_005, to: .simplifiedChinese).x == "一千 零五")
    #expect(translator.translate(1_006, to: .simplifiedChinese).x == "一千 零六")
    #expect(translator.translate(1_010, to: .simplifiedChinese).x == "一千 零一十")
    #expect(translator.translate(1_020, to: .simplifiedChinese).x == "一千 零二十")
    #expect(translator.translate(1_035, to: .simplifiedChinese).x == "一千 零三十五")
    #expect(translator.translate(1_100, to: .simplifiedChinese).x == "一千 一百")
    #expect(translator.translate(1_111, to: .simplifiedChinese).x == "一千 一百 一十一")
    #expect(translator.translate(1_200, to: .simplifiedChinese).x == "一千 二百")
    #expect(translator.translate(1_234, to: .simplifiedChinese).x == "一千 二百 三十四")
    #expect(translator.translate(1_999, to: .simplifiedChinese).x == "一千 九百 九十九")
    #expect(translator.translate(2_000, to: .simplifiedChinese).x == "二千")
    #expect(translator.translate(2_001, to: .simplifiedChinese).x == "二千 零一")
    #expect(translator.translate(2_010, to: .simplifiedChinese).x == "二千 零一十")
    #expect(translator.translate(2_345, to: .simplifiedChinese).x == "二千 三百 四十五")
    #expect(translator.translate(3_000, to: .simplifiedChinese).x == "三千")
    #expect(translator.translate(3_454, to: .simplifiedChinese).x == "三千 四百 五十四")
    #expect(translator.translate(4_000, to: .simplifiedChinese).x == "四千")
    #expect(translator.translate(5_000, to: .simplifiedChinese).x == "五千")
    #expect(translator.translate(6_000, to: .simplifiedChinese).x == "六千")
    #expect(translator.translate(7_000, to: .simplifiedChinese).x == "七千")
    #expect(translator.translate(7_045, to: .simplifiedChinese).x == "七千 零四十五")
    #expect(translator.translate(8_000, to: .simplifiedChinese).x == "八千")
    #expect(translator.translate(9_000, to: .simplifiedChinese).x == "九千")
    #expect(translator.translate(1_0000, to: .simplifiedChinese).x == "一万")
    #expect(translator.translate(1_0001, to: .simplifiedChinese).x == "一万 零一")
    #expect(translator.translate(1_0003, to: .simplifiedChinese).x == "一万 零三")
    #expect(translator.translate(1_0101, to: .simplifiedChinese).x == "一万 零一百 零一")
    #expect(translator.translate(1_0207, to: .simplifiedChinese).x == "一万 零二百 零七")
    #expect(translator.translate(1_0509, to: .simplifiedChinese).x == "一万 零五百 零九")
    #expect(translator.translate(1_1000, to: .simplifiedChinese).x == "一万 一千")
    #expect(translator.translate(1_1050, to: .simplifiedChinese).x == "一万 一千 零五十")
    #expect(translator.translate(1_1500, to: .simplifiedChinese).x == "一万 一千 五百")
    #expect(translator.translate(1_1741, to: .simplifiedChinese).x == "一万 一千 七百 四十一")
    #expect(translator.translate(1_2000, to: .simplifiedChinese).x == "一万 二千")
    #expect(translator.translate(1_2345, to: .simplifiedChinese).x == "一万 二千 三百 四十五")
    #expect(translator.translate(1_3200, to: .simplifiedChinese).x == "一万 三千 二百")
    #expect(translator.translate(1_8000, to: .simplifiedChinese).x == "一万 八千")
    #expect(translator.translate(2_0000, to: .simplifiedChinese).x == "二万")
    #expect(translator.translate(2_3456, to: .simplifiedChinese).x == "二万 三千 四百 五十六")
    #expect(translator.translate(3_1240, to: .simplifiedChinese).x == "三万 一千 二百 四十")
    #expect(translator.translate(4_0000, to: .simplifiedChinese).x == "四万")
    #expect(translator.translate(4_0005, to: .simplifiedChinese).x == "四万 零五")
    #expect(translator.translate(4_0050, to: .simplifiedChinese).x == "四万 零五十")
    #expect(translator.translate(4_0500, to: .simplifiedChinese).x == "四万 零五百")
    #expect(translator.translate(4_5000, to: .simplifiedChinese).x == "四万 五千")
    #expect(translator.translate(5_0555, to: .simplifiedChinese).x == "五万 零五百 五十五")
    #expect(translator.translate(5_2152, to: .simplifiedChinese).x == "五万 二千 一百 五十二")
    #expect(translator.translate(5_6700, to: .simplifiedChinese).x == "五万 六千 七百")
    #expect(translator.translate(10_0000, to: .simplifiedChinese).x == "十万")
    #expect(translator.translate(10_0070, to: .simplifiedChinese).x == "十万 零七十")
    #expect(translator.translate(10_0222, to: .simplifiedChinese).x == "十万 零二百 二十二")
    #expect(translator.translate(10_1010, to: .simplifiedChinese).x == "十万 一千 零一十")
    #expect(translator.translate(11_0000, to: .simplifiedChinese).x == "十一万")
    #expect(translator.translate(12_3446, to: .simplifiedChinese).x == "十二万 三千 四百 四十六")
    #expect(translator.translate(20_0000, to: .simplifiedChinese).x == "二十万")
    #expect(translator.translate(20_0300, to: .simplifiedChinese).x == "二十万 零三百")
    #expect(translator.translate(21_4000, to: .simplifiedChinese).x == "二十一万 四千")
    #expect(translator.translate(30_0000, to: .simplifiedChinese).x == "三十万")
    #expect(translator.translate(30_0250, to: .simplifiedChinese).x == "三十万 零二百 五十")
    #expect(translator.translate(56_7000, to: .simplifiedChinese).x == "五十六万 七千")
    #expect(translator.translate(76_5432, to: .simplifiedChinese).x == "七十六万 五千 四百 三十二")
    #expect(translator.translate(100_0000, to: .simplifiedChinese).x == "一百万")
    #expect(translator.translate(100_0001, to: .simplifiedChinese).x == "一百万 零一")
    #expect(translator.translate(100_0010, to: .simplifiedChinese).x == "一百万 零一十")
    #expect(translator.translate(100_0100, to: .simplifiedChinese).x == "一百万 零一百")
    #expect(translator.translate(100_1000, to: .simplifiedChinese).x == "一百万 一千")
    #expect(translator.translate(101_0000, to: .simplifiedChinese).x == "一百 零一万")
    #expect(translator.translate(101_0101, to: .simplifiedChinese).x == "一百 零一万 零一百 零一")
    #expect(translator.translate(110_0000, to: .simplifiedChinese).x == "一百 一十万")
    #expect(translator.translate(112_3456, to: .simplifiedChinese).x == "一百 一十二万 三千 四百 五十六")
    #expect(translator.translate(162_8333, to: .simplifiedChinese).x == "一百 六十二万 八千 三百 三十三")
    #expect(translator.translate(291_4680, to: .simplifiedChinese).x == "二百 九十一万 四千 六百 八十")
    #expect(translator.translate(600_9123, to: .simplifiedChinese).x == "六百万 九千 一百 二十三")
    #expect(translator.translate(608_9123, to: .simplifiedChinese).x == "六百 零八万 九千 一百 二十三")
    #expect(translator.translate(670_0123, to: .simplifiedChinese).x == "六百 七十万 零一百 二十三")
    #expect(translator.translate(670_9123, to: .simplifiedChinese).x == "六百 七十万 九千 一百 二十三")
    #expect(translator.translate(678_9003, to: .simplifiedChinese).x == "六百 七十八万 九千 零三")
    #expect(translator.translate(678_9123, to: .simplifiedChinese).x == "六百 七十八万 九千 一百 二十三")
    #expect(translator.translate(678_9100, to: .simplifiedChinese).x == "六百 七十八万 九千 一百")
    #expect(translator.translate(678_9120, to: .simplifiedChinese).x == "六百 七十八万 九千 一百 二十")
    #expect(translator.translate(678_0023, to: .simplifiedChinese).x == "六百 七十八万 零二十三")
    #expect(translator.translate(700_0000, to: .simplifiedChinese).x == "七百万")
    #expect(translator.translate(789_0000, to: .simplifiedChinese).x == "七百 八十九万")
    #expect(translator.translate(789_0298, to: .simplifiedChinese).x == "七百 八十九万 零二百 九十八")
    #expect(translator.translate(800_0000, to: .simplifiedChinese).x == "八百万")
    #expect(translator.translate(800_0300, to: .simplifiedChinese).x == "八百万 零三百")
    #expect(translator.translate(1000_0000, to: .simplifiedChinese).x == "一千万")
    #expect(translator.translate(1010_1010, to: .simplifiedChinese).x == "一千 零一十万 一千 零一十")
    #expect(translator.translate(2700_0000, to: .simplifiedChinese).x == "二千 七百万")
    #expect(translator.translate(2721_4000, to: .simplifiedChinese).x == "二千 七百 二十一万 四千")
    #expect(translator.translate(2721_4896, to: .simplifiedChinese).x == "二千 七百 二十一万 四千 八百 九十六")
    #expect(translator.translate(2772_1000, to: .simplifiedChinese).x == "二千 七百 七十二万 一千")
    #expect(translator.translate(3456_7890, to: .simplifiedChinese).x == "三千 四百 五十六万 七千 八百 九十")
    #expect(translator.translate(5379_8250, to: .simplifiedChinese).x == "五千 三百 七十九万 八千 二百 五十")
    #expect(translator.translate(9800_0000, to: .simplifiedChinese).x == "九千 八百万")
    #expect(translator.translate(9876_5000, to: .simplifiedChinese).x == "九千 八百 七十六万 五千")
    #expect(translator.translate(9876_5432, to: .simplifiedChinese).x == "九千 八百 七十六万 五千 四百 三十二")
    #expect(translator.translate(1_0000_0000, to: .simplifiedChinese).x == "一亿")
    #expect(translator.translate(1_0101_0101, to: .simplifiedChinese).x == "一亿 零一百 零一万 零一百 零一")
    #expect(translator.translate(1_2345_6789, to: .simplifiedChinese).x == "一亿 二千 三百 四十五万 六千 七百 八十九")
    #expect(translator.translate(2_0080_0000, to: .simplifiedChinese).x == "二亿 零八十万")
    #expect(translator.translate(2_4050_0000, to: .simplifiedChinese).x == "二亿 四千 零五十万")
    #expect(translator.translate(3_0000_0000, to: .simplifiedChinese).x == "三亿")
    #expect(translator.translate(4_1429_4182, to: .simplifiedChinese).x == "四亿 一千 四百 二十九万 四千 一百 八十二")
    #expect(translator.translate(10_0000_0000, to: .simplifiedChinese).x == "十亿")
    #expect(translator.translate(10_1010_1010, to: .simplifiedChinese).x == "十亿 一千 零一十万 一千 零一十")
    #expect(translator.translate(12_0008_0000, to: .simplifiedChinese).x == "十二亿 零八万")
    #expect(translator.translate(13_2680_0000, to: .simplifiedChinese).x == "十三亿 二千 六百 八十万")
    #expect(translator.translate(98_7654_3210, to: .simplifiedChinese).x == "九十八亿 七千 六百 五十四万 三千 二百 一十")
    #expect(translator.translate(251_5836_7200, to: .simplifiedChinese).x == "二百 五十一亿 五千 八百 三十六万 七千 二百")
    #expect(translator.translate(1234_5678_9012, to: .simplifiedChinese).x == "一千 二百 三十四亿 五千 六百 七十八万 九千 零一十二")
    #expect(translator.translate(6789_8765_4321, to: .simplifiedChinese).x == "六千 七百 八十九亿 八千 七百 六十五万 四千 三百 二十一")
    #expect(translator.translate(1_0000_0000_0000, to: .simplifiedChinese).x == "一兆")
}
