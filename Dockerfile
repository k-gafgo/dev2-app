FROM python:3.13.3-slim

WORKDIR /app
# can also write ./src ./src
COPY ./src /app/src 
COPY ./pyproject.toml .

RUN python -m pip install -e .

# ENTRYPOINT [ "executable" ]
ENTRYPOINT [ "dev2il-devops-app" ]