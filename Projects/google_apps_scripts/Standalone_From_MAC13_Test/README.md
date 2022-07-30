# Create a standalone Projects:

npm init<br>
m src<br>
clasp create --type standalone<br>
touch helloJesus.js<br>

  function sayHello() {
    Logger.log("Father thank you!!!");
  }

clasp -P src/.clasp.json push<br>