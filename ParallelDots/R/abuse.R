library("httr")
library("RJSONIO")
abuse <- function(url,data,key) {
  req <- POST(url,
              body = list(
                text = data,
                api_key=key
              ),
              encode = "multipart",
              verbose())
  stop_for_status(req)
  result<-content(req)
  return(toJSON(result, auto_unbox = TRUE))
}
