// Note: This file is automatically generated
//       It will be overwritten when testing

import Testing
@testable import NumberTranslator

@Test func Ukrainian() {
    let translator = NumberTranslator()
    // https: www.omniglot.com/language/numbers/ukrainian.htm
    #expect(translator.translate(0, to: .ukrainian).x == "нуль")
    #expect(translator.translate(1, to: .ukrainian).x == "один")
    #expect(translator.translate(2, to: .ukrainian).x == "два")
    #expect(translator.translate(3, to: .ukrainian).x == "три")
    #expect(translator.translate(4, to: .ukrainian).x == "чотири")
    #expect(translator.translate(5, to: .ukrainian).x == "п'ять")
    #expect(translator.translate(6, to: .ukrainian).x == "шість")
    #expect(translator.translate(7, to: .ukrainian).x == "сім")
    #expect(translator.translate(8, to: .ukrainian).x == "вісім")
    #expect(translator.translate(9, to: .ukrainian).x == "дев'ять")
    #expect(translator.translate(10, to: .ukrainian).x == "десять")
    #expect(translator.translate(11, to: .ukrainian).x == "одинадцять")
    #expect(translator.translate(12, to: .ukrainian).x == "дванадцять")
    #expect(translator.translate(13, to: .ukrainian).x == "тринадцять")
    #expect(translator.translate(14, to: .ukrainian).x == "чотирнадцять")
    #expect(translator.translate(15, to: .ukrainian).x == "п'ятнадцять")
    #expect(translator.translate(16, to: .ukrainian).x == "шістнадцять")
    #expect(translator.translate(17, to: .ukrainian).x == "сімнадцять")
    #expect(translator.translate(18, to: .ukrainian).x == "вісімнадцять")
    #expect(translator.translate(19, to: .ukrainian).x == "дев'ятнадцять")
    #expect(translator.translate(20, to: .ukrainian).x == "двадцять")
    #expect(translator.translate(30, to: .ukrainian).x == "тридцять")
    #expect(translator.translate(40, to: .ukrainian).x == "сорок")
    #expect(translator.translate(50, to: .ukrainian).x == "п'ятдесят") // or? п'ятдеся
    #expect(translator.translate(60, to: .ukrainian).x == "шістдесят")
    #expect(translator.translate(70, to: .ukrainian).x == "сімдесят")
    #expect(translator.translate(80, to: .ukrainian).x == "вісімдесят")
    #expect(translator.translate(90, to: .ukrainian).x == "дев'яносто")
    #expect(translator.translate(100, to: .ukrainian).x == "сто")
    #expect(translator.translate(1000, to: .ukrainian).x == "тисяча")
    // translated from russian
    #expect(translator.translate(0, to: .ukrainian).x == "нуль")
    #expect(translator.translate(1, to: .ukrainian).x == "один")
    #expect(translator.translate(2, to: .ukrainian).x == "два")
    #expect(translator.translate(3, to: .ukrainian).x == "три")
    #expect(translator.translate(4, to: .ukrainian).x == "чотири")
    #expect(translator.translate(5, to: .ukrainian).x == "п'ять")
    #expect(translator.translate(6, to: .ukrainian).x == "шість")
    #expect(translator.translate(7, to: .ukrainian).x == "сім")
    #expect(translator.translate(8, to: .ukrainian).x == "вісім")
    #expect(translator.translate(9, to: .ukrainian).x == "дев'ять")
    #expect(translator.translate(10, to: .ukrainian).x == "десять")
    #expect(translator.translate(11, to: .ukrainian).x == "одинадцять")
    #expect(translator.translate(12, to: .ukrainian).x == "дванадцять")
    #expect(translator.translate(13, to: .ukrainian).x == "тринадцять")
    #expect(translator.translate(14, to: .ukrainian).x == "чотирнадцять")
    #expect(translator.translate(15, to: .ukrainian).x == "п'ятнадцять")
    #expect(translator.translate(16, to: .ukrainian).x == "шістнадцять")
    #expect(translator.translate(17, to: .ukrainian).x == "сімнадцять")
    #expect(translator.translate(18, to: .ukrainian).x == "вісімнадцять")
    #expect(translator.translate(19, to: .ukrainian).x == "дев'ятнадцять")
    #expect(translator.translate(20, to: .ukrainian).x == "двадцять")
    #expect(translator.translate(23, to: .ukrainian).x == "двадцять три")
    #expect(translator.translate(30, to: .ukrainian).x == "тридцять")
    #expect(translator.translate(33, to: .ukrainian).x == "тридцять три")
    #expect(translator.translate(40, to: .ukrainian).x == "сорок")
    #expect(translator.translate(50, to: .ukrainian).x == "п'ятдесят")
    #expect(translator.translate(60, to: .ukrainian).x == "шістдесят")
    #expect(translator.translate(70, to: .ukrainian).x == "сімдесят")
    #expect(translator.translate(80, to: .ukrainian).x == "вісімдесят")
    #expect(translator.translate(90, to: .ukrainian).x == "дев'яносто")
    #expect(translator.translate(100, to: .ukrainian).x == "сто")
    #expect(translator.translate(101, to: .ukrainian).x == "сто один")
    #expect(translator.translate(111, to: .ukrainian).x == "сто одинадцять")
    #expect(translator.translate(131, to: .ukrainian).x == "сто тридцять один")
    #expect(translator.translate(200, to: .ukrainian).x == "двісті")
    #expect(translator.translate(245, to: .ukrainian).x == "двісті сорок п'ять")
    #expect(translator.translate(300, to: .ukrainian).x == "триста")
    #expect(translator.translate(375, to: .ukrainian).x == "триста сімдесят п'ять")
    #expect(translator.translate(400, to: .ukrainian).x == "чотириста")
    #expect(translator.translate(500, to: .ukrainian).x == "п'ятсот")
    #expect(translator.translate(600, to: .ukrainian).x == "шістсот")
    #expect(translator.translate(700, to: .ukrainian).x == "сімсот")
    #expect(translator.translate(800, to: .ukrainian).x == "вісімсот")
    #expect(translator.translate(900, to: .ukrainian).x == "дев'ятсот")
    #expect(translator.translate(999, to: .ukrainian).x == "дев'ятсот дев'яносто дев'ять")
    #expect(translator.translate(1_000, to: .ukrainian).x == "тисяча")
    #expect(translator.translate(1_348, to: .ukrainian).x == "тисяча триста сорок вісім")
    #expect(translator.translate(1_534, to: .ukrainian).x == "тисяча п'ятсот тридцять чотири")
    #expect(translator.translate(2_000, to: .ukrainian).x == "дві тисячі")
    #expect(translator.translate(2_345, to: .ukrainian).x == "дві тисячі триста сорок п'ять")
    #expect(translator.translate(3_000, to: .ukrainian).x == "три тисячі")
    #expect(translator.translate(4_000, to: .ukrainian).x == "чотири тисячі")
    #expect(translator.translate(5_000, to: .ukrainian).x == "п'ять тисяч")
    #expect(translator.translate(6_000, to: .ukrainian).x == "шість тисяч")
    #expect(translator.translate(7_000, to: .ukrainian).x == "сім тисяч")
    #expect(translator.translate(8_000, to: .ukrainian).x == "вісім тисяч")
    #expect(translator.translate(8_343, to: .ukrainian).x == "вісім тисяч триста сорок три")
    #expect(translator.translate(9_000, to: .ukrainian).x == "дев'ять тисяч")
    #expect(translator.translate(9_203, to: .ukrainian).x == "дев'ять тисяч двісті три")
    #expect(translator.translate(9_999, to: .ukrainian).x == "дев'ять тисяч дев'ятсот дев'яносто дев'ять")
    #expect(translator.translate(10_000, to: .ukrainian).x == "десять тисяч")
    #expect(translator.translate(11_000, to: .ukrainian).x == "одинадцять тисяч")
    #expect(translator.translate(11_111, to: .ukrainian).x == "одинадцять тисяч сто одинадцять")
    #expect(translator.translate(12_000, to: .ukrainian).x == "дванадцять тисяч")
    #expect(translator.translate(19_000, to: .ukrainian).x == "дев'ятнадцять тисяч")
    #expect(translator.translate(20_000, to: .ukrainian).x == "двадцять тисяч")
    #expect(translator.translate(21_000, to: .ukrainian).x == "двадцять одна тисяча")
    #expect(translator.translate(22_000, to: .ukrainian).x == "двадцять дві тисячі")
    #expect(translator.translate(23_000, to: .ukrainian).x == "двадцять три тисячі")
    #expect(translator.translate(24_000, to: .ukrainian).x == "двадцять чотири тисячі")
    #expect(translator.translate(25_000, to: .ukrainian).x == "двадцять п'ять тисяч")
    #expect(translator.translate(23_456, to: .ukrainian).x == "двадцять три тисячі чотириста п'ятдесят шість")
    #expect(translator.translate(41_000, to: .ukrainian).x == "сорок одна тисяча")
    #expect(translator.translate(99_999, to: .ukrainian).x == "дев'яносто дев'ять тисяч дев'ятсот дев'яносто дев'ять")
    #expect(translator.translate(100_000, to: .ukrainian).x == "сто тисяч")
    #expect(translator.translate(101_000, to: .ukrainian).x == "сто одна тисяча")
    #expect(translator.translate(101_111, to: .ukrainian).x == "сто одна тисяча сто одинадцять") // ? сто тисяча сто одинадцять
    #expect(translator.translate(234_567, to: .ukrainian).x == "двісті тридцять чотири тисячі п'ятсот шістдесят сім")
    #expect(translator.translate(243_382, to: .ukrainian).x == "двісті сорок три тисячі триста вісімдесят два")
    #expect(translator.translate(999_999, to: .ukrainian).x == "дев'ятсот дев'яносто дев'ять тисяч дев'ятсот дев'яносто дев'ять")
    #expect(translator.translate(1_000_000, to: .ukrainian).x == "один мільйон")
    #expect(translator.translate(2_000_000, to: .ukrainian).x == "два мільйони")
    #expect(translator.translate(3_000_000, to: .ukrainian).x == "три мільйони")
    #expect(translator.translate(4_000_000, to: .ukrainian).x == "чотири мільйони")
    #expect(translator.translate(5_000_000, to: .ukrainian).x == "п'ять мільйонів")
    #expect(translator.translate(6_000_000, to: .ukrainian).x == "шість мільйонів")
    #expect(translator.translate(7_000_000, to: .ukrainian).x == "сім мільйонів")
    #expect(translator.translate(8_000_000, to: .ukrainian).x == "вісім мільйонів")
    #expect(translator.translate(101_000_000, to: .ukrainian).x == "сто один мільйон")
    #expect(translator.translate(101_101_111, to: .ukrainian).x == "сто один мільйон сто одна тисяча сто одинадцять")
    #expect(translator.translate(234_567_890, to: .ukrainian).x == "двісті тридцять чотири мільйони п'ятсот шістдесят сім тисяч вісімсот дев'яносто")
    #expect(translator.translate(999_999_999, to: .ukrainian).x == "дев'ятсот дев'яносто дев'ять мільйонів дев'ятсот дев'яносто дев'ять тисяч дев'ятсот дев'яносто дев'ять")
    #expect(translator.translate(1_000_000_000, to: .ukrainian).x == "один мільярд")
    #expect(translator.translate(2_000_000_000, to: .ukrainian).x == "два мільярди")
    #expect(translator.translate(10_000_000_000, to: .ukrainian).x == "десять мільярдів")
    #expect(translator.translate(1_000_000_000_000, to: .ukrainian).x == "один трильйон")
    #expect(translator.translate(2_000_000_000_000, to: .ukrainian).x == "два трильйони")
    #expect(translator.translate(10_000_000_000_000, to: .ukrainian).x == "десять трильйонів")
}
