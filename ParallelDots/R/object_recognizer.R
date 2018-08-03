library("httr")
library("RJSONIO")
object_recognizer <- function(url1,path,key) {
  req <- POST(url1,
              body = list(
                url=path,
                api_key=key
              ),
              encode = "multipart",
              verbose())
  stop_for_status(req)
  result<-content(req)
  return(toJSON(result))
}
