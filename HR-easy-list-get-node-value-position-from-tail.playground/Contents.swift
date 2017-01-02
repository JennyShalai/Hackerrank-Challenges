// HR - easy - list - get node value at given position count backwards from the tail
// https://www.hackerrank.com/challenges/get-the-value-of-the-node-at-a-specific-position-from-the-tail
// task constrait says: positionFromTail will be at least 0 and less than the number of nodes in the list, so can force unwrap for now

class Node {
    var value: Int
    var next: Node?
    init(value: Int) {
        self.value = value
    }
}


func getNodeValue(head: Node?, positionFromTail: Int) -> Int {
    var currentNode = head
    var neededNode = head
    var counter = -1
    
    // make a needed delta between needed node and tail
    while counter < positionFromTail {
        currentNode = currentNode!.next
        counter += 1
    }
    
    // moving right cornen of the delta to reach the tail
    // so left corner of the delta will position at needed node
    while currentNode != nil {
        neededNode = neededNode!.next
        currentNode = currentNode!.next
    }
    return neededNode!.value
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
let three = Node.init(value: 3)
let four = Node.init(value: 4)
let five = Node.init(value: 5)
let six = Node.init(value: 6)
head.next = one
one.next = two
two.next = three
three.next = four
four.next = five
five.next = six



print(printNodes(head: head))                           // 0 1 2 3 4 5 6
print(getNodeValue(head: head, positionFromTail: 2))    // 4
print(getNodeValue(head: head, positionFromTail: 0))    // 6
print(getNodeValue(head: head, positionFromTail: 6))    // 0




