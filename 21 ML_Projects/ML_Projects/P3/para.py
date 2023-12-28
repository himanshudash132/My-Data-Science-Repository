from pydantic import BaseModel
class house_data(BaseModel):
    MedInc: float 
    HouseAge: float 
    AveRooms: float 
    AveBedrms: float
    Population: float 
    AveOccup: float 
    Latitude: float 
    Longitude: float
