// Hackerrank - easy - string - SOS
// in given string detect how many letters "damaged" so could be a string "..SOSSOSSOS.."
// https://www.hackerrank.com/challenges/mars-exploration


// approach with counter to track a position of a char
func numberOfDamagedCharsIn(string: String) -> Int {

    if string.characters.count < 3 || string.characters.count % 3 != 0 {
        return -1
    }
    
    var result = 0
    // tracking "S" position
    var counter = 2
    
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

// approach with tracking index of a char
func numberOfDamaged(string: String) -> Int {
    
    if string.characters.count < 3 || string.characters.count % 3 != 0 {
        return -1
    }
    
    var result = 0
    for (index, char) in string.characters.enumerated() {
        // for every first "S" in "SOS"
        if index % 3 == 0 && char != "S" {
            result += 1
        }
        // for every second "S" in "SOS"
        if (index + 1) % 3 == 0 && char != "S" {
            result += 1
        }
        // for every "O" in "SOS"
        if (index + 2) % 3 == 0 && char != "O" {
            result += 1
        }
    }
    
    return result

}

print(numberOfDamagedCharsIn(string: "SOSSOS")) // 0
print(numberOfDamagedCharsIn(string: "SOSSO"))  // -1
print(numberOfDamagedCharsIn(string: "POSKOS")) // 2

print(numberOfDamaged(string: "SOSSOS"))    // 0
print(numberOfDamaged(string: "SOSSO"))     // -1
print(numberOfDamaged(string: "POSKOS"))    // 2