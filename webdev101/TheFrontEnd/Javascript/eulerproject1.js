//
var threeCount = 0
var fiveCount = 0
var sum = 0


for (i = 0; i < 1001; i++) {
    if (i % 3 === 0 || i % 5 === 0) {
        sum = sum + i;
    }
    else {
        console.log("nothing"); 
    }
}
console.log("This is the sum:", sum)
