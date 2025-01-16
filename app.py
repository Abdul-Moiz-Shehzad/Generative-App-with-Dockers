from fastapi import FastAPI
from transformers import pipeline

#Create new FastAPI app instance
app=FastAPI()

pipe=pipeline("text2text-generation",model="google/flan-t5-small")

@app.get('/')
def home():
    return {"Message":"Hello"}

@app.get('/generate')
def generate(text:str):
    output=pipe(text)
    return {"output":output[0]["generated_text"]}

 