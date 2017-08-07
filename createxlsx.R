require(openxlsx)
print("example: wb <- createxlsx(4)")

createxlsx <- function(numofsheets) {
  wb <- createWorkbook()
  for (i in 1:numofsheets) {
    addWorksheet(wb, i)
  }
  wb
}