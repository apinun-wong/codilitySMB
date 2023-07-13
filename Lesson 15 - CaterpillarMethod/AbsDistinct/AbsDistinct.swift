import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    guard A.count >= 1 && A.count <= 100_000 else { return 0 }
    var dictNumbers: [Int: Int] = [:]
    for (index, number) in A.enumerated() {
        guard number >= -2147483648 && number <= 2147483647 else { continue }
        let absoluteNumber = abs(number)
        dictNumbers[absoluteNumber] = index
    }
    return dictNumbers.keys.count
}