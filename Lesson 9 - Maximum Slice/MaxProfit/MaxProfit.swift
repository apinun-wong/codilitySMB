import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    guard A.count >= 0 && A.count <= 400_000 else { return 0 }
    var maxEnding = 0
    var maxSlice = 0
    for (index, _) in A.enumerated() {
        guard index + 1 < A.count else {
            break
        }
        guard A[index] >= 0 && A[index] <= 200_000 else { continue }
        let gapPrice = A[index + 1] - A[index]
        maxEnding = max(0, maxEnding + gapPrice)
        maxSlice = max(maxEnding, maxSlice) 
    }
    return maxSlice
}