ParallelDots-R-API-Wrapper
===============================

R wrapper for [ParallelDots' APIs](https://www.paralleldots.com/text-analysis-apis).

Installation
------------
Install with Rstudio
Version 3.2.3

```r
devtools::install(<path_to_locally_cloned_repo>)
```

Dependencies
-------------
- httr
- RJSONIO


API Keys
----------------
Sign up to create your free account from [ParallelDots](https://www.paralleldots.com/sign-up).
[Log in](https://user.apis.paralleldots.com/login) to your account to get your API key.

Supported APIs:
---------------

- Portuguese ( pt )
- Chinese ( zh )
- Spanish ( es )
- German ( de )
- French ( fr )
- Dutch ( nl )
- Italian (it)
- Japanese ( ja )
- Indonesian ( id )
- Thai ( th )
- Danish ( da )
- Finish ( fi )


Examples - [Full Documentation](https://www.paralleldots.com/docs)
-------------------------------

```r
library("ParallelDots")

# Be sure to set your API key
api_key = "YOUR_API_KEY";




# language parameter is optional, by default "en" is passed.
url="https://apis.paralleldots.com/v3/sentiment"
text="Come on lets play together"
lang_code='en'
result<-sentiment(url,text,api_key,lang_code)	

url="https://apis.paralleldots.com/v3/sentiment_batch"
text='["Come on lets play together","Team performed well overall"]'
lang_code='en'
result<-sentiment(url,text,api_key,lang_code)	


url="https://apis.paralleldots.com/v3/similarity"
text='["Global warming set to exceed Paris agreement’s 1.5C limit by 2040s, according to draft UN report","There is a tipping point’: UN warns climate change goals laid out in Paris accord are almost out of reach"]'
result<-similarity(url,text,api_key)
	

url="https://apis.paralleldots.com/v3/ner"
text="Apple was founded by Steve Jobs."
result<-ner(url,text,api_key)

url="https://apis.paralleldots.com/v3/ner_batch"
text='["Apple was founded by Steve Jobs","Apple Inc. is an American multinational technology company headquartered in Cupertino."]'
result<-ner(url,text,api_key)



url="https://apis.paralleldots.com/v3/keywords"
text="For the Yankees, it took a stunning comeback after being down 2-0 to the Indians in the American League Division Series. For the Astros, it took beating Chris Sale to top the Red Sox."
result<-keywords(url,text,api_key)

url="https://apis.paralleldots.com/v3/keywords_batch"
text='["For the Yankees, it took a stunning comeback after being down 2-0 to the Indians in the American League Division Series. For the Astros, it took beating Chris Sale to top the Red Sox.","U.S. stocks edged higher on Friday, with the S&P 500 hitting a more than five-month high, as gains in industrials and other areas offset a drop in financials. Fred Katayama reports."]'
result<-keywords(url,text,api_key)



url="https://apis.paralleldots.com/v3/taxonomy"
text="For the Yankees, it took a stunning comeback after being down 2-0 to the Indians in the American League Division Series. For the Astros, it took beating Chris Sale to top the Red Sox."
result<-taxonomy(url,text,api_key)

url="https://apis.paralleldots.com/v3/taxonomy_batch"
text='["For the Yankees, it took a stunning comeback after being down 2-0 to the Indians in the American League Division Series. For the Astros, it took beating Chris Sale to top the Red Sox.","U.S. stocks edged higher on Friday, with the S&P 500 hitting a more than five-month high, as gains in industrials and other areas offset a drop in financials. Fred Katayama reports."]'
result<-taxonomy(url,text,api_key)



url="https://apis.paralleldots.com/v3/emotion"
text="I am trying to imagine you with a personality"
lang_code="en"
result<-emotion(url,text,api_key,lang_code)

url="https://apis.paralleldots.com/v3/emotion_batch"
text='["I am trying to imagine you with a personality","This is shit"]'
lang_code="en"
result<-emotion(url,text,api_key,lang_code)



url="https://apis.paralleldots.com/v3/intent"
text="How do I cancel my ticket from the app?"
result<-intent(url,text,api_key)

url="https://apis.paralleldots.com/v3/intent_batch"
text='["How do I cancel my ticket from the app?","20% off on your next Uber ride"]'
result<-intent(url,text,api_key)



url="https://apis.paralleldots.com/v3/abuse"
text="How do I cancel my ticket from the app?"
result<-abuse(url,text,api_key)

url="https://apis.paralleldots.com/v3/abuse_batch"
text='["You f***ing ass hole","f**k this shit"]'
result<-abuse(url,text,api_key)



url="https://apis.paralleldots.com/v3/test_parser"
text="Donald Trump is the President of the United States of America"
result<-test_parser(url,text,api_key)




url="https://apis.paralleldots.com/v3/custom_classifier"
text="Donald Trump is the President of the United States of America"
category='{ "finance": { "markets", "economy", "shares" }, "world politics": { "diplomacy", "UN", "war" } }'
result<-custom_classifier(url,text,api_key,category)



url="https://apis.paralleldots.com/v3/phrase_extractor"
text="For the Yankees, it took a stunning comeback after being down 2-0 to the Indians in the American League Division Series. For the Astros, it took beating Chris Sale to top the Red Sox."
result<-phrase_extractor(url,text,api_key)

url="https://apis.paralleldots.com/v3/phrase_extractor_batch"
text='["For the Yankees, it took a stunning comeback after being down 2-0 to the Indians in the American League Division Series. For the Astros, it took beating Chris Sale to top the Red Sox.","U.S. stocks edged higher on Friday, with the S&P 500 hitting a more than five-month high, as gains in industrials and other areas offset a drop in financials. Fred Katayama reports."]'
result<-phrase_extractor(url,text,api_key)



url="https://apis.paralleldots.com/v3/multilang_keywords"
text="C'est un environnement très hostile, si vous choisissez de débattre ici, vous serez vicieusement attaqué par l'opposition"
lang_code="en"
result<-multilang_keywords(url,text,api_key,lang_code)



url="https://apis.paralleldots.com/v3/language_detection"
text="C'est un environnement très hostile, si vous choisissez de débattre ici, vous serez vicieusement attaqué par l'opposition"
result<-language_detection(url,text,api_key)

url="https://apis.paralleldots.com/v3/language_detection_batch"
text='["C est un environnement très hostile, si vous choisissez de débattre ici, vous serez vicieusement attaqué par l opposition","El hardware inalámbrico no autorizado se puede introducir fácilmente. Los puntos de acceso inalámbricos son relativamente poco costosos y se implementan fácilmente"]'
result<-language_detection(url,text,api_key)



url="https://apis.paralleldots.com/v3/nsfw"
image_url="<image url>" #must be https
result<-nsfw(url,image_url,api_key)



url="https://apis.paralleldots.com/v3/popularity"
image_url="<image url>" #must be https
result<-popularity(url,image_url,api_key)



url="https://apis.paralleldots.com/v3/facial_emotion"
image_url="<image url>" #must be https
result<-facial_emotion(url,image_url,api_key)



url="https://apis.paralleldots.com/v3/object_recognizer"
image_url="<image url>" #must be https
result<-object_recognizer(url,image_url,api_key)


```

To import and use a single module
-------------------

Example

```r
library("httr")
library("RJSONIO")
library("jsonlite")
library("ParallelDots")

url="https://apis.paralleldots.com/v3/language_detection"
text="C'est un environnement très hostile, si vous choisissez de débattre ici, vous serez vicieusement attaqué par l'opposition"
result<-multilang_keywords(url,text,api_key)

```
 Available APIs: sentiment | sentiment_batch | abuse | abuse_batch | custom_classifier | emotion | emotion_batch | intent |intent_batch | keywords | keywords_batch | multilang_keywords | ner | ner_batch | nsfw | phrase_extractor | phrase_extractor_batch | popularity | similarity | taxonomy | taxonomy_batch | text_parser | text_parser_batch | facial_emotion | object_recognizer |  language_detection | language_detection_batch |

Note : You must pass your API key as the last parameter for single usage.
