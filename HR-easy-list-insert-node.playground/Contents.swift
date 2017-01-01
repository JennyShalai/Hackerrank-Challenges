// HR - easy - list - insert node
// https://www.hackerrank.com/challenges/insert-a-node-at-a-specific-position-in-a-linked-list


class Node {
    
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}


// inserting Node into given position
func insert(head: Node?, data: Int, position: Int) -> Node? {
    
    if position == 0 {
        let new = Node.init(value: data)
        new.next = head
        return new
    }
    
    var node = head
    var counter = 1
    
    while counter != position {
        node = node!.next
        counter += 1
    }
    
    let new = Node.init(value: data)
    new.next = node!.next
    node!.next = new
    
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

let newList_0 = insert(head: head, data: 10, position: 0)
print(printNodes(head: newList_0))    // 10 0 1 2

let newList_1 = insert(head: head, data: 10, position: 1)
print(printNodes(head: newList_1))    // 0 10 1 2

let newList_2 = insert(head: head, data: 10, position: 2)
print(printNodes(head: newList_2))    // 0 1 10 2

let newList_3 = insert(head: head, data: 10, position: 3)
print(printNodes(head: newList_3))    // 0 1 2 10

