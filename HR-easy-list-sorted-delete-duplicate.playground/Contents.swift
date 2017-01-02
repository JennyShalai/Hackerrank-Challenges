// HR - easy - list - delete duplicate-values in ascending sorted list
// https://www.hackerrank.com/challenges/delete-duplicate-value-nodes-from-a-sorted-linked-list


class Node {
    var value: Int
    var next: Node?
    init(value: Int) {
        self.value = value
    }
}

// deleting duplicates in asc. sorted list
func deleteDuplicate(head: Node?) -> Node? {
    
    if head == nil || head!.next == nil {
        return head
    }
    
    var stableNode = head
    var currentNode = head
    while currentNode != nil {
        if currentNode!.next != nil && currentNode!.value < currentNode!.next!.value {
            stableNode!.next = currentNode!.next
            stableNode = stableNode!.next
        }
        currentNode = currentNode!.next
    }
    
    stableNode!.next = nil
    return head
}



// printing out list
func printNodes(head: Node?) -> String {
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
let three = Node.init(value: 2)
let four = Node.init(value: 4)
let five = Node.init(value: 6)
let six = Node.init(value: 6)
head.next = one
one.next = two
two.next = three
three.next = four
four.next = five
five.next = six

print(printNodes(head: head))   // 0 1 2 2 4 6 6
let noDublicatesList = deleteDuplicate(head: head)
print(printNodes(head: head))   // 0 1 2 4 6
