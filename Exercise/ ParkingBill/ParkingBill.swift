import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ E : inout String, _ L : inout String) -> Int {
    let enterTime = E.split(separator: ":")
    let leftTime = L.split(separator: ":")
    guard let enterHour = Int(enterTime[0]), 
           let enterMinute = Int(enterTime[1]),
           let leftHour = Int(leftTime[0]),
           let leftMinute = Int(leftTime[1]),
           checkHour(enterHour),
           checkHour(leftHour),
           checkMinute(enterMinute),
           checkMinute(leftMinute) else {
               return 0
           }

    let enterAllMinute = enterHour * 60 + enterMinute
    let leftAllMinute = leftHour * 60 + leftMinute

    guard leftAllMinute > enterAllMinute else { return 0 }
    let timeInParkMinutes = leftAllMinute - enterAllMinute
    var hourInPark = Int(Float(timeInParkMinutes)/60.0)
    let minuteInPark = timeInParkMinutes % 60

    if minuteInPark != 0 {
        if minuteInPark > 0 {
            hourInPark += 1
        }
    }

    var totalPaid = 2
    for hour in 0..<hourInPark {
        if hour == 0 {
            totalPaid += 3
        } else {
            totalPaid += 4
        }
    }
    return totalPaid
}

struct CarTime {
    let hour: Int
    let minite: Int
}

private func checkHour(_ hour: Int) -> Bool {
    return hour >= 0 && hour <= 23
}

private func checkMinute(_ minute: Int) -> Bool {
    return minute >= 0 && minute <= 59
}