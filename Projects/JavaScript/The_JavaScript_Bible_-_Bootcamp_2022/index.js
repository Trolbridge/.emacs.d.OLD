document.write("<h2>Hello from external</h2>");
variableA = {
  a: 10,
  b: true,
};
copyofA = variableA;
copyofA.a = 20;
// variableA.a now equals 20
document.write(variableA.a);
