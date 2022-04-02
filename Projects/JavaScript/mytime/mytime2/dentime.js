const myDate = new Date();
console.log(myDate)
const myMinutes = myDate.getMinutes() + 20;
myDate.setMinutes(myMinutes);
console.log(myDate)