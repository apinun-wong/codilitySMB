import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    let arrayNumber = A
    let countOfNumber = arrayNumber.count

    guard countOfNumber >= 1 && countOfNumber <= 1_000_0000 else { return 0 }

    var compareValues: [Int: Int] = [:]
    for number in arrayNumber {
        if compareValues[number] == nil {
            compareValues[number] = 1
        } else {
            if var increaseCount = compareValues[number]  {
                increaseCount += 1
                compareValues[number] = increaseCount
            }
        }
    }

    for (key, value) in compareValues {
        if value == 1 && (value % 2 == 1) && (value >= 1 && value <= 1_000_000_000) {
            return key
        }
    }

    return 0
}