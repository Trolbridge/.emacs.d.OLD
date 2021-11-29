document.write('<br>');
document.write('<br>');
document.write('Hi' + '<br>');
document.write('<br>');
let d = 'Dennis';
document.write('Innerheight = ', innerHeight);

let button = document.getElementById("button");	/* Identify: */
  button.onclick=()=> {						/* When: */
  button.innerHTML = "I've been clicked"				/* Define Action: */
};
console.count();
console.count();
console.count();
console.count();

for(let i=0; i < 5; i++) {
  console.count('I have been called') }
  
console.log(document);   // HTML representation
console.dir(document);   // JS representation

console.table([1,2,3,4]);

const dogName = {
  name: 'Paw',
  surname: 'Patrol'
}
console.log(dogName);
console.table(dogName);

// console.group()
console.group('Dogs');
console.log('German Shepard');
console.log('Irish Wolfhound');
console.groupEnd();

// console.groupCollapsed()
console.groupCollapsed('Dogs');
console.log('German Shepard');
console.log('Irish Wolfhound');
console.groupEnd();

// console.groupCollapsed()
console.groupCollapsed('Animals');
console.group('Dogs');
console.log('German Shepard');
console.log('Irish Wolfhound');
console.groupEnd();
console.group('Cats');
console.log('Siamese');
console.log('Rag');
console.groupEnd();


  var age = 35;
  console.assert(age > 50, 'Access denied. You are too young to enter.');

document.addEventListener('keydown', logkey);

function logkey() {
  location.reload();
}
function alertMe() {
  // alert('Hi');
  document.write('<br>');
  document.write('Hi BB !!! ');
}
  document.write('<br>');
  document.write('Hi \n BB !!! ');

let person = {name: "Wally", age: 41};

person = null;

person
