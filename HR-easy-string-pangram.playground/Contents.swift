// HR - easy - string - pangram - has all alphabetical letters at least once
// https://www.hackerrank.com/challenges/pangrams

func isPangram(str: String) -> Bool {
    var dict: [Character: Int] = [
        "a": 1,
        "b": 1,
        "c": 1,
        "d": 1,
        "e": 1,
        "f": 1,
        "g": 1,
        "h": 1,
        "i": 1,
        "j": 1,
        "k": 1,
        "l": 1,
        "m": 1,
        "n": 1,
        "o": 1,
        "p": 1,
        "q": 1,
        "r": 1,
        "s": 1,
        "t": 1,
        "u": 1,
        "v": 1,
        "w": 1,
        "x": 1,
        "y": 1,
        "z": 1
    ]
    
    let string = str.lowercased()
    
    for char in string.characters {
        if dict[char] != nil {
            dict[char] = nil
        }
    }
    
    if dict == [:] {
        return true
    } else {
        return false
    }
}


print(isPangram(str: "We promptly judged antique ivory buckles for the next prize"))    // true
print(isPangram(str: "We promptly judged antique ivory buckles for the prize"))         // x missing
print(isPangram(str: "aBcdEfgHijkLMnopQrstUVwXYZ"))                                     // true
print(isPangram(str: "The quick brown fox jumps over the lazy dog"))                    // true