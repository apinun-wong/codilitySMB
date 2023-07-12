import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    guard A.count >= 3 && A.count <= 100_000 else { return 0 }
    var firstPosition = 0
    var maximum = -Int.max
    repeat {
        guard A[firstPosition] >= -1_000 && A[firstPosition] <= 1000 else {
            firstPosition += 1
            continue
        }
        for indexSecond in (firstPosition + 1)..<A.count {
            guard A[indexSecond] >= -1_000 && A[indexSecond] <= 1000 else {
                continue
            }
            let thirdPosition = indexSecond + 1
            for indexThird in (thirdPosition)..<A.count {
                guard A[indexThird] >= -1_000 && A[indexThird] <= 1000 else {
                    continue
                }
                let total = A[firstPosition] * A[indexSecond] * A[indexThird]
                if maximum < total {
                    maximum = total
                }
            }
        }
        firstPosition += 1
    } while ((firstPosition + 2) < A.count)
    return maximum
}