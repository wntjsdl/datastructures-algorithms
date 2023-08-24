import Foundation
import XCTest

/*
 TreeHeight
 https://app.codility.com/programmers/trainings/4/tree_height/
 
 Height is the number of steps to the lowest leaf.
 Length of the longest path.
 Tree with one node has height of zero.
   
                    20
                  /    \
                8        22
              /   \
            4       12
                  /    \
                10      14
 */

class Node {
    var key: Int
    var left: Node?
    var right: Node?
    
    init(_ data: Int) {
        self.key = data
    }
}

var totalHeight = 0
func checkHeight(root: Node?, _ height: Int = 0) -> Int {
    if root == nil {
        return 0
    }
    totalHeight = height
    print("totalHeight: \(totalHeight)")
    if let left = root?.left {
        if totalHeight <= height {
            totalHeight += 1
        }
        checkHeight(root: left, totalHeight)
        if let right = root?.right {
            if totalHeight <= height {
                totalHeight += 1
            }
            checkHeight(root: right, totalHeight)
        }
    } else {
        if let right = root?.right {
            if totalHeight <= height {
                totalHeight += 1
            }
            checkHeight(root: right, totalHeight)
        }
    }
    print("totalHeight: \(totalHeight)")
    return totalHeight
}

let node1 = Node(1)
let node2 = Node(2)
let node3 = Node(3)
let node4 = Node(4)
let node5 = Node(5)
let node6 = Node(6)
let node7 = Node(7)
node4.left = node2
node2.left = node1
node2.right = node3
node4.right = node5
node5.right = node6
//node7.left = node6

print(checkHeight(root: node4))
