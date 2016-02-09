# example_wordcloud
Create a word cloud plot using R.

```R
install.packages('tm')
install.packages('SnowballC')
install.packages('wordcloud')
system('apt-get install -y libxml2-dev')
install.packages('rvest')
```
```JSON
{
  "name": "Word Cloud Plot",
  "f": "source('main.R')",
  "inputs": {
    "title": "Word Cloud",
    "type": "object",
    "description": "Make a word cloud!",
    "properties": {
      "maxWords": {
        "type": "integer",
        "description": "Maximum number of words to plot",
        "default": 125,
        "minimum": 10,
        "maximum": 5000
      },
      "minFreq": {
        "type": "integer",
        "description": "Minimum number of word occurrences",
        "default": 5,
        "minimum": 1,
        "maximum": 99
      },
      "txt": {
        "type": "string",
        "format": "textarea",
        "description": "Text to analyze.",
        "minLength": 5
      }
    },
    "required": [
      "txt"
    ]
  },
  "outputs": [
    "id"
  ],
}
```
```JSON
{
  "name": "Word Cloud Plot",
  "f": "source('main2.R')",
  "inputs": {
    "title": "Word Cloud Link",
    "type": "object",
    "description": "Make a word cloud!",
    "properties": {
      "maxWords": {
        "type": "integer",
        "description": "Maximum number of words to plot",
        "default": 125,
        "minimum": 10,
        "maximum": 5000
      },
      "minFreq": {
        "type": "integer",
        "description": "Minimum number of word occurrences",
        "default": 5,
        "minimum": 1,
        "maximum": 99
      },
      "link": {
        "type": "string",
        "format": "url",
        "description": "Link to analyze."
      }
    }
  },
  "outputs": [
    "id"
  ],
}
```
