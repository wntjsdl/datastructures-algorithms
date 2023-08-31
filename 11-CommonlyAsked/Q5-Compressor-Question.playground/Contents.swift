import UIKit

/*
 ___
/ __|___ _ __  _ __ _ _ ___ ______ ___ _ _
|(__/ _ \ '  \| '_ \ '_/ -_|_-<_-</ _ \ '_|
\___\___/_|_|_| .__/_| \___/__/__/\___/_|
              |_|
 
 // Challenge: Give a string with repeating characters (i.e. "aaabb") write
 // an algorithm that will compress the string down to the character, followed
 // by the number of times it appears in the string (i.e "a3b2").
 // If the compressed string is not smaller than original, return original.

 */

func compress(_ str: String) -> String {
    var answer = ""
    var sameCount = 1
    for s in str {
        if answer.isEmpty || answer.last != s {
            if sameCount != 1 {
                answer += String(sameCount)
                sameCount = 1
            }
            answer.append(s)
        } else if answer.last == s {
            sameCount += 1
        }
    }
    if sameCount != 1 {
        answer += String(sameCount)
    }
    return answer.count < str.count ? answer : str
}

compress("aaabb")           // a3b2
compress("aabb")            // aabb
compress("ab")              // ab
compress("abc")             // abc
compress("zzz")             // z3
compress("aabbaabb")        // aabbaabb (not shorter)
