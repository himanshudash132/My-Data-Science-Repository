import uvicorn
from fastapi import FastAPI
import pandas as pd
import numpy as np
import re
import nltk
import pickle
from nltk.corpus import stopwords

app = FastAPI()

model1 = pickle.load(open('/Users/shridharmankar/NLP/ldmodel.pkl','rb'))
model2 = pickle.load(open('/Users/shridharmankar/NLP/ldvector.pkl','rb'))

@app.get('/')
def index():
    return {'Deployment': 'Hello and Welcome to 5 Minutes Engineering'}

@app.post('/predict')
def nlp(text : str):
    x = model2.transform([text]).toarray()
    prediction = model1.predict(x)
    if(prediction == 0):
        output = 'Arabic'
    if(prediction == 1):
        output = 'Danish'
    if(prediction == 2):
        output = 'Dutch'
    if(prediction == 3):
        output = 'English'
    if(prediction == 4):
        output = 'French'
    if(prediction == 5):
        output = 'German'
    if(prediction == 6):
        output = 'Greek'
    if(prediction == 7):
        output = 'Hindi'
    if(prediction == 8):
        output = 'Italian'
    if(prediction == 9):
        output = 'Kannada'
    if(prediction == 10):
        output = 'Malayalam'
    if(prediction == 11):
        output = 'Portuguese'
    if(prediction == 12):
        output = 'Russian'
    if(prediction == 13):
        output = 'Spanish'
    if(prediction == 14):
        output = 'Swedish'
    if(prediction == 15):
        output = 'Tamil'
    if(prediction == 16):
        output = 'Turkish'

    return {"Prediction": output}


if __name__ == '__main__':
    uvicorn.run(app, host='127.0.0.1', port=9000)