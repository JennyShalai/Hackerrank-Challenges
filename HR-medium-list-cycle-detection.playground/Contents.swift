// hackerrank - medium - lists
// A linked list is said to contain a cycle if any node is visited more than once while traversing the list.


class Node {
    let value : Int
    weak var next : Node?
    init(value: Int) {
        self.value = value
    }
}


func isCycleDetected(head: Node?) -> Bool {
 
    if head == nil {
        return false
    }
    
    var slowPointer = head
    var fastPointer = head
    
    while true {
        if fastPointer!.next != nil && fastPointer!.next!.next != nil {
            fastPointer = fastPointer!.next!.next!
            slowPointer = slowPointer!.next
        } else {
            return false
        }
        
        if slowPointer === fastPointer {
            return true
        }
    }
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


