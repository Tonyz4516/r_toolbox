# sample format: [ 'A', 'X', 5 ],
print("This function is for prepare list for google chart sankey, function called googlesankey()")
print("sample format: [ 'A', 'X', 5 ],")
googlesankey <- function(df) {
  if (length(df) == 3) {
    sink("../../Desktop/a.txt")
    for (i in 1:length(df[,1])) {
      print(paste0("[ '",df[i,1],"', '",df[i,2],"', ",df[i,3]," ],"))
    }
    sink()
  } else {stop("Please choose data frame with 3 cols!")}
}