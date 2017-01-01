// HR - easy - list - reverse
// https://www.hackerrank.com/challenges/reverse-a-linked-list


class Node {
    
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}


// reversing list
func reverseList(head: Node?) -> Node? {
    
    if head == nil || head!.next == nil {
        return head
    }
    
    var newHead = Node.init(value: head!.value)
    var node = head!.next
    
    while node != nil {
        
        let newNode = Node.init(value: node!.value)
        newNode.next = newHead
        newHead = newNode
        
        node = node!.next
    }
    
    return newHead
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
let three = Node.init(value: 3)
let four = Node.init(value: 4)
let five = Node.init(value: 5)
head.next = one
one.next = two
two.next = three
three.next = four
four.next = five

let reversedList = reverseList(head: head)
print(printNodes(head: reversedList))   // 5 4 3 2 1 0