# example_wordcloud
Create a word cloud plot using R.

```
install.packages('tm')
install.packages('SnowballC')
install.packages('wordcloud')
```
```
{
  name: "Word Cloud Plot",
  f: "source('main.R')",
  inputs: {
    "txt": "String",
    "minFreq": "Number",
    "maxFreq": "Number
  },
  outputs: [
    "id"
  ],
}
```
