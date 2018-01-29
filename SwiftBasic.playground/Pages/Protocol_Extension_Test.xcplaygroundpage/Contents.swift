//: [Previous](@previous)

import Foundation

var number = 0

protocol Test {
    func getDeviceList() -> [String]
}

extension Test {
    internal func getDeviceList() -> [String] {
        return DeviceServiceData.shared.deviceList
    }
}

class DeviceServiceData: NSObject {
    internal static let shared = DeviceServiceData()

    // Device List
    internal var deviceList = [String]()

    override init() {
        number += 1
        self.deviceList = ["a", "b", "c"]
    }
}

class TTT: Test {}

let test = TTT()
let list = test.getDeviceList()
print(number)
print(list)


class TTTTT: Test {}

let test2 = TTTTT()
let list2 = test2.getDeviceList()
print(number)
print(list2)


let a = DeviceServiceData()
print(number)
