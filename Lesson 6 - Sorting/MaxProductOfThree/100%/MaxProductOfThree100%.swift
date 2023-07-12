import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    guard A.count >= 3 && A.count <= 100_000 else { return 0 }
    let numbers = A.sorted()
    let count = numbers.count
    let product1 = numbers[0] * numbers[1] * numbers[2]
    let product2 = numbers[count-3] * numbers[count-2] * numbers[count-1]
    let product3 = numbers[0] * numbers[1] * numbers[count - 1]
    let product4 = numbers[0] * numbers[count-2] * numbers[count-1]

    let max1 = max(product1, product2)
    let max2 = max(product3, product4)

    return max(max1, max2)
}