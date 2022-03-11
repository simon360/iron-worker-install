FROM python:3.9-buster

RUN pip install pipenv

RUN mkdir /src
WORKDIR /src

COPY ["Pipfile", "Pipfile.lock", "/src/"]

# Uncommenting this line will make building the docker image work
# RUN python -m pip install "setuptools==58.0.0"

# Will fail here, complaining about use_2to3
RUN pipenv install --system --dev

COPY ["main.py", "./"]

CMD [ "python", "main.py" ]