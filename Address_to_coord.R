addresstocoord <- function(address) {
  # print welcome msg
  print("Call function addresstocoord(), output is a dataframe of latitude & longitude")
  # check if address is a vector
  if(!is.vector(address)) {
    stop("address must be vector!")
  }
  require(RJSONIO)
  # build new dataframe with 2 variables
  df <- data.frame(0,0)
  df <- df[-1,]
  colnames(df) <- c("latitude","longitude")
  # loop address through google api
  for (i in 1:length(address)) {
    url <- URLencode(paste("http://maps.google.com/maps/api/geocode/json?address=", address[i], "&sensor=false", sep = ""))
    x <- fromJSON(url, simplify = FALSE)
    if (x$status == "OK") {
      df[i,2] <- x$results[[1]]$geometry$location$lng
      df[i,1] <- x$results[[1]]$geometry$location$lat
    } else {
      df[i,1] <- NA
      df[i,2] <- NA
    }
    print(paste0(i," of ", length(address), " converted."))
    Sys.sleep(0.2)  # API only allows 5 requests per second
  }
  df
}
