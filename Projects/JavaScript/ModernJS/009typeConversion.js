let val;


val=5;



//Number to string
val= String(val);

// Addition
val= String(4+4);
console.log(val);

// Boolean to String
val= String(true);
console.log(typeof val);
console.log(val.length);

// Date to string
val = String(new Date());

// Array to string
val = [1,2,3,4];
console.log('val =', val)
console.log(typeof val);
if (val.constructor.name == 'Array') {
  console.log('val is an Array');
}

// toString)
val = (5).toString();
val = '5';
val = parseInt('100');


// Output
// console.log(val);
// console.log(val.length);

