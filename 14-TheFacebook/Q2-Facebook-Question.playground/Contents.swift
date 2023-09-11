import UIKit

/*
 ___            _              _
| __|_ _ __ ___| |__  ___  ___| |__
| _/ _` / _/ -_) '_ \/ _ \/ _ \ / /
|_|\__,_\__\___|_.__/\___/\___/_\_\

 Write, in code, how one could represent the node of a binary tree.
 
 */

// Create your node here...
class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(data: Int) {
        self.data = data
    }
}

var node1 = Node(data: 2)
node1.left = Node(data: 1)
node1.right = Node(data: 3)
