// hackerrank - medium - lists
// A linked list is said to contain a cycle if any node is visited more than once while traversing the list.


class Node {
    
    var visited = false
    let value : Int
    
    weak var next : Node?
    
    init(value: Int) {
        self.value = value
    }
    
}


func isCycleDetected(head: Node?) -> Bool {
 
    var currentNode = head
    
    while currentNode != nil {
        
        if currentNode!.visited {
            return true
        }
        
        currentNode?.visited = true
        currentNode = currentNode?.next
    }
    
    return false
}

let head = Node.init(value: 0)
let one = Node.init(value: 1)
let two = Node.init(value: 2)
let three = Node.init(value: 3)

head.next = one
one.next = two
two.next = three

print(isCycleDetected(head: head))  // false

head.next = one
one.next = two
two.next = one

print(isCycleDetected(head: head))  // true


