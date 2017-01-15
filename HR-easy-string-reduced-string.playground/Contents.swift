// remove pair of the same chars:
// abbac => aac => c
// aabbbc => bbbc => bc
// bbcc => cc => Empty string


///////////////////////   with recursion   //////////////////////////

func deletePair(string: String) -> String {
    if string.characters.count == 0 {
        return ""
    }
    var result = string
    var currentChar = String(result.characters.first!)
    var currentIndex = 0
    for (index, char) in result.characters.enumerated() {
        if index > 0 && index < result.characters.count {
            if String(char) == currentChar && index == currentIndex + 1 {
                result.remove(at: result.index(result.startIndex, offsetBy: index))
                result.remove(at: result.index(result.startIndex, offsetBy: currentIndex))
                result = deletePair(string: result)
            } else {
                currentChar = String(char)
                currentIndex = index
            }
        }
    }
    return result
}

func answerWithRecursion(string: String) -> String {
    let result = deletePair(string: string);
    if result == "" {
        return "Empty String"
    } else {
        return result
    }
}

///////////////////   with stack, no recursion   ///////////////////

class Stack {
    
    var stack: [Character] = []
    
    func push(char: Character) {
        self.stack.append(char)
    }
    
    func peek() -> Character? {
        if self.stack.count == 0 {
            return nil
        } else {
            return self.stack.last!
        }
    }
    
    func pop() {
        if self.stack.count > 0 {
            self.stack.remove(at: self.stack.count-1)
        }
    }
    
}

func answerWithStack(string: String) -> String {
    let stack = Stack()
    for char in string.characters {
        if stack.peek() != char {
            stack.push(char: char)
        } else {
            stack.pop()
        }
    }
    var result = ""
    for ch in stack.stack {
       result.append(ch)
    }
    return result
}


///////////////////////////////////////////////////////////////////


print("recursion - accdddedcc: \(answerWithRecursion(string: "accdddedcc"))")   // aded
print("stack - accdddedcc: \(answerWithStack(string:   "accdddedcc"))")         // aded
print("recursion - cdeedcn: \(answerWithRecursion(string: "cdeedcn"))")         // n
print("stack - cdeedcn: \(answerWithStack(string:   "cdeedcn"))")               // n


