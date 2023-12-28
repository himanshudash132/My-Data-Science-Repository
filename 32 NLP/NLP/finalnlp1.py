import uvicorn
from fastapi import FastAPI
import pandas as pd
import numpy as np
import re
import nltk
import pickle
from nltk.corpus import stopwords
from nltk.stem.porter import PorterStemmer

app = FastAPI()

model1 = pickle.load(open('/Users/shridharmankar/NLP/nlpmodel.pkl','rb'))
model2 = pickle.load(open('/Users/shridharmankar/NLP/vector.pkl','rb'))

@app.get('/')
def index():
    return {'Deployment': 'Hello and Welcome to 5 Minutes Engineering'}

@app.post('/predict')
def nlp(document : str):
    corpus = []
    for i in range(0, 1):
      review = re.sub('[^a-zA-Z]', ' ', document)
      review = review.lower()
      review = review.split()
      ps = PorterStemmer()
      all_stopwords = stopwords.words('english')
      all_stopwords.remove('not')
      review = [ps.stem(word) for word in review if not word in set(all_stopwords)]
      review = ' '.join(review)
      corpus.append(review)

      X = model2.transform(corpus)
      y_pred = model1.predict(X)
      if(y_pred == 1):
        prediction = 'Positive Review'
      else:
        prediction = 'Negative Review'

      return{'prediction' : prediction}

if __name__ == '__main__':
    uvicorn.run(app, host='127.0.0.1', port=5000)



