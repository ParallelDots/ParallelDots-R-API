library("httr")
library("jsonlite")
nsfw <- function(url1,path,Api_Key) {
  req <- POST(url1,
              body = list(
                url=path,
                api_key=Api_Key
              ),
              encode = "multipart"
              )
  stop_for_status(req)
  result<-content(req)
  return(toJSON(result, auto_unbox = TRUE))
}
