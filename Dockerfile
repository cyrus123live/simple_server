FROM python:3.11-slim

WORKDIR /app

COPY simple_server.py .

RUN pip install fastapi uvicorn

EXPOSE 8000

CMD ["uvicorn", "simple_server:app", "--host", "0.0.0.0", "--port", "8000"]
