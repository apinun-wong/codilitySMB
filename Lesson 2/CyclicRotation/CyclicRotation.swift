import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    guard A.count >= 0 && A.count <= 100, K >= 0 && K <= 100 else { return A }
    var newNumbers = A
    for (index, number) in A.enumerated() {
        let newIndex = (index + K) % A.count
        newNumbers[newIndex] = number
    }
    return newNumbers
}