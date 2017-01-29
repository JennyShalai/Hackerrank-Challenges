// Hackerrank - easy - string - SOS
// in given string detect how many letters "damaged" so could be a string "..SOSSOSSOS.."
// https://www.hackerrank.com/challenges/mars-exploration

func numberOfDamagedCharsIn(string: String) -> Int {

    if string.characters.count < 3 || string.characters.count % 3 != 0 {
        return -1
    }
    
    var counter = 2
    var result = 0
    
    for char in string.characters {
        if char != "S" && (counter == 1 || counter == 2)  {
            result += 1
            
        }
        
        if char != "O" && counter == 0  {
            result += 1
        }
        
        
        if counter == 2 {
            counter = 0
        } else {
            counter += 1
        }
    }
    
    return result
}

print(numberOfDamagedCharsIn(string: "SOSSOS")) // 0
print(numberOfDamagedCharsIn(string: "SOSSO"))  // -1
print(numberOfDamagedCharsIn(string: "POSKOS")) // 2