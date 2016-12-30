// hackerrank - tree traversal with preorder
//       3
//   5       2
// 1   4   6  nil


class Node {
    let value: Int
    var right: Node?
    var left: Node?
    
    init(value: Int) {
        self.value = value
    }
}

func treeTraversal(head: Node?) -> String {
    
    if head == nil {
        return ""
    }
    
    var result = ""
    
    result += "\(String(head!.value)) "
    
    result += treeTraversal(head: head?.left)
    
    result += treeTraversal(head: head?.right)

    return result
    
}

let head = Node.init(value: 3)
let five = Node.init(value: 5)
let one = Node.init(value: 1)
let four = Node.init(value: 4)
let two = Node.init(value: 2)
let six = Node.init(value: 6)

head.left = five
head.right = two
five.left = one
five.right = four
two.left = six

print(treeTraversal(head: head))    // 3 5 1 4 2 6

