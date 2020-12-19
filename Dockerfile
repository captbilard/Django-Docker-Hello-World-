# Pull base image

FROM python:3.7

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working Directory

WORKDIR /code

# Install dependecies
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

#Copy project
COPY . /code/