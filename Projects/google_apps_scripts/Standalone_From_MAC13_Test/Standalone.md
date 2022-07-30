# Create a standalone Projects:

npm init
m src
clasp create --type standalone
touch helloJesus.js

function sayHello() {
  Logger.log("Father thank you!!!");
}

clasp -P src/.clasp.json push