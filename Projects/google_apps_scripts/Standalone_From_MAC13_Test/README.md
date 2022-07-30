# Create a standalone Projects:

npm init<br>
m src<br>
clasp create --type standalone<br>
touch helloJesus.js<br>

<p>
function sayHello() {
  Logger.log("Father thank you!!!");
}
</p>

clasp -P src/.clasp.json push<br>