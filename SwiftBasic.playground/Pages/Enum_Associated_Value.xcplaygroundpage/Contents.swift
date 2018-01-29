//: [Previous](@previous)

import Foundation

enum Barcode {
    case UPCA(Int, Int, Int)
    case QRCode(String)
}

class Test {
    func testFunc(productBarcode: Barcode) {
        switch productBarcode {
        case .UPCA(let numberSystem, let identifier, let check):
            print("UPC-A with value of \(numberSystem), \(identifier), \(check).")
        case .QRCode(let productCode):
            print("QR code with value of \(productCode).")
        }
    }
}

let upca = Barcode.UPCA(1, 2, 3)
let t = Test()
t.testFunc(productBarcode: upca)
