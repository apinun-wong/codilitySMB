import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    guard A.count >= 0 && A.count <= 100_000 else { return 0 }
    var numberValues: [Int: Int] = [:]
    for (index, number) in A.enumerated() {
        guard number >= -1_000_000 && number <= 1_000_000 else { continue }
        numberValues[number] = index
    }
    return numberValues.keys.count
}