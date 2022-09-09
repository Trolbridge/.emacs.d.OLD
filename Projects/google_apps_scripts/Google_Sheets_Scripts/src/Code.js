function learnBasics() {
  Logger.log("OMG");
  var app = SpreadsheetApp;
  var ss = app.getActiveSpreadsheet();
  var activeSheet = ss.getActiveSheet();
  activeSheet.getRange("D2").setValue(99);
  activeSheet.getRange("D3:F9").setValue(88);
  activeSheet.getRange(3, 9).setValue(888);
  activeSheet.getRange(2, 2, 3, 4).setValue("Serious Stuff");
  var tempValue = activeSheet.getRange(4, 1).getValue();
  activeSheet.getRange(6, 2).setValue(tempValue);
}
