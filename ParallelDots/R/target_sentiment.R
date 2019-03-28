library("httr")
library("jsonlite")
target_sentiment <- function(url,data,key,language_code,entity) {
  req <- POST(url,
              body = list(
                text = data,
                api_key=key,
                lang_code=language_code,
                entity=entity
              ),
              encode = "multipart"
              )
  stop_for_status(req)
  result<-content(req)
  return(toJSON(result, auto_unbox = TRUE))
}
