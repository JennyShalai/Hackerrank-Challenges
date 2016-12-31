// HR - easy - list - Insert a Node at the Tail of a Linked List
// https://www.hackerrank.com/challenges/insert-a-node-at-the-tail-of-a-linked-list

class Node {
    
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}


// adding new node to the tail
func insert(head: Node?, data: Int) {
    
    var node = head
    var last = head
    
    while node != nil {
        last = node
        node = node!.next
    }
    
    let new = Node.init(value: data)
    last!.next = new
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
head.next = one


insert(head: head, data: 2)
print(printNodes(head: head))   // 0 1 2
