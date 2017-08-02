cat("Many thanks to https://www.jasondavies.com/wordcloud/")
cat("This function convert data frame with Col1: word and Col2: frequency to single vector\ncall wordcloud()")
wordcloud <- function(dataframe) {
  if (length(dataframe[1,]) != 2) {stop("Please input df with 2 cols")}
  for(i in 1:length(dataframe[,1])){
    for (m in 1:dataframe[i,2]){
      cat(paste0(dataframe[i,1],"\n"))
    }
  }
}
