// HR - easy - list - merge two sorted lists
// https://www.hackerrank.com/challenges/merge-two-sorted-linked-lists


class Node {
    var value: Int
    var next: Node?
    init(value: Int) {
        self.value = value
    }
}


// merging two ascending lists togeter
func mergeLists(headOne: Node?, headTwo: Node?) -> Node? {

    if headOne == nil && headTwo == nil {
        return headOne
    }
    
    if headOne == nil {
        return headTwo
    }
    
    if headTwo == nil {
        return headOne
    }
    
    var nodeOne = headOne
    var nodeTwo = headTwo
    let resultHead = Node.init(value: 0)
    var resultNode = resultHead
    
    while nodeOne != nil && nodeTwo != nil {
        if nodeOne!.value < nodeTwo!.value {
            resultNode.next = Node.init(value: nodeOne!.value)
            resultNode = resultNode.next!
            nodeOne = nodeOne!.next
        } else {
            resultNode.next = Node.init(value: nodeTwo!.value)
            resultNode = resultNode.next!
            nodeTwo = nodeTwo!.next
        }
    }
    
    while nodeOne != nil {
        resultNode.next = Node.init(value: nodeOne!.value)
        resultNode = resultNode.next!
        nodeOne = nodeOne!.next
    }
    
    while nodeTwo != nil {
        resultNode.next = Node.init(value: nodeTwo!.value)
        resultNode = resultNode.next!
        nodeTwo = nodeTwo!.next
    }
    
    return resultHead.next

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
let oneOne = Node.init(value: 3)
let twoOne = Node.init(value: 5)
let threeOne = Node.init(value: 6)
headOne.next = oneOne
oneOne.next = twoOne
twoOne.next = threeOne

let headTwo = Node.init(value: 2)
let oneTwo = Node.init(value: 4)
let twoTwo = Node.init(value: 7)
headTwo.next = oneTwo
oneTwo.next = twoTwo


print(printNodes(head: headOne))        // 1 3 5 6
print(printNodes(head: headTwo))        // 2 4 7
let mergedList = mergeLists(headOne: headOne, headTwo: headTwo)
print(printNodes(head: mergedList))     // 1 2 3 4 5 6 7


