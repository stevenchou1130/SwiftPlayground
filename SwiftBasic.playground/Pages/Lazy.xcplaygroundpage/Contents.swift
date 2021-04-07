//: Lazy
// 延遲載入，在變數前加上 lazy 修飾字且該變數一定要有初始值。有加上 lazy 修飾字的變數它所參考到的物件並不會立刻生成，而是當開始操作該物件時才會生成。


import Foundation

func calWorkAge(userName: String) -> Float {
    // 計算年資演算法...
    return 0
}

class User {

    var name: String!
    lazy var workAge: Float = 0

    init(name: String, workAge: Float) {
        self.name = name
        self.workAge = calWorkAge(userName: self.name)
    }
}

let user: User = User(name: "John", workAge: 0)


// -----------------------------


class ClassA {
    lazy var str: String = {
        let str = "Hello"
        print("只在首次訪問輸出")
        return str
    }()

    var str2: String = {
        let str2 = "Test2"
        print(str2)
        return str2
    }()

    var str3: String {
        let str3 = "Test3"
        print(str3)
        return str3
    }
}

let a = ClassA()
a.str
print(a.str)
a.str = "AAA"
print(a.str)

//a.str2
//a.str2
//a.str2

print("--------------")

// -----------------------------

/*
另外一個不太引起注意的是，在 Swift 的標準庫中，我們還有一組 lazy 方法，它們的定義是這樣的：

func lazy<S : SequenceType>(s: S) -> LazySequence<S>

func lazy<S : CollectionType where S.Index : RandomAccessIndexType>(s: S)
    -> LazyRandomAccessCollection<S>

func lazy<S : CollectionType where S.Index : BidirectionalIndexType>(s: S)
    -> LazyBidirectionalCollection<S>

func lazy<S : CollectionType where S.Index : ForwardIndexType>(s: S)
    -> LazyForwardCollection<S>

這些方法可以配合像 map 或是 filter 這類接受閉包並進行運行的方法一起，讓整個行為變成延時進行的。在某些情況下這麼做也對性能會有不小的幫助。
*/


// Sample:

let data = 1...3
let result = data.map {
    (i: Int) -> Int in
    print("正在處理 \(i)")
    return i * 2
}

print("準備訪問結果")
for i in result {
    print("操作後結果為 \(i)")
}

print("操作完畢")

print("--------------")

let data2 = 1...3
let result2 = data2.lazy.map {
    (i: Int) -> Int in
    print("正在處理 \(i)")
    return i * 2
}

print("準備訪問結果")
for i in result2 {
    print("操作後結果為 \(i)")
}

print("操作完畢")


