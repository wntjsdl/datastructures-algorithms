import Foundation
import XCTest

/*
 CheckBST
 https://www.hackerrank.com/challenges/ctci-is-binary-search-tree/problem
 
 Given the root node of a binary tree, determine if it is a binary search tree.
 
 The Node class is defined as follows:
    class Node {
        int data;
        Node left;
        Node right;
     }
*/

class Node {
    var key: Int
    var left: Node?
    var right: Node?
    
    init(_ data: Int) {
        self.key = data
    }
}

func checkBST(root: Node?) -> Bool {
    if root == nil {
        return false
    }
    if let left = root?.left {
        if left.key >= root!.key {
            return false
        } else {
            checkBST(root: left)
        }
    }
    if let right = root?.right {
        if right.key <= root!.key {
            return false
        } else {
            checkBST(root: right)
        }
    }
    return true
}

let node1 = Node(1)
let node2 = Node(2)
let node3 = Node(3)
let node4 = Node(4)
let node5 = Node(5)
let node6 = Node(6)
node3.left = node5
node3.right = node2
node5.left = node1
node5.right = node4
node2.left = node6

let n1 = Node(1)
let n2 = Node(2)
let n3 = Node(3)
let n4 = Node(4)
let n5 = Node(5)
let n6 = Node(6)
n4.left = n2
n2.left = n1
n2.right = n3
n4.right = n5
n5.right = n6

checkBST(root: node3)
checkBST(root: n4)


