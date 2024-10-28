from typing import Union

from fastapi import FastAPI
from gpt import Gpt

app = FastAPI()
gpt = Gpt()

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/check")
def read_root():
    response = gpt.answer("Quién fue el primer presidente de los Estados Unidos")
    return {"response": response}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}