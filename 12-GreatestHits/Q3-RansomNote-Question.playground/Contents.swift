import UIKit

/*
 ___                               _  _     _       _
| _ \__ _ _ _  ___ ___ _ __  ___  | \| |___| |_ ___| |
|   / _` | ' \(_-</ _ \ '  \/ -_) | .` / _ \  _/ -_)_|
|_|_\__,_|_||_/__/\___/_|_|_\___| |_|\_\___/\__\___(_)

 // Challenge: Write a ransom note by cutting letters out of the available
 // magazines and pasting them together to form a letter. Given an arbitrary
 // ransom note string and another string containing all the contents of all
 // the magazines, write a function that will return true if the ransom
 // note can be made from the magazines; otherwise, it will return false.
 // Every letter found in the magazine string can only be used once in your
 // ransom note.

 // Assumption: We don't need to count spaces in our note
 */

func canWrite(note: String, letters: String) -> Bool {
    let noteMap = map(note.components(separatedBy: " ").joined())
    let letterMap = map(letters)
    
    for (key, _) in noteMap {
        if letterMap[key] == nil {
            return false
        }
        
        let noteCount = noteMap[key]!
        let letterCount = letterMap[key]!
        
        if letterCount < noteCount {
            return false
        }
    }
    return true
}

func map(_ text: String) -> [Character: Int] {
    var map = [Character: Int]()
    let chars = Array(text)
    
    for char in chars {
        if map[char] != nil {
            map[char] = map[char]! + 1
        } else {
            map[char] = 1
        }
    }
    return map
}

canWrite(note: "Pay", letters: "yaP")
canWrite(note: "Pay", letters: "yaP a")
canWrite(note: "Pay me $1000", letters: "ayPem0001$")
canWrite(note: "Pay", letters: "Pa")
