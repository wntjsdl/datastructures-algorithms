import Foundation

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

class LinkList {
    private var head: Node?
        
    func addFront(_ data: Int) {
        let newNode = Node(data)
        newNode.next = head
        head = newNode
    }

    func getFirst() -> Int? {
        if head == nil {
            return nil
        }
        return head!.data
    }

    func addBack(_ data: Int) {
        let newNode = Node(data)
        
        if head == nil {
            head = newNode
            return
        }
        
        var node = head!
        while(node.next != nil) {
            node = node.next!
        }
        node.next = newNode
    }

    func getLast() -> Int? {
        if head == nil {
            return nil
        }
        
        var node = head!
        while(node.next != nil) {
            node = node.next!
        }
        return node.data
    }

    func insert(position: Int, data: Int) {
        if position == 0 {
            addFront(data)
            return
        }
        
        let newNode = Node(data)
        var currentNode = head
        
        for _ in 0..<position - 1 {
            currentNode = currentNode?.next!
        }
        newNode.next = currentNode?.next
        currentNode?.next = newNode
    }
    
    func deleteFirst() {
        head = head?.next
    }

    func deleteLast() {
        var nextNode = head
        var previousNode: Node?
        while(nextNode?.next != nil) {
            previousNode = nextNode
            nextNode = nextNode?.next
        }
        previousNode?.next = nil
    }
    
    func delete(at position: Int) {
        if position == 0 {
            self.deleteFirst()
            return
        }
        
        var nextNode = head
        var previousNode: Node?
        for _ in 0..<position {
            previousNode = nextNode
            nextNode = nextNode?.next
        }
        previousNode?.next = nextNode?.next
    }
    
    var isEmpty: Bool {
        if head == nil { return true } else { return false }
    }
    
    func clear() {
        head = nil
    }
    
    func printLinkedList() {
        if head == nil { return }
        
        var result = [Int]()
        var node = head
        result.append(node!.data)
        
        while node?.next != nil {
            result.append(node!.next!.data)
            node = node?.next
        }
        
        print(result)
    }
}

let linkedList = LinkList()
linkedList.addFront(3)
linkedList.addFront(2)
linkedList.addFront(1)
linkedList.printLinkedList()

linkedList.addFront(4)
linkedList.printLinkedList()

linkedList.addBack(5)
linkedList.printLinkedList()

linkedList.getFirst()
linkedList.getLast()

linkedList.insert(position: 2, data: 6)
linkedList.printLinkedList()

linkedList.deleteFirst()
linkedList.printLinkedList()

linkedList.deleteLast()
linkedList.printLinkedList()

linkedList.delete(at: 1)
linkedList.printLinkedList()

linkedList.isEmpty

linkedList.clear()
print("-------------")
linkedList.printLinkedList()
linkedList.isEmpty
