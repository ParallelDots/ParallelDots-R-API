library("httr")
library("RJSONIO")
facial_emotion <- function(url1,path,key) {
  req <- POST(url1,
              body = list(
                url=path,
                api_key=key
              ),
              encode = "multipart"
              )
  stop_for_status(req)
  result<-content(req)
  return(toJSON(result, auto_unbox = TRUE))
}
