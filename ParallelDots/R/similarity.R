library("httr")
library("RJSONIO")
similarity <- function(url,data_1,data_2,key) {
  req <- POST(url,
              body = list(
                text_1 = data_1,
                text_2=data_2,
                api_key=key
              ),
              encode = "multipart",
              verbose())
  stop_for_status(req)
  result<-content(req)
  return(cat(toJSON(result)))
}