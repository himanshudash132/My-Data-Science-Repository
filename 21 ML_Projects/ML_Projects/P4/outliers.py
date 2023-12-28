import uvicorn
from fastapi import FastAPI
from meta import var_data
import pickle
app = FastAPI()
pickle_in = open("/Users/shridharmankar/Complete Data Science Basics To Advanced/outlier.pkl","rb")
classifier=pickle.load(pickle_in)

@app.get('/')
def index():
    return {'Deployment': 'Hello and Welcome to 5 Minutes Engineering'}

@app.post('/predict')
def predict(data:var_data):
    data = data.dict()
    X1=data['X1']
    X2=data['X2']

    prediction = classifier.predict([[X1,X2]])
    if(prediction[0] == 1):
        prediction="Not a Outlier"
    elif(prediction[0] == -1):
        prediction="Outlier"
    return {
        'prediction': prediction
    }

if __name__ == '__main__':
    uvicorn.run(app, host='127.0.0.1', port=5000)
