function square(number) {
  return number * number;
}
console.log(square(9));
const blank = function() {console.log() }
blank();

function myFunc(theObject) {
  theObject.make = "Toyota";
}

var mycar = { make: "Honda", model: "Accord", year: 1998 };
var x, y;

x = mycar.make; // x gets the value "Honda"
console.log(x);

myFunc(mycar);
y = mycar.make; // y gets the value "Toyota"
// (the make property was changed by the function)

/* function expressions
hello


*/

const squareExpression = function(number) { return number * number }
var x = squareExpression(4) // x gets the value 16

const factorial = function fac(n) { return n < 2 ? 1 : n * fac(n - 1) }

console.log(factorial(3))

// function map(f, a) {
//   let result = []; // Create a new Array
//   let i;            // Declare variable
//   for (i = 0; i != a.length; i++)
//     result[i] = f(a[i]);
//   return result;
// }

// In the following code, the function receives a function defined by a function expression and executes it for every element of the array received as a second argument:

function map(f, a) {
  let result = []; // Create a new Array
  let i; // Declare variable
  for (i = 0; i != a.length; i++)
    result[i] = f(a[i]);
  return result;
}
const f = function(x) {
   return x * x * x;
}
let numbers = [0, 1, 2, 5, 10];
let cube = map(f,numbers);
console.log(cube);

// In JavaScript, a function can be defined vased on a condition. For example, the following function definition defines myFun only if num equals 0:

var myFunc;
if (num === 0) {
  myFunc = function(theObject) {
    theObject.make = 'Toyota';
  }
}

