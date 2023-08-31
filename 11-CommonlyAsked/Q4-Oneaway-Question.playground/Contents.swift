import UIKit

/*
 ___
/ _ \ _ _  ___ __ ___ __ ____ _ _  _
|(_) | ' \/ -_) _` \ V  V / _` | || |
\___/|_||_\___\__,_|\_/\_/\__,_|\_, |
                                |__/

  Challenge: There are three types of edits that can be performed on strings:
  - insert a character
  - remove a character, or
  - replace a character.
 
  Given two strings, write a function to check if they are one or zero edits away.

 */

func oneAway(_ first: String, _ second: String) -> Bool {
    var notInCount = 0
    var firstStr = first
    for str in second {
        if let index = firstStr.firstIndex(of: str) {
            firstStr.remove(at: index)
            print(firstStr)
        } else {
            notInCount += 1
        }
    }
    return notInCount > 1 ? false : true
}

oneAway("pale", "paleXXXX")     // false
oneAway("pale", "ple")          // true
oneAway("pales", "pale")        // true
oneAway("pale", "bale")         // true
oneAway("pale", "bake")         // false
oneAway("pale", "bakeerer")     // false
