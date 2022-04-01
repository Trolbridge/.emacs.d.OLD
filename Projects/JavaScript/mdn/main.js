function square(number) {
  return number * number;
}
console.log(square(9));
const blank = function () {
  console.log();
};
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

const squareExpression = function (number) {
  return number * number;
};
var x = squareExpression(4); // x gets the value 16

const factorialTernary = function (n) {
  return n < 2 ? 1 : n * factorialTernary(n - 1);
};

console.log(factorialTernary(3));

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
  for (i = 0; i != a.length; i++) result[i] = f(a[i]);
  return result;
}
const f = function (x) {
  return x * x * x;
};
let numbers = [0, 1, 2, 5, 10];
let cube = map(f, numbers);
console.log(cube);

// In JavaScript, a function can be defined vased on a condition. For example, the following function definition defines myFun only if num equals 0:

// var myFunc;
// if (num === 0) {
//   myFunc = function(theObject) {
//     theObject.make = 'Toyota';
//   }
// }

var myFunc;
let num = 1;
if (num === 0) {
  myFunc = function () {
    num++;
    console.log("num = ", num);
  };
  myFunc();
} else {
  blank();
  console.log("myFunc not created");
}

function factorial(n) {
  if (n === 0 || n === 1) return 1;
  else return n * factorial(n - 1);
}
console.log(factorial(3));

// The following variables are defined in the global scope
var num1 = 20,
  num2 = 3,
  name2 = "Chamakh";

// This function is defined in the global scope
function multiply() {
  return console.log("Access to global scoped variables", num1 * num2);
}

multiply(); // Returns 60

// A nested function example
function getScore() {
  var num1 = 2,
    num2 = 3;

  function add() {
    return name2 + " scored " + (num1 + num2);
  }

  return console.log("Nested scope/function", add());
}

getScore(); // Returns "Chamakh scored 5"

function foo(i) {
  if (i < 0)
    return;
  console.log('begin: ' + i);
  foo(i - 1);
  console.log('end: ' + i);
}
foo(3);
