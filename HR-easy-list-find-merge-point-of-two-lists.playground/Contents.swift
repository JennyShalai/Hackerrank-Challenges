// HR - easy - list - find Merge Point of Two Lists
// https://www.hackerrank.com/challenges/find-the-merge-point-of-two-joined-linked-lists


class Node {
    var value: Int
    var next: Node?
    init(value: Int) {
        self.value = value
    }
}


func findMergeNode(headOne: Node?, headTwo: Node?) -> Node? {

    return nil
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




let headOne = Node.init(value: 1)
let oneOne = Node.init(value: 2)
let twoOne = Node.init(value: 3)
let threeOne = Node.init(value: 4)
headOne.next = oneOne
oneOne.next = twoOne
twoOne.next = threeOne

let headTwo = Node.init(value: 2)
let oneTwo = Node.init(value: 3)
let twoTwo = Node.init(value: 4)
headTwo.next = oneTwo
oneTwo.next = twoTwo

let mergeFive = Node.init(value: 5)
let mergeSix = Node.init(value: 6)
threeOne.next = mergeFive
twoTwo.next = mergeFive
mergeFive.next = mergeSix

print(printNodes(head: headOne))        //   1 2 3 4
                                        //            5 6
print(printNodes(head: headTwo))        //     2 3 4

