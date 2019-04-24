ParallelDots-R-API-Wrapper
===============================

R wrapper for [ParallelDots' APIs](https://www.paralleldots.com/text-analysis-apis).

Installation
------------
```r
devtools::install(<path_to_locally_cloned_repo>)
```

Dependencies
-------------
- httr
- jsonlite


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
url="https://apis.paralleldots.com/v4/sentiment"
text="Come on lets play together"
lang_code='en'
result<-sentiment(url,text,api_key,lang_code)	

url="https://apis.paralleldots.com/v4/sentiment_batch"
text='["Come on lets play together","Team performed well overall"]'
lang_code='en'
result<-sentiment(url,text,api_key,lang_code)	


url="https://apis.paralleldots.com/v4/similarity"
text_1="Global warming set to exceed Paris agreement’s 1.5C limit by 2040s, according to draft UN report"
text_2="There is a tipping point’: UN warns climate change goals laid out in Paris accord are almost out of reach"
result<-similarity(url,text_1,text_2,api_key)
	

url="https://apis.paralleldots.com/v4/ner"
text="Apple was founded by Steve Jobs."
result<-ner(url,text,lang_code,api_key)

url="https://apis.paralleldots.com/v4/ner_batch"
text='["Apple was founded by Steve Jobs","Apple Inc. is an American multinational technology company headquartered in Cupertino."]'
result<-ner(url,text,lang_code,api_key)



url="https://apis.paralleldots.com/v4/keywords"
text="For the Yankees, it took a stunning comeback after being down 2-0 to the Indians in the American League Division Series. For the Astros, it took beating Chris Sale to top the Red Sox."
result<-keywords(url,text,api_key)

url="https://apis.paralleldots.com/v4/keywords_batch"
text='["For the Yankees, it took a stunning comeback after being down 2-0 to the Indians in the American League Division Series. For the Astros, it took beating Chris Sale to top the Red Sox.","U.S. stocks edged higher on Friday, with the S&P 500 hitting a more than five-month high, as gains in industrials and other areas offset a drop in financials. Fred Katayama reports."]'
result<-keywords(url,text,api_key)



url="https://apis.paralleldots.com/v4/taxonomy"
text="For the Yankees, it took a stunning comeback after being down 2-0 to the Indians in the American League Division Series. For the Astros, it took beating Chris Sale to top the Red Sox."
result<-taxonomy(url,text,api_key)

url="https://apis.paralleldots.com/v4/taxonomy_batch"
text='["For the Yankees, it took a stunning comeback after being down 2-0 to the Indians in the American League Division Series. For the Astros, it took beating Chris Sale to top the Red Sox.","U.S. stocks edged higher on Friday, with the S&P 500 hitting a more than five-month high, as gains in industrials and other areas offset a drop in financials. Fred Katayama reports."]'
result<-taxonomy(url,text,api_key)



url="https://apis.paralleldots.com/v4/emotion"
text="I am trying to imagine you with a personality"
lang_code="en"
result<-emotion(url,text,api_key,lang_code)

url="https://apis.paralleldots.com/v4/emotion_batch"
text='["I am trying to imagine you with a personality","This is shit"]'
lang_code="en"
result<-emotion(url,text,api_key,lang_code)

url="https://apis.paralleldots.com/v4/sarcasm"
text="I am trying to imagine you with a personality"
lang_code="en"
result<-sarcasm(url,text,api_key,lang_code)

url="https://apis.paralleldots.com/v4/sarcasm_batch"
text='["I am trying to imagine you with a personality","This is shit"]'
lang_code="en"
result<-sarcasm(url,text,api_key,lang_code)

url="https://apis.paralleldots.com/v4/intent"
text="How do I cancel my ticket from the app?"
result<-intent(url,text,api_key)

url="https://apis.paralleldots.com/v4/intent_batch"
text='["How do I cancel my ticket from the app?","20% off on your next Uber ride"]'
result<-intent(url,text,api_key)



url="https://apis.paralleldots.com/v4/abuse"
text="How do I cancel my ticket from the app?"
result<-abuse(url,text,api_key)

url="https://apis.paralleldots.com/v4/abuse_batch"
text='["You f***ing ass hole","f**k this shit"]'
result<-abuse(url,text,api_key)



url="https://apis.paralleldots.com/v4/custom_classifier"
text="Donald Trump is the President of the United States of America"
category='{ "finance": { "markets", "economy", "shares" }, "world politics": { "diplomacy", "UN", "war" } }'
result<-custom_classifier(url,text,api_key,category)



url="https://apis.paralleldots.com/v4/phrase_extractor"
text="For the Yankees, it took a stunning comeback after being down 2-0 to the Indians in the American League Division Series. For the Astros, it took beating Chris Sale to top the Red Sox."
result<-phrase_extractor(url,text,api_key)

url="https://apis.paralleldots.com/v4/phrase_extractor_batch"
text='["For the Yankees, it took a stunning comeback after being down 2-0 to the Indians in the American League Division Series. For the Astros, it took beating Chris Sale to top the Red Sox.","U.S. stocks edged higher on Friday, with the S&P 500 hitting a more than five-month high, as gains in industrials and other areas offset a drop in financials. Fred Katayama reports."]'
result<-phrase_extractor(url,text,api_key)



url="https://apis.paralleldots.com/v4/multilang_keywords"
text="C'est un environnement très hostile, si vous choisissez de débattre ici, vous serez vicieusement attaqué par l'opposition"
lang_code="en"
result<-multilang_keywords(url,text,api_key,lang_code)


url="https://apis.paralleldots.com/v4/facial_emotion"
image_url="<image url>" #must be https
result<-facial_emotion(url,image_url,api_key)



url="https://apis.paralleldots.com/v4/object_recognizer"
image_url="<image url>" #must be https
result<-object_recognizer(url,image_url,api_key)


```

To import and use a single module
-------------------

Example

```r
library("httr")
library("jsonlite")
library("ParallelDots")

url="https://apis.paralleldots.com/v4/sentiment"
text="C'est un environnement très hostile, si vous choisissez de débattre ici, vous serez vicieusement attaqué par l'opposition"
result<-sentiment(url,text,api_key,"fr")

```
 Available APIs: sentiment | sentiment_batch | abuse | abuse_batch | custom_classifier | emotion | emotion_batch | sarcasm | sarcasm_batch | intent |intent_batch | keywords | keywords_batch | multilang_keywords | ner | ner_batch | phrase_extractor | phrase_extractor_batch | similarity | taxonomy | taxonomy_batch | facial_emotion | object_recognizer |

Note : You must pass your API key as the last parameter for single usage.
