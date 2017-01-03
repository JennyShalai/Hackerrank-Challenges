// HR - easy - array - 2D - find max hourglass sum
// https://www.hackerrank.com/challenges/2d-array


let matr: [[Int]] = [[1, 1, 1, 0, 0, 0],
                     [0, 1, 0, 0, 0, 0],
                     [1, 1, 1, 5, 0, 0],
                     [0, 0, 0, 4, 0, 0],
                     [0, 0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0, 0]]
var maxSum = 0
for i in 1...4 {
    for j in 1...4 {
        let one = matr[i-1][j-1]
        let two = matr[i-1][j]
        let three = matr[i-1][j+1]
        let four = matr[i][j]
        let five = matr[i+1][j-1]
        let six = matr[i+1][j]
        let seven = matr[i+1][j+1]
        let sum = one + two + three + four + five + six + seven
        if sum > maxSum {
            maxSum = sum
        }
    }
}

print(maxSum)






