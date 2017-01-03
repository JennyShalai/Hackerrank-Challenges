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
    
    // find how many nodes in first list
    var lengthOne = 0
    var nodeOne = headOne
    while nodeOne != nil {
        lengthOne += 1
        nodeOne = nodeOne!.next
    }
    
    // find how many nodes in second list
    var lengthTwo = 0
    var nodeTwo = headTwo
    while nodeTwo != nil {
        lengthTwo += 1
        nodeTwo = nodeTwo!.next
    }
    
    // shrink longest list
    nodeOne = headOne
    nodeTwo = headTwo
    if lengthOne > lengthTwo {
        let i = lengthOne - lengthTwo
        for _ in 0..<i {
            nodeOne = nodeOne!.next
        }
    } else {
        let i = lengthOne - lengthTwo
        for _ in 0..<i {
            nodeTwo = nodeTwo!.next
        }
    }
    
    // try to find the merge point
    while nodeOne != nil {
        if nodeOne === nodeTwo {
            return nodeOne
        }
        nodeOne = nodeOne!.next
        nodeTwo = nodeTwo!.next
    }
    
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

let headTwo = Node.init(value: 3)
let oneTwo = Node.init(value: 4)
headTwo.next = oneTwo

let mergeFive = Node.init(value: 5)
let mergeSix = Node.init(value: 6)
threeOne.next = mergeFive
oneTwo.next = mergeFive
mergeFive.next = mergeSix

print(printNodes(head: headOne))        //   1->2->3->4
//                                                     ->5->6->nil
print(printNodes(head: headTwo))        //         3->4

let mergePoint = (findMergeNode(headOne: headOne, headTwo: headTwo))
print(mergePoint!.value)                // 5
