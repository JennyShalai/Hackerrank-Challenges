// HR - medium - array
// https://www.hackerrank.com/challenges/sparse-arrays


func numberOfOccurrencesIn(text: [String], words: [String]) {
    var dictOfWords: [String: Int] = [:]
    
    for str in text {
        if dictOfWords[str] == nil {
            dictOfWords[str] = 1
        } else {
            dictOfWords[str]! += 1
        }
    }
    
    for word in words {
        if dictOfWords[word] != nil {
            print(dictOfWords[word]!)
        } else {
            print(0)
        }
    }
    
}

let arrayText = ["aba", "baba", "aba", "xzxb"]
let arrayWords = ["aba", "xzxb", "ab"]
numberOfOccurrencesIn(text: arrayText, words: arrayWords)
// 2
// 1
// 0






