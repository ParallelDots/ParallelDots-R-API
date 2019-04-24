library("httr")
library("jsonlite")
ner <- function(url,data,lang_code,key) {
  req <- POST(url,
              body = list(
                text = data,
                api_key=key,
                lang_code = lang_code
              ),
              encode = "multipart"
              )
  stop_for_status(req)
  result<-content(req)
  return(toJSON(result, auto_unbox = TRUE))
}


