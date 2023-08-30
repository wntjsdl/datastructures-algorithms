import UIKit

/*
 ___                   _        _   _
| _ \___ _ _ _ __ _  _| |_ __ _| |_(_)___ _ _  ___
|  _/ -_) '_| '  \ || |  _/ _` |  _| / _ \ ' \(_-<
|_| \___|_| |_|_|_\_,_|\__\__,_|\__|_\___/_||_/__/

 Challenge: Given two strings, check if one is a permutation of the other.
 
 */

func isPermutation(_ text: String, _ perm: String) -> Bool {
    if text.count != perm.count {
        return false
    }
    var textArr = Array(text)
    var permArr = Array(perm)
    for _ in textArr {
        if let last = textArr.popLast() {
            if !permArr.contains(last) {
                return false
            }
        }
    }
    return true
}

isPermutation("abc", "cba") // true
isPermutation("abc", "xyz") // false
