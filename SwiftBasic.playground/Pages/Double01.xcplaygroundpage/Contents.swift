//: [Previous](@previous)

import Foundation


let int8: Int8 = 5
let double = Double(int8)
print(double)

// ------------------------------------------------------------------------

let xx = Double(sign: .minus, exponent: 2, significand: 3)
// sign: 正數 or 負數
// exponent: 2 的指數
// significand: 所要乘以的數


// ------------------------------------------------------------------------

// 跟相乘後的數值相加
var a = 5.9
a.addProduct(34, 2)


// 取餘數 找最近的整除數，所以餘數可能是負數
var b: Double = 9
b.formRemainder(dividingBy: 5)
print("b: \(b)")


// 取餘數 皆為正數
var c: Double = 9
c.formTruncatingRemainder(dividingBy: 5)
print("c: \(c)")


// 取餘數 相反數
var d: Double = 8.7
d.negate()
print("d: \(d)")

// ------------------------------------------------------------------------

// Rounding - 進位
var w = 6.5
w.round(.toNearestOrAwayFromZero)

// Equivalent to the C 'trunc' function:
var x = 6.5
x.round(.towardZero)

// Equivalent to the C 'ceil' function:
var y = 6.5
y.round(.up)

// Equivalent to the C 'floor' function:
var z = 6.5
z.round(.down)

// ------------------------------------------------------------------------

















