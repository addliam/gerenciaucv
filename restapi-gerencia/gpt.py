import os
from openai import OpenAI
from dotenv import load_dotenv

class Gpt:
    def __init__(self) -> None:
        load_dotenv()   
        pass

    def answer(self, msg: str) -> str:
        client = OpenAI(
            api_key=os.environ.get("OPENAI_API_KEY"),
        )

        chat_completion = client.chat.completions.create(
            messages=[
                {
                    "role": "user",
                    "content": msg,
                }
            ],
            model="gpt-3.5-turbo",
        )
        response = chat_completion.choices[0].message.content
        return response