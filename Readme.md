# FastAPI Text Generation App

This is a FastAPI application that uses the `google/flan-t5-small` model for text generation. The app provides two endpoints: a home endpoint and a text generation endpoint.

## Endpoints

- `/`: Returns a welcome message.
- `/generate`: Generates text based on the input provided.

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/Abdul-Moiz-Shehzad/Generative-App-with-Dockers
    cd Generative-App-with-Dockers
    ```

2. Install the required dependencies:
    ```bash
    pip install -r requirements.txt
    ```
## Dockerfile

To containerize the FastAPI app, create a Dockerfile

## Publishing to Hugging Face Space

To publish your Dockerized FastAPI app to Hugging Face Space, follow these steps:
1. Create a new Space on Hugging Face.
2. In the Space settings, select "Docker" as the runtime.
3. Push your Docker image to a container registry (e.g., Docker Hub).
4. In the Space settings, provide the Docker image URL from the container registry.
Deploy the Space.
