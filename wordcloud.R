cat("Many thanks to https://www.jasondavies.com/wordcloud/\n \n")
cat("And warning: this website automatically remove common words\nso if you want to output airport name like CAN, it will not be displayed\n \n")
cat("This function convert data frame with Col1: word and Col2: frequency to single vector\ncall wordcloud()")
wordcloud <- function(dataframe) {
  #count <- 0
  if (length(dataframe[1,]) != 2) {stop("Please input df with 2 cols")}
  for(i in 1:length(dataframe[,1])){
    cat("\n")
    for (m in 1:dataframe[i,2]){
      cat(paste0(dataframe[i,1]," "))
      #count <- count + 1
    }
  }
  #print(count)
}
