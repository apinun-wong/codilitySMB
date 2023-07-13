
import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ K : Int, _ A : inout [Int]) -> Int {
    guard A.count >= 1 && A.count <= 100_000,
          K >= 0 && K <= 1_000_000_000 else { return 0 }
    var count = 0
    for indexP in 0..<A.count {
        guard A[indexP] >= -1_000_000_000 && A[indexP] <= 1_000_000_000 else { continue } 
        for indexQ in indexP..<A.count {
            let result = findMaxAndMin(from: Array(A[indexP...indexQ]))
            if (result.max - result.min) <= K {
                count += 1
            }
        }
    }
    return count
}

private func findMaxAndMin(from numbers: [Int]) -> (max: Int, min: Int) {
    var max = Int.min
    var min = Int.max
    for number in numbers {
        if number > max {
            max = number
        }
        if number < min {
            min = number
        }
    }
    return (max: max, min: min)
}