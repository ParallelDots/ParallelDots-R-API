library("httr")
library("RJSONIO")
sentiment <- function(url,data,key,language_code) {
  req <- POST(url,
              body = list(
                text = data,
                api_key=key,
                lang_code=language_code
              ),
              encode = "multipart",
              verbose())
  stop_for_status(req)
  result<-content(req)
  return(cat(toJSON(result)))
}
