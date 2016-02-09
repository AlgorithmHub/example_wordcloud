library(tm)
library(SnowballC)
library(wordcloud)
library(rvest)
source('wfigure.r')

html <- read_html(link)
txt <- html %>% html_text()
myCorpus = Corpus(VectorSource(txt))
myCorpus = tm_map(myCorpus, content_transformer(tolower))
myCorpus = tm_map(myCorpus, removePunctuation)
myCorpus = tm_map(myCorpus, removeNumbers)
myCorpus = tm_map(myCorpus, removeWords, c(stopwords("SMART"), "thy", "thou", "thee", "the", "and", "but"))


id <- wshow('svg')
wordcloud(myCorpus, scale=c(4,0.5),min.freq=minFreq, max.words=maxWords, random.order=TRUE, random.color=TRUE, colors=brewer.pal(8, "Pastel1"))
dev.off()
wemit('figure', id)
