import uvicorn
from fastapi import FastAPI
from base import iris_data
import pickle
app = FastAPI()
pickle_in = open("model.pkl","rb")
classifier=pickle.load(pickle_in)

@app.get('/')
def index():
    return {'Deployment': 'Hello and Welcome to 5 Minutes Engineering'}

@app.post('/predict')
def predict(data:iris_data):
    data = data.dict()
    sepal_length=data['sepal_length']
    sepal_width=data['sepal_width']
    petal_length=data['petal_length']
    petal_width=data['petal_width']

    prediction = classifier.predict([[sepal_length,sepal_width,petal_length,petal_width]])
    if(prediction[0] == 0):
        prediction="setosa"
    elif(prediction[0] == 1):
        prediction="versicolor"
    else:
        prediction="verginica"
    return {
        'prediction': prediction
    }

if __name__ == '__main__':
    uvicorn.run(app, host='127.0.0.1', port=5000)
