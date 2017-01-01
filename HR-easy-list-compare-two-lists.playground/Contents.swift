// HR - easy - list - compare two lists
// https://www.hackerrank.com/challenges/compare-two-linked-lists


class Node {
    
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}


func comapreTwoLists(headOne: Node?, headTwo: Node?) -> Int {

    if headOne == nil && headTwo == nil {
        return 1
    }
    
    var nodeOne = headOne
    var nodeTwo = headTwo
    
    while nodeOne != nil && nodeTwo != nil {
    
        
        if nodeOne!.value != nodeTwo!.value {
            return 0
        }
        
        nodeOne = nodeOne!.next
        nodeTwo = nodeTwo!.next
    }
    
    if nodeOne != nil || nodeTwo != nil {
        return 0
    }
    
    return 1
    
}




let headOne = Node.init(value: 0)
let oneOne = Node.init(value: 1)
let twoOne = Node.init(value: 2)
let threeOne = Node.init(value: 3)
headOne.next = oneOne
oneOne.next = twoOne
twoOne.next = threeOne

let headTwo = Node.init(value: 0)
let oneTwo = Node.init(value: 1)
let twoTwo = Node.init(value: 2)
let threeThree = Node.init(value: 3)
headTwo.next = oneTwo
oneTwo.next = twoTwo
twoTwo.next = threeThree

print(comapreTwoLists(headOne: headOne, headTwo: headTwo))  // 1
