import UIKit

// https://www.fullstack.cafe/interview-questions/stacks

/*
 Giving a String, write a function that reverses the String
 using a stack.
 */

func solution(_ text: String) -> String {
    // Do your work here...
    var arr = Array(text)
    arr.reverse()
    return String(arr)
}

solution("abc") // cba
solution("Would you like to play a game?")
