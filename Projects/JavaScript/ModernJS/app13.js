// Create some Arrays
let numbers = [43,56,33,23,44,36,5];
let numbers2 = new Array(22,45,33,76,54)

let fruit = ['Apple', 'Banana', 'Orange', 'Pear'];
let mixed = [22, 'Hello', true, undefined, null, {a:1, b:1}, new Date()];

let val = numbers.length;

// Check if is array
val = Array.isArray(numbers);

// Get single value
val = numbers[3];
val = numbers[0];

numbers[2] =  100;
console.log(numbers[2]);

console.log(numbers);
console.log(val);
fruit.slice(0,0);
