import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {   
    guard A.count >= 1 && A.count <= 1_000_000_000 else { return 0 } 
    var minimumNumber = Int.max
    var dictNumbers: [Int: Int] = [:]
    for (index, number) in A.enumerated() {
        guard number >= 1 && number <= 100_000 else { return 0 } 
        if number < minimumNumber {
            minimumNumber = number
        }
        dictNumbers[number] = index
    }

    guard minimumNumber == 1 else { return 0 }

    for numberValue in minimumNumber...A.count {
        if dictNumbers[numberValue] == nil {
            return 0
        }
    }
    return 1
}