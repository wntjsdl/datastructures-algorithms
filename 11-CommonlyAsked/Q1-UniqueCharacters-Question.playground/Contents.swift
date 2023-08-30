import UIKit

/*
 _   _      _                ___ _
| | | |_ _ (_)__ _ _  _ ___ / __| |_  __ _ _ _ ___
| |_| | ' \| / _` | || / -_) (__| ' \/ _` | '_(_-<
 \___/|_||_|_\__, |\_,_\___|\___|_||_\__,_|_| /__/
                |_|

 Challenge: Given a string, see if you can detect whether it contains only unique chars.
 
 */

func isUnique(_ text: String) -> Bool {
    var str = text
    for _ in 0..<str.count-1 {
        if let last = str.popLast() {
            if str.contains(last) {
                return false
            }
        }
    }
    return true
}

isUnique("ab")
isUnique("aa")
isUnique("abcdefghijklmnopqrstuvwxyz")
