// HR - easy - list - add new node at the head
//https://www.hackerrank.com/challenges/insert-a-node-at-the-head-of-a-linked-list

class Node {
    
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}

// inserting new Node at the beginning of the list
func insert(head: Node?, data: Int) -> Node? {
    
    let new = Node.init(value: data)
    new.next = head
    
    return new
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


let new = insert(head: head, data: 2)
print(printNodes(head: new))    // 2 0 1