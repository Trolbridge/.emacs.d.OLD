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
let updateD = `${month}-${day}-${year}`; //Format the string correctly
let updateT = `${hours}:${minutes}`; //Format the string correctly
let daysOfTheMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

const checkNumber = function () {
  if (!isNaN(Number(myArgs[0]))) {
    minutes += Number(myArgs[0]);
  } else {
    console.log("Please input some minutes to add");
    process.exit(1);
  }
};
checkNumber();

const checkLeap = function () {
  if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
    daysOfTheMonth[1] = 29;
  }
};
checkLeap();

const outputTime = function () {
  console.log(updateT);
  console.log(updateD);
};
outputTime();

const addTime = function () {
  while (minutes > 59) {
    minutes -= 60;
    hours++;
    if (hours > 23) {
      hours -= 24;
      day++;
    }
    if (day > daysOfTheMonth[whichMonth]) {
      day = 1;
      month++;
    }
    if (month > 12) {
      month = 1;
      year++;
    }
  }
};
addTime();

updateT = `${hours}:${minutes}`; //Format the string correctly
updateD = `${month}-${day}-${year}`; //Format the string correctly

outputTime();

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