library("httr")
library("RJSONIO")
nsfw <- function(url1,path,Api_Key) {
  req <- POST(url1,
              body = list(
                url=path,
                api_key=Api_Key
              ),
              encode = "multipart",
              verbose())
  stop_for_status(req)
  result<-content(req)
  return(toJSON(result, auto_unbox = TRUE))
}
