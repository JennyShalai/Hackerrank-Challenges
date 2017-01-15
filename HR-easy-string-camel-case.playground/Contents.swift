// HR - easy - string - given string in camel case return number of words
// https://www.hackerrank.com/challenges/camelcase



func camelCaseWords(input: String) -> Int {
    if input.characters.count == 0 {
        return 0
    }
    var counter = 1
    for char in input.characters {
        let str = String(char)
        if str.uppercased() == str {
            counter += 1
        }
    }
    return counter
}

print(camelCaseWords(input: "saveChangesInTheEditor"))  // 5