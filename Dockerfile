FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]