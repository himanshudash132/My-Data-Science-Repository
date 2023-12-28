import uvicorn
import tensorflow as tf
from tensorflow.python import keras
from tensorflow.python.keras import models
from tensorflow.python.keras.models import Sequential,load_model
from sklearn.model_selection import train_test_split
from fastapi import FastAPI, File, UploadFile
from io import BytesIO
from PIL import Image
import numpy as np
import pandas as pd
model = load_model('/Users/shridharmankar/DeepLearning/clf.h5')

app = FastAPI()

@app.get('/')
def index():
    return {'Deployment': 'Hello and Welcome to 5 Minutes Engineering'}


@app.post("/predict")
async def predict1(
    file: UploadFile = File(...)):
    

    image = await file.read()
    image = Image.open(BytesIO(image))
    image = image.convert('RGB')

    pic = np.array(image)

    pic = pic / 255
    pic = np.expand_dims(pic, axis=0)
    predicted = model.predict(pic)
    prediction = predicted[0]
    if(prediction < 0.5):
        output = 'Cat'
    if(prediction > 0.5):
        output = 'Dog'

    return {"Prediction": output}


if __name__ == "__main__":
    uvicorn.run(app, host='127.0.0.1', port=5000)