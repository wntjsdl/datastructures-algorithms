import UIKit

/*
 ___      _    _
/ __|_  _| |__| |_ _ _ ___ ___
\__ \ || | '_ \  _| '_/ -_) -_)
|___/\_,_|_.__/\__|_| \___\___|

 // Challenge: T1 is a large binary tree and T2 is a smaller one. Write an
 // algorithm to determine if T2 is a subtree of T1.

 Root
                5
              3   7
             2 4 6 8
 
 Subtree
                7
               6 8
 
 */

class Node {
    var key: Int
    var left: Node?
    var right: Node?
    
    init(_ data: Int) {
        self.key = data
    }
}

func isSubTree(_ tree: Node, _ subTree: Node) -> Bool {
    let current = tree
    if let left = tree.left {
        if left.key == subTree.key {
            return true
        } else {
            isSubTree(left, subTree)
        }
    }
    if let right = tree.right {
        if right.key == subTree.key {
            return true
        } else {
            isSubTree(right, subTree)
        }
    }
    return false
}

let root = Node(7)
root.left = Node(6)
let node8 = Node(8)
let node9 = Node(9)
root.right = node8

isSubTree(root, node8)
