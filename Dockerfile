FROM python:3.8

#MAINTANER Your Name "youremail@domain.tld"

RUN pip install --upgrade pip 

COPY ./helloflesk /app/helloflesk

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app/

#définir mon réperatoire de travail

RUN pip install -r requirements.txt

CMD  ["python", "./helloflesk/app_simple.py"]


# We copy just the requirements.txt first to leverage Docker cache

#RUN pip install /dossier/*whl
#WORKDIR /app/



#COPY . /app

#ENTRYPOINT [ "python" ]

 




