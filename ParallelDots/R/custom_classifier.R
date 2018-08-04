library("httr")
library("RJSONIO")
custom_classifier <- function(url,data,key,category_input) {
  req <- POST(url,
              body = list(
                text = data,
                api_key=key,
                category=category_input
              ),
              encode = "multipart"
  )
  stop_for_status(req)
  result<-content(req)
  return(toJSON(result, auto_unbox = TRUE))
}
