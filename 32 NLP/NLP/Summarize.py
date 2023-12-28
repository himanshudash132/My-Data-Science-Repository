import nltk
import numpy as np
import re
import nltk
import heapq
from nltk.corpus import stopwords
import uvicorn
from fastapi import FastAPI

app = FastAPI()

@app.get('/')
def index():
    return {'Deployment': 'Hello and Welcome to 5 Minutes Engineering'}

@app.post('/predict')
def nlp(text : str):
    pure_text = re.sub('[^a-zA-Z]', ' ', text )
    sentences = nltk.sent_tokenize(text)
    stopwords = nltk.corpus.stopwords.words('english')
    word_freq = {}
    for word in nltk.word_tokenize(pure_text):
        if word not in stopwords:
            if word not in word_freq.keys():
                word_freq[word] = 1
            else:
                word_freq[word] += 1
    
    max_freq = max(word_freq.values())
    for word in word_freq.keys():
        word_freq[word] = (word_freq[word]/max_freq)
    
    sentence_values = {}
    for s in sentences:
        for word in nltk.word_tokenize(s.lower()):
            if word in word_freq.keys():
                if s not in sentence_values.keys():
                    sentence_values[s] = word_freq[word]
                else:
                    sentence_values[s] += word_freq[word]
    
    
    summary = heapq.nlargest(2, sentence_values, key=sentence_values.get)
    summary = ' '.join(summary)


    return{'summary' : summary}




if __name__ == '__main__':
    uvicorn.run(app, host='127.0.0.1', port=5000)

