
FROM python:3.9


WORKDIR /code


COPY ./requirements.txt /code/requirements.txt


RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt


COPY ./restapi-gerencia /code/restapi-gerencia


CMD ["fastapi", "run", "app/main.py", "--port", "80"]