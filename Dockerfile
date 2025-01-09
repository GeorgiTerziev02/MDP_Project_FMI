FROM 3.13-slim

WORKDIR .

COPY src/ /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
