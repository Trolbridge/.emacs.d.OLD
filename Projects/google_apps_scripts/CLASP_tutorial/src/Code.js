function sayHello() {
  Logger.log("Father thank you!!!");
  Logger.log("Father thank you!!!");
}

function addToSideBar() {
  const htmlServ = HtmlService.createTemplateFromFile("my")
  const html = htmlServ.evaluate();

  const ui = SpreadsheetApp.getUi();
  ui.showSidebar(html);
}