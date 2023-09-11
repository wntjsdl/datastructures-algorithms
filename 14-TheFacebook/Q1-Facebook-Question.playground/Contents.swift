import UIKit

/*
 ___            _              _
| __|_ _ __ ___| |__  ___  ___| |__
| _/ _` / _/ -_) '_ \/ _ \/ _ \ / /
|_|\__,_\__\___|_.__/\___/\___/_\_\

 Determine which elements intersect between two given arrays.
 
 */

func intersect(_ A: [Int], _ B: [Int]) -> [Int] {
    var answer = [Int]()
    var set = Set<Int>()
    for i in A {
        set.insert(i)
    }
    for i in B {
        if set.contains(i) {
            answer.append(i)
        } else {
            set.insert(i)
        }
    }
    return answer
}

intersect([1, 2, 4, 5, 6], [2, 3, 5, 7]) // [2, 5]
