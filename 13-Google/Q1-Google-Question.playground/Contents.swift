import UIKit

/*
 ___                _
/ __|___  ___  __ _| |___
|(_ / _ \/ _ \/ _` | / -_)
\___\___/\___/\__, |_\___|
              |___/
 
 Given a set of numbers, determine if there is a pair that equals a given sum.
 
 */

func hasPairWithSum(_ arr: [Int], _ sum: Int) -> Bool {
    for i in 0..<arr.count-1 {
        if i > sum { continue }
        for j in i+1..<arr.count {
            if arr[i] + arr[j] == sum {
                return true
            }
        }
    }
    return false
}

hasPairWithSum([1, 2, 4, 9], 8)     // false
hasPairWithSum([1, 2, 4, 4], 8)     // true
