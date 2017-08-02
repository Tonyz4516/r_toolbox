print("Many thanks to https://www.jasondavies.com/wordcloud/")
print("This function convert data frame with Col1: word and Col2: frequency to single vector")
wordcloud <- function(dataframe) {
  if (length(dataframe) != 2) {stop("Please input df with 2 cols")}
  x <- vector(mode = "character")
  for(i in 1:length(dataframe[,1])){
    for (m in 1:dataframe[i,2]){
      x <- c(x,dataframe[i,1])
    }
  }
}
