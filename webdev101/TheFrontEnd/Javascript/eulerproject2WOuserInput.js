var a = 0;
var b = 1;
var temp = 0;
var total = 0;

while (b < 4000001) {
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