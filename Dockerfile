#Base Image
FROM python:3

#Working Directory inside the container
WORKDIR /data

#Installling Dependencies
RUN pip install django==3.2

#Moving files from local to container
COPY . .

#Running the migrations
RUN python manage.py migrate

#Exposing the port to connect outside the container
EXPOSE 8000

#Final Command
CMD ["python","manage.py","runserver","0.0.0.0:8000"]