未完工


print("http://echarts.baidu.com/examples/editor.html?c=line-log")
print("Please include vectors: legend label(category), x axis label; & data")
echart_multilinear <- function(category, xlabel, data) {
  output_file <- as.character(readline(prompt="Enter output file name: "))
  title <- as.character(readline(prompt="Enter chart title: "))
  x_axis <- as.character(readline(prompt="Enter x-axis title: "))
  y_axis <- as.character(readline(prompt="Enter y-axis title: "))
  
  sink(output_file)
  
  # title & formatter
  cat(paste0("title: {\n    text: '", title, "',\n    left: 'center'\n},\ntooltip: {\n    trigger: 'item', \n    formatter: '{a} <br/>{b} : {c}'\n},\n"))
  
  # legend
  cat("legend: {\n")
  cat("  left: 'left',\n")
  cat("  data: [")
  cat(paste(category, collapse = "', '"))
  cat("]\n")
  cat("},\n")
  
  # x axis
  cat("xAxis: {\n")
  cat("    type: 'category',\n")
  cat("    name: '")
  cat(x_axis)
  cat("',\n")
  cat("    splitLine: {show: false},\n    data: [")
  cat(paste(xlabel, collapse = "', '"))
  cat("]\n},\n")
  
  # y axis
  cat("yAxis: {\n    type: 'value',\n    name: 'y'\n},\n")
  
  # grid
  cat("grid: {\n    left: '3%',\n    right: '4%',\n    bottom: '3%',\n    containLabel: true\n},\n")
  
  # series
  cat("series: [\n")
  x <- 2001:2018
  for (i in 1:length(category)) {
    cat(paste0("{\nname: '", category[i], "', \ntype:'line',\ndata: ["))
    for (j in 1:18) {
      sub <- data102[which(data102[,7] == category[i]),]
      cat(sum(grepl(x[j], sub[,6])))
      cat(", ")
    }
    cat("]\n},\n")
  }
  sink()
}
