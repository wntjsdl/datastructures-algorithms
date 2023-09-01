import UIKit

/*
 ___     _                      ___                          _
|_ _|_ _| |_ ___ __ _ ___ _ _  | _ \_____ _____ _ _ ___ __ _| |
 | || ' \  _/ -_) _` / -_) '_| |   / -_) V / -_) '_(_-</ _` | |
|___|_||_\__\___\__, \___|_|   |_|_\___|\_/\___|_| /__/\__,_|_|
                |___/
 
 // Challenge: Given an int, reverse its digits.
 // x = 123, return 321
 // x= -123, return -321

 */

func reverse(_ x: Int) -> Int {
    if x >= 0 {
        let numberStr = String(x).reversed()
        return Int(String(numberStr))!
    } else {
        var numberStr = "-"
        numberStr += String(abs(x)).reversed()
        return Int(numberStr)!
    }
}

reverse(123)    // 321
reverse(-123)   // -321
