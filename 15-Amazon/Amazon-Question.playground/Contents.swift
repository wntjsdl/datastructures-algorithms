import UIKit

/*
   _
  /_\  _ __  __ _ ______ _ _
 / _ \| '  \/ _` |_ / _ \ ' \
/_/ \_\_|_|_\__,_/__\___/_||_|

 Write an algorithm that merges these two arrays into one.
 
 */

func merge(_ A: [Int], _ B: [Int]) -> [Int] {
    // Do your work here...
    var answer = [Int]()
    var i = 0
    var j = 0
    while true {
        if A.count == i && B.count == j {
            break
        } else if A.count == i {
            answer.append(B[j])
            j += 1
            print(answer)
            continue
        } else if B.count == j {
            answer.append(A[i])
            i += 1
            print(answer)
            continue
        }
        
        if A[i] < B[j] {
            answer.append(A[i])
            i += 1
        } else if B[j] < A[i] {
            answer.append(B[j])
            j += 1
        } else if A[i] == B[j] {
            answer.append(A[i])
            answer.append(B[j])
            i += 1
            j += 1
        }
        print(answer)
    }
    return answer
}

merge([1, 3, 5, 7], [2, 5, 8, 11, 14]) // [1, 2, 3, 5, 5, 7, 8, 11, 14]


