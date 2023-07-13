import UIKit

func showMaximumSliceO3(numbers: [Int]) -> Int {
    let count = numbers.count
    var result = 0
    for index in 0..<count {
        print("index: \(index)")
        for index2 in index..<count {
            print("-----------index2 \(index2)------------")
            var sum = 0
            if index2 + 1 < count {
                for index3 in index...(index2+1) {
                    print("index3: \(index3)")
                    sum += numbers[index3]
                }
                print("-------- sum: \(sum) --------")
            }
            result = max(result, sum)
        }
        print("-----------------------")
    }
    return result
}

func showMaximumSliceO2(numbers: [Int]) -> Int {
    let count = numbers.count
    var result = 0
    for index in 0..<count {
        print("index: \(index)")
        var sum = 0
        for index2 in index..<count {
            sum += numbers[index2]
            print("index2: \(index2) value: \(numbers[index2]), sum: \(sum)")
            result = max(result, sum)
        }
        print("-----------------------")
    }
    return result
}

func showMaximumSliceO1(numbers: [Int]) -> Int {
    var maxEnding = 0
    var maxSlice = 0
    for (index, number) in numbers.enumerated() {
        print("index: \(index), number: \(number)")
        maxEnding = max(0, maxEnding + number)
        maxSlice = max(maxSlice, maxEnding)
        print("maxEnding: \(maxEnding), maxSlice: \(maxSlice)")
    }
    return maxSlice
}

showMaximumSliceO1(numbers: [5,-7,3,5,-2,4,-1])
