import UIKit

/*
 ___            _              _
| __|_ _ __ ___| |__  ___  ___| |__
| _/ _` / _/ -_) '_ \/ _ \/ _ \ / /
|_|\__,_\__\___|_.__/\___/\___/_\_\

 Give a binary tree node, write a copy function that duplicates
 the right and left branches of the node.
 */

class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(_ data: Int) {
        self.data = data
    }
    
    func copy(_ node: Node) {
        // Do your work here...
        self.data = node.data
        self.left = node.left
        self.right = node.right
//        return Node(0)
    }
    
    func answerCopy() -> Node {
        let newNode = Node(data)
        if let left = left {
            newNode.left = left.answerCopy()
        }
        if let right = right {
            newNode.right = right.answerCopy()
        }
        return newNode
    }
}

