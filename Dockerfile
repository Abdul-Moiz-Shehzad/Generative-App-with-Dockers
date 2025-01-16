# Use the official Python 3.9 base image
FROM python:3.9-slim

# Set the working directory to /code
WORKDIR /code

# Copy the requirements file into the container
COPY ./requirements.txt /code/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r /code/requirements.txt

# Create a new user
RUN useradd -m user

# Switch to the new user
USER user

# Set environment variables
ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH

# Set the working directory to the user's home directory
WORKDIR $HOME/app

# Copy the current directory's contents into the container
COPY --chown=user . $HOME/app

# Expose the FastAPI port
EXPOSE 7860

# Start the FastAPI app on port 7860
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "7860"]