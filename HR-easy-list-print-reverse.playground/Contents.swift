// HR - easy - list - print - reverse
// https://www.hackerrank.com/challenges/print-the-elements-of-a-linked-list-in-reverse


class Node {
    
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}


// printing list values
func printList(head: Node?) {
    
    if head == nil {
        print("nil")
    }
    
    var node = head
    
    while node != nil {
        print(node!.value)
        node = node!.next
    }
    
}


// printing list values in reverse order
func printReverse(head: Node?) {

    if head == nil {
        print("nil")
    }
    
    var node = head
    var newHead = Node.init(value: node!.value)
    if node!.next != nil {
        node = node!.next
    } else {
        print(node!.value)
        return
    }
    while node != nil {
        let newNode = Node.init(value: node!.value)
        newNode.next = newHead
        newHead = newNode
        node = node!.next
    }
    
    printList(head: newHead)
}




let head = Node.init(value: 0)
let one = Node.init(value: 1)
let two = Node.init(value: 2)
let three = Node.init(value: 3)
head.next = one
one.next = two
two.next = three

print("Print list:")
printList(head: head)
print("Print reverse:")
printReverse(head: head)

// Print list:
// 0
// 1
// 2
// 3
// Print reverse:
// 3
// 2
// 1
// 0
