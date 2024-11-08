// Note: This file is automatically generated by the python script Tests/testsFromGroundtruth.py
//       Running this script will be overwrite any changes you make to this file

import Testing
@testable import NumberTranslator

@Test func RomanNumerals() {
    let translator = NumberTranslator()
    #expect(translator.translate(0, to: .romanNumerals).x == "zero unknown")
    #expect(translator.translate(1, to: .romanNumerals).x == "I") // 1
    #expect(translator.translate(2, to: .romanNumerals).x == "II") // 1+1
    #expect(translator.translate(3, to: .romanNumerals).x == "III") // 1+1+1
    #expect(translator.translate(4, to: .romanNumerals).x == "IV") // 5-1
    #expect(translator.translate(5, to: .romanNumerals).x == "V") // 5
    #expect(translator.translate(6, to: .romanNumerals).x == "VI") // 5+1
    #expect(translator.translate(7, to: .romanNumerals).x == "VII") // 5+1+1
    #expect(translator.translate(8, to: .romanNumerals).x == "VIII") // 5+1+1+1
    #expect(translator.translate(9, to: .romanNumerals).x == "IX") // 10-1
    #expect(translator.translate(10, to: .romanNumerals).x == "X") // 10
    #expect(translator.translate(11, to: .romanNumerals).x == "XI") // 10+1
    #expect(translator.translate(12, to: .romanNumerals).x == "XII") // 10+1+1
    #expect(translator.translate(13, to: .romanNumerals).x == "XIII") // 10+1+1+1
    #expect(translator.translate(14, to: .romanNumerals).x == "XIV") // 10-1+5
    #expect(translator.translate(15, to: .romanNumerals).x == "XV") // 10+5
    #expect(translator.translate(16, to: .romanNumerals).x == "XVI") // 10+5+1
    #expect(translator.translate(17, to: .romanNumerals).x == "XVII") // 10+5+1+1
    #expect(translator.translate(18, to: .romanNumerals).x == "XVIII") // 10+5+1+1+1
    #expect(translator.translate(19, to: .romanNumerals).x == "XIX") // 10-1+10
    #expect(translator.translate(20, to: .romanNumerals).x == "XX") // 10+10
    #expect(translator.translate(21, to: .romanNumerals).x == "XXI") // 10+10+1
    #expect(translator.translate(22, to: .romanNumerals).x == "XXII") // 10+10+1+1
    #expect(translator.translate(23, to: .romanNumerals).x == "XXIII") // 10+10+1+1+1
    #expect(translator.translate(24, to: .romanNumerals).x == "XXIV") // 10+10-1+5
    #expect(translator.translate(25, to: .romanNumerals).x == "XXV") // 10+10+5
    #expect(translator.translate(26, to: .romanNumerals).x == "XXVI") // 10+10+5+1
    #expect(translator.translate(27, to: .romanNumerals).x == "XXVII") // 10+10+5+1+1
    #expect(translator.translate(28, to: .romanNumerals).x == "XXVIII") // 10+10+5+1+1+1
    #expect(translator.translate(29, to: .romanNumerals).x == "XXIX") // 10+10-1+10
    #expect(translator.translate(30, to: .romanNumerals).x == "XXX") // 10+10+10
    #expect(translator.translate(31, to: .romanNumerals).x == "XXXI") // 10+10+10+1
    #expect(translator.translate(32, to: .romanNumerals).x == "XXXII") // 10+10+10+1+1
    #expect(translator.translate(33, to: .romanNumerals).x == "XXXIII") // 10+10+10+1+1+1
    #expect(translator.translate(34, to: .romanNumerals).x == "XXXIV") // 10+10+10-1+5
    #expect(translator.translate(35, to: .romanNumerals).x == "XXXV") // 10+10+10+5
    #expect(translator.translate(36, to: .romanNumerals).x == "XXXVI") // 10+10+10+5+1
    #expect(translator.translate(37, to: .romanNumerals).x == "XXXVII") // 10+10+10+5+1+1
    #expect(translator.translate(38, to: .romanNumerals).x == "XXXVIII") // 10+10+10+5+1+1+1
    #expect(translator.translate(39, to: .romanNumerals).x == "XXXIX") // 10+10+10-1+10
    #expect(translator.translate(40, to: .romanNumerals).x == "XL") // -10+50
    #expect(translator.translate(41, to: .romanNumerals).x == "XLI") // -10+50+1
    #expect(translator.translate(42, to: .romanNumerals).x == "XLII") // -10+50+1+1
    #expect(translator.translate(43, to: .romanNumerals).x == "XLIII") // -10+50+1+1+1
    #expect(translator.translate(44, to: .romanNumerals).x == "XLIV") // -10+50-1+5
    #expect(translator.translate(45, to: .romanNumerals).x == "XLV") // -10+50+5
    #expect(translator.translate(46, to: .romanNumerals).x == "XLVI") // -10+50+5+1
    #expect(translator.translate(47, to: .romanNumerals).x == "XLVII") // -10+50+5+1+1
    #expect(translator.translate(48, to: .romanNumerals).x == "XLVIII") // -10+50+5+1+1+1
    #expect(translator.translate(49, to: .romanNumerals).x == "XLIX") // -10+50-1+10
    #expect(translator.translate(50, to: .romanNumerals).x == "L") // 50
    #expect(translator.translate(51, to: .romanNumerals).x == "LI") // 50+1
    #expect(translator.translate(52, to: .romanNumerals).x == "LII") // 50+1+1
    #expect(translator.translate(53, to: .romanNumerals).x == "LIII") // 50+1+1+1
    #expect(translator.translate(54, to: .romanNumerals).x == "LIV") // 50-1+5
    #expect(translator.translate(55, to: .romanNumerals).x == "LV") // 50+5
    #expect(translator.translate(56, to: .romanNumerals).x == "LVI") // 50+5+1
    #expect(translator.translate(57, to: .romanNumerals).x == "LVII") // 50+5+1+1
    #expect(translator.translate(58, to: .romanNumerals).x == "LVIII") // 50+5+1+1+1
    #expect(translator.translate(59, to: .romanNumerals).x == "LIX") // 50-1+10
    #expect(translator.translate(60, to: .romanNumerals).x == "LX") // 50+10
    #expect(translator.translate(61, to: .romanNumerals).x == "LXI") // 50+10+1
    #expect(translator.translate(62, to: .romanNumerals).x == "LXII") // 50+10+1+1
    #expect(translator.translate(63, to: .romanNumerals).x == "LXIII") // 50+10+1+1+1
    #expect(translator.translate(64, to: .romanNumerals).x == "LXIV") // 50+10-1+5
    #expect(translator.translate(65, to: .romanNumerals).x == "LXV") // 50+10+5
    #expect(translator.translate(66, to: .romanNumerals).x == "LXVI") // 50+10+5+1
    #expect(translator.translate(67, to: .romanNumerals).x == "LXVII") // 50+10+5+1+1
    #expect(translator.translate(68, to: .romanNumerals).x == "LXVIII") // 50+10+5+1+1+1
    #expect(translator.translate(69, to: .romanNumerals).x == "LXIX") // 50+10-1+10
    #expect(translator.translate(70, to: .romanNumerals).x == "LXX") // 50+10+10
    #expect(translator.translate(71, to: .romanNumerals).x == "LXXI") // 50+10+10+1
    #expect(translator.translate(72, to: .romanNumerals).x == "LXXII") // 50+10+10+1+1
    #expect(translator.translate(73, to: .romanNumerals).x == "LXXIII") // 50+10+10+1+1+1
    #expect(translator.translate(74, to: .romanNumerals).x == "LXXIV") // 50+10+10-1+5
    #expect(translator.translate(75, to: .romanNumerals).x == "LXXV") // 50+10+10+5
    #expect(translator.translate(76, to: .romanNumerals).x == "LXXVI") // 50+10+10+5+1
    #expect(translator.translate(77, to: .romanNumerals).x == "LXXVII") // 50+10+10+5+1+1
    #expect(translator.translate(78, to: .romanNumerals).x == "LXXVIII") // 50+10+10+5+1+1+1
    #expect(translator.translate(79, to: .romanNumerals).x == "LXXIX") // 50+10+10-1+10
    #expect(translator.translate(80, to: .romanNumerals).x == "LXXX") // 50+10+10+10
    #expect(translator.translate(81, to: .romanNumerals).x == "LXXXI") // 50+10+10+10+1
    #expect(translator.translate(82, to: .romanNumerals).x == "LXXXII") // 50+10+10+10+1+1
    #expect(translator.translate(83, to: .romanNumerals).x == "LXXXIII") // 50+10+10+10+1+1+1
    #expect(translator.translate(84, to: .romanNumerals).x == "LXXXIV") // 50+10+10+10-1+5
    #expect(translator.translate(85, to: .romanNumerals).x == "LXXXV") // 50+10+10+10+5
    #expect(translator.translate(86, to: .romanNumerals).x == "LXXXVI") // 50+10+10+10+5+1
    #expect(translator.translate(87, to: .romanNumerals).x == "LXXXVII") // 50+10+10+10+5+1+1
    #expect(translator.translate(88, to: .romanNumerals).x == "LXXXVIII") // 50+10+10+10+5+1+1+1
    #expect(translator.translate(89, to: .romanNumerals).x == "LXXXIX") // 50+10+10+10-1+10
    #expect(translator.translate(90, to: .romanNumerals).x == "XC") // 100-10
    #expect(translator.translate(91, to: .romanNumerals).x == "XCI") // 100-10+1
    #expect(translator.translate(92, to: .romanNumerals).x == "XCII") // 100-10+1+1
    #expect(translator.translate(93, to: .romanNumerals).x == "XCIII") // 100-10+1+1+1
    #expect(translator.translate(94, to: .romanNumerals).x == "XCIV") // 100-10-1+5
    #expect(translator.translate(95, to: .romanNumerals).x == "XCV") // 100-10+5
    #expect(translator.translate(96, to: .romanNumerals).x == "XCVI") // 100-10+5+1
    #expect(translator.translate(97, to: .romanNumerals).x == "XCVII") // 100-10+5+1+1
    #expect(translator.translate(98, to: .romanNumerals).x == "XCVIII") // 100-10+5+1+1+1
    #expect(translator.translate(99, to: .romanNumerals).x == "XCIX") // 100-10-1+10
    #expect(translator.translate(100, to: .romanNumerals).x == "C") // 100
    #expect(translator.translate(101, to: .romanNumerals).x == "CI")
    #expect(translator.translate(160, to: .romanNumerals).x == "CLX")
    #expect(translator.translate(200, to: .romanNumerals).x == "CC") // 100+100
    #expect(translator.translate(207, to: .romanNumerals).x == "CCVII")
    #expect(translator.translate(222, to: .romanNumerals).x == "CCXXII")
    #expect(translator.translate(246, to: .romanNumerals).x == "CCXLVI")
    #expect(translator.translate(300, to: .romanNumerals).x == "CCC") // 100+100+100
    #expect(translator.translate(333, to: .romanNumerals).x == "CCCXXXIII")
    #expect(translator.translate(400, to: .romanNumerals).x == "CD") // 500-100
    #expect(translator.translate(444, to: .romanNumerals).x == "CDXLIV")
    #expect(translator.translate(500, to: .romanNumerals).x == "D") // 500
    #expect(translator.translate(555, to: .romanNumerals).x == "DLV")
    #expect(translator.translate(600, to: .romanNumerals).x == "DC") // 500+100
    #expect(translator.translate(654, to: .romanNumerals).x == "DCLIV")
    #expect(translator.translate(700, to: .romanNumerals).x == "DCC") // 500+100+100
    #expect(translator.translate(777, to: .romanNumerals).x == "DCCLXXVII")
    #expect(translator.translate(789, to: .romanNumerals).x == "DCCLXXXIX")
    #expect(translator.translate(800, to: .romanNumerals).x == "DCCC") // 500+100+100+100
    #expect(translator.translate(888, to: .romanNumerals).x == "DCCCLXXXVIII")
    #expect(translator.translate(900, to: .romanNumerals).x == "CM") // 1000-100
    #expect(translator.translate(1000, to: .romanNumerals).x == "M") // 1000
    #expect(translator.translate(1001, to: .romanNumerals).x == "MI")
    #expect(translator.translate(1_009, to: .romanNumerals).x == "MIX")
    #expect(translator.translate(1_066, to: .romanNumerals).x == "MLXVI")
    #expect(translator.translate(1_222, to: .romanNumerals).x == "MCCXXII")
    #expect(translator.translate(1_444, to: .romanNumerals).x == "MCDXLIV")
    #expect(translator.translate(1_666, to: .romanNumerals).x == "MDCLXVI")
    #expect(translator.translate(2_000, to: .romanNumerals).x == "MM")
    #expect(translator.translate(2_421, to: .romanNumerals).x == "MMCDXXI")
    #expect(translator.translate(2_999, to: .romanNumerals).x == "MMCMXCIX")
    #expect(translator.translate(3_000, to: .romanNumerals).x == "MMM")
    #expect(translator.translate(3_500, to: .romanNumerals).x == "MMMD")
    #expect(translator.translate(3_999, to: .romanNumerals).x == "MMMCMXCIX")
    #expect(translator.translate(5_000, to: .romanNumerals).x == "V_OVERLINE_")
    #expect(translator.translate(10_000, to: .romanNumerals).x == "X_OVERLINE_")
    #expect(translator.translate(19876, to: .romanNumerals).x == "XIX_OVERLINE_DCCCLXXVI")
    #expect(translator.translate(36_000, to: .romanNumerals).x == "XXXVI_OVERLINE_")
    #expect(translator.translate(50_000, to: .romanNumerals).x == "L_OVERLINE_")
    #expect(translator.translate(54321, to: .romanNumerals).x == "LIV_OVERLINE_CCCXXI")
    #expect(translator.translate(87654, to: .romanNumerals).x == "LXXXVII_OVERLINE_DCLIV")
    #expect(translator.translate(98765, to: .romanNumerals).x == "XCVIII_OVERLINE_DCCLXV")
    #expect(translator.translate(100_000, to: .romanNumerals).x == "C_OVERLINE_")
    #expect(translator.translate(123_456, to: .romanNumerals).x == "CXXIII_OVERLINE_CDLVI")
    #expect(translator.translate(300000, to: .romanNumerals).x == "CCC_OVERLINE_")
    #expect(translator.translate(500_000, to: .romanNumerals).x == "D_OVERLINE_")
    #expect(translator.translate(987_654, to: .romanNumerals).x == "CMLXXXVII_OVERLINE_DCLIV")
    #expect(translator.translate(1_000_000, to: .romanNumerals).x == "M_OVERLINE_")
    #expect(translator.translate(-1, to: .romanNumerals).x == "negative not allowed")
}
