library("httr")
library("jsonlite")
sarcasm <- function(url,text,key) {
  req <- POST(url,
              body = list(
                text = text,
                api_key=key
              ),
              encode = "multipart"
              )
  stop_for_status(req)
  result<-content(req)
  return(toJSON(result, auto_unbox = TRUE))
}
