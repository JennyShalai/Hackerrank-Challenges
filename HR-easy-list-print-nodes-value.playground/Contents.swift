// HR - easy - list - print nodes value
// https://www.hackerrank.com/challenges/print-the-elements-of-a-linked-list


class Node {
    
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}


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
let three = Node.init(value: 3)

head.next = one
one.next = two
two.next = three


print(printNodes(head: head))   // 0 1 2 3