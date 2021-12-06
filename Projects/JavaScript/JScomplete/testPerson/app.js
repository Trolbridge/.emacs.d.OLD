// let dog = Object.create(null);
// console.log(dog);

// dog.name = "Fluffy";
// console.log(dog);


// // Dog Object Prototype

// dogProt = {
//     woof: function() {
//         console.log(this.sound)
//     }
// };

// let doggy = Object.create(dogProt);
// console.log(doggy);
// console.log(doggy.woof());

// doggy.sound = 'Ruff';
// console.log(doggy.woof());
// doggy.woof();

// // with Optional parameters

// let dog2 = Object.create(dogProt, {
//     'sound': {
//         value: 'bow wow'
//     }

// });

// dog2.woof();

// // console.log(dog2.woof());

  // object.create()
//   let person = Object.create();
// Example 2 Practical employee example

// create company 1 called Dog Factory
let dogProto = {
    company: "The Dog Factory"
};

// create company 2 called Cat Factory
let catProto = {
    company: "The Cat Factory"
};

// create employees
let employee1 = Object.create(dogProto);
employee1.name = 'Dennis';

let employee2 = Object.create(catProto);
employee2.name = 'Edith';

console.log(`${employee1.name} works for ${employee1.company}`)
console.log(`${employee2.name} works for ${employee2.company}`)
  
