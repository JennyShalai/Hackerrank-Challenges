// HR - easy - list - delete node
// https://www.hackerrank.com/challenges/delete-a-node-from-a-linked-list

class Node {
    
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}


// delete Node from given position
func insert(head: Node?, position: Int) -> Node? {
    
    if position == 0 {
        return head?.next
    }
    
    var node = head
    var counter = 1
    
    while counter != position {
        node = node!.next
        counter += 1
    }
    
    let nodeForDeletion = node!.next
    node!.next = nodeForDeletion?.next
    
    
    return head
}

// printing out list
func printNodes(head: Node?) -> String {
    
    if head == nil {
        return "nil"
    }
    
    var result = ""
    var node = head
    
    while node != nil {
        result += "\(String(node!.value)) "
        node = node?.next
    }
    
    return result
}




let head = Node.init(value: 0)
let one = Node.init(value: 1)
let two = Node.init(value: 2)
head.next = one
one.next = two

let newList_0 = insert(head: head, position: 0)
print(printNodes(head: newList_0))    // 0 1 2 => 1 2

let newList_1 = insert(head: head, position: 1)
print(printNodes(head: newList_1))    // 0 1 2 => 0 2

let newList_2 = insert(head: head, position: 2)
print(printNodes(head: newList_2))    // 0 1 2 => 0 1
