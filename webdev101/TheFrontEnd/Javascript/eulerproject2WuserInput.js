var input = prompt("What number do you want to count to? ");
var input = parseInt(input);
var input = input + 1;
var a = 0;
var b = 1;
var temp = 0;
var total = 0;

while (b < input) {
    console.log(b);
    temp = a;
    a = b;
    b = b + temp;

     if (b % 2 === 0) {
        console.log("This is an even number: ", b);
        total = total + b;
        console.log("total: ", total);
    }
    else {
        
    }
}