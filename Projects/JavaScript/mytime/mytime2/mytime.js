const sys = require("util");
const win = require("node-windows");

// console.log(process.argv);
const myArgs = process.argv.slice(2);
// console.log('myArgs: ', myArgs[0]);

dateTime = new Date(); //Convert string or number to date
let month = dateTime.getUTCMonth();
month++;
let whichMonth = dateTime.getUTCMonth();
let day = dateTime.getDate();
let year = dateTime.getFullYear();
let hours = dateTime.getHours();
let minutes = dateTime.getMinutes();

daysOfTheMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

let updateD = `${month}-${day}-${year}`; //Format the string correctly
let updateT = `${hours}:${minutes}`; //Format the string correctly

if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
  console.log(`${year} is a Leap Year`);
  daysOfTheMonth[1] = 29;
  console.log(daysOfTheMonth[1]);
} else {
  console.log(`${year} is NOT a Leap Year`);
  console.log(daysOfTheMonth[1]);
}
console.log("there are", daysOfTheMonth[whichMonth], "days this month");

console.log(updateT);
console.log(updateD);

if (!isNaN(Number(myArgs[0]))) {
  minutes += Number(myArgs[0]);
} else {
  console.log("Please input some minutes to add");
  process.exitCode = 1;
}

// if (minutes >= 60) {
//   overSixty = Math.floor(minutes / 60);
//   minutes = minutes - overSixty * 60;
//   hours += overSixty;
//   console.log(hours);
// }

while (minutes > 59) {
  if (minutes == 60) {
    hours++;
    minutes = 0;
    break;
  } else {
    minutes -= 60;
    hours++;
  }
}

while (hours > 23) {
  if (hours == 24) {
    hours = 0;
    day++;
    break;
  } else {
    hours -= 24;
    day++;
  }
}



console.log(whichMonth)
console.log(daysOfTheMonth[whichMonth])

if (day > daysOfTheMonth[whichMonth]) {
  console.log("day should change to the 1st");
  day = 1;
  month++;
}

if (month > 12) {
  month = 1;
  year++;
}

updateT = `${hours}:${minutes}`; //Format the string correctly
updateD = `${month}-${day}-${year}`; //Format the string correctly

console.log(updateT);
console.log(updateD);

//Add a callback function (this can be somewhere else)
function execCallback(error, stdout, stderr) {
  if (error) {
    console.log(error);
  } else {
    console.log(stdout);
  }
}
var exec = win.elevate(`cmd /c time ${updateT}`, undefined, execCallback); // const currentDate = new Date();
var exec = win.elevate(`cmd /c date ${updateD}`, undefined, execCallback); // const currentDate = new Date();
