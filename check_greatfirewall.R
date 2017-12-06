# check if website accessable in China
list <- read.csv("../../Desktop/websites_for_test.csv",stringsAsFactors = F)
list <- list[,1]
sink("../../Desktop/gfw.txt")
for (i in 1:length(list)) {
  url = paste0("http://www.greatfirewallofchina.org/index.php?siteurl=",list[i])
  source = readLines(url)
  result = strsplit(source[56],">")
  print(list[i])
  print(c(result[[1]][13],result[[1]][20]))
}
sink()
