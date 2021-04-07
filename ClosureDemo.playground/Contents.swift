import UIKit

// 影片連結
// https://www.raywenderlich.com/5429279-programming-in-swift-functions-and-types/lessons/10

// Function 與 Closure 的差異
// https://drive.google.com/file/d/1SksZzT1TfSMzvo_UL8VqR6hcHaVQ-Nex/view?usp=sharing



// -------------------------------

/*
 * 一般需要傳入參數的 function
 */

func add(a: Int, b: Int) -> Int {
    return a + b
}

let result = add(a: 5, b: 8)
print("result: \(result)")



// -------------------------------

/*
 * Closure
 */


// Closure 最原始樣貌

//var addClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
//
//    return a + b
//}


// Closure 進化第一版（因為行為只有一行，所以可以省略 return）

//var addClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
//
//    a + b
//}


// Closure 進化第二版（省略 var 變數的 data type）

var addClosure = { (a: Int, b: Int) -> Int in

    a + b
}


// 使用 Closure
addClosure(1, 9)



// -------------------------------

/*
 * 將 Closure 當成一個參數，傳入 function 裡使用
 */


// 宣告一個需要傳入 closure 當參數的 function
func printResultAction(closureParamater: (Int, Int) -> Int, num1: Int, num2: Int) {
    
    let sumResult = closureParamater(num1, num2)
    print("sumResult: \(sumResult)")
}


// 執行傳入 closure 當參數的 function
// 這邊用上面剛做好的 addClosure 當傳入參數
printResultAction(closureParamater: addClosure, num1: 2, num2: 3)


