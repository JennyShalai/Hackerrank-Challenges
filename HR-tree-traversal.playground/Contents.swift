// hackerrank - tree traversal
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

enum Mode {
    case PREORDER
    case INORDER
    case POSTORDER
}

func treeTraversal(head: Node?, mode: Mode) -> String {
    
    if head == nil {
        return ""
    }
    
    var result = ""
    
    if (mode == .PREORDER) {
        result += "\(String(head!.value)) "
    }
    
    // Recursion: left subtree
    result += treeTraversal(head: head?.left, mode: mode)

    if (mode == .INORDER) {
        result += "\(String(head!.value)) "
    }
    
    // Recursion: right subtree
    result += treeTraversal(head: head?.right, mode: mode)

    if (mode == .POSTORDER) {
        result += "\(String(head!.value)) "
    }
    
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

print(treeTraversal(head: head, mode: .PREORDER))    // 3 5 1 4 2 6
print(treeTraversal(head: head, mode: .INORDER))     // 1 5 4 3 6 2
print(treeTraversal(head: head, mode: .POSTORDER))   // 1 4 5 6 2 3

