//: [Previous](@previous)

import Foundation

// escaping

// 參數為一個閉包的函式 參數型別前面標註 @escaping
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
