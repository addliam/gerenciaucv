from typing import Union

from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from typing import Optional
from gpt import Gpt
from repository import Repository
from csvformatter import Csvformatter
from pydantic import BaseModel
from typing import List
import json


class Recomendacion(BaseModel):
    titulo: str
    descripcion: str


class Respuesta(BaseModel):
    recomendaciones: List[Recomendacion]


app = FastAPI()
origins = [
    "http://localhost",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
gpt = Gpt()
repository = Repository()
csvformatter = Csvformatter()


@app.get("/ia", response_model=Respuesta)
def getsugerenciaia(userid: Optional[int] = None):
    if not userid:
        raise HTTPException(
            status_code=404, detail="No se proporcionó el parámetro obligatorio 'userid'.")
    if not repository.check_user_exists(userid):
        raise HTTPException(
            status_code=404, detail="No existe el usuario con el 'userid' proporcionado.")
    gastos = repository.get_gasto_from_userid(userid)
    gastos_csv = csvformatter.format(gastos)
    # Consultar información personal del usuario
    infopersonal = repository.get_info_personal_from_userid(userid)
    infopersonal_csv = csvformatter.format(infopersonal)
    userprompt = f"{gastos_csv}\n\n{infopersonal_csv}"
    response_txt = gpt.answer(userprompt)
    response_json = json.loads(response_txt)
    return (response_json)


@app.get("/checkia")
def read_root():
    response = gpt.answer(
        "Quién fue el primer presidente de los Estados Unidos")
    return {"response": response}
