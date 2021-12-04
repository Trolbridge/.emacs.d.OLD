let dog = Object.create(null);
console.log(dog);

dog.name = "Fluffy";
console.log(dog);


// Dog Object Prototype

dogProt = {
    woof: function() {
        console.log(this.sound)
    }
};

let doggy = Object.create(dogProt);
console.log(doggy);
console.log(doggy.woof());

doggy.sound = 'Ruff';
console.log(doggy.woof());
doggy.woof();

// with Optional parameters

let dog2 = Object.create(dogProt, {
    'sound': {
        value: 'bow wow'
    }

});

dog2.woof();

// console.log(dog2.woof());