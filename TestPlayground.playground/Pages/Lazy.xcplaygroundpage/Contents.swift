//: [Previous](@previous)

import Foundation

class TestModel {
    // 1
    var dateFormatter1 = DateFormatter()
    
    // 2
    var dateFormatter2: DateFormatter {
        let df = DateFormatter()
        return df
    }
    
    // 3
    lazy var dateFormatter3 = DateFormatter()
    
    // 4
    lazy var dateFormatter4: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "MM, YYYY"
        return df
    }()
}

print("--- 記憶體位置 ---")

let model = TestModel()

let df1_01 = model.dateFormatter1
let df1_02 = model.dateFormatter1

print("df1_01: \(df1_01)")
print("df1_02: \(df1_02)")

print("-----------------")

let df2_01 = model.dateFormatter2
let df2_02 = model.dateFormatter2

print("df2_01: \(df2_01)")
print("df2_02: \(df2_02)")

print("----------------")

let df3_01 = model.dateFormatter2
let df3_02 = model.dateFormatter2

print("df3_01: \(df3_01)")
print("df3_02: \(df3_02)")

print("----------------")

let df4_01 = model.dateFormatter4
let df4_02 = model.dateFormatter4

print("df4_01: \(df4_01)")
print("df4_02: \(df4_02)")

print("----------------")
