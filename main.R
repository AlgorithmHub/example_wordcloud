library(tm)
library(SnowballC)
library(wordcloud)
source('wfigure.r')

myCorpus = Corpus(VectorSource(txt))
myCorpus = tm_map(myCorpus, content_transformer(tolower))
myCorpus = tm_map(myCorpus, removePunctuation)
myCorpus = tm_map(myCorpus, removeNumbers)
myCorpus = tm_map(myCorpus, removeWords, c(stopwords("SMART"), "thy", "thou", "thee", "the", "and", "but"))


id <- wshow('svg')
wordcloud(myCorpus, scale=c(4,0.5),min.freq = 5, max.words=125, random.order=TRUE, random.color=TRUE, colors=brewer.pal(8, "Pastel1"))
dev.off()
wemit('figure', id)
