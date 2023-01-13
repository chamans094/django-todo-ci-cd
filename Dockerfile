FROM python:3
RUN pip install django==3.2
WORKDIR /home/app
COPY . .
EXPOSE 8001
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
