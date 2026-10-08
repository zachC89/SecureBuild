FROM python:3.14-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN groupadd --system securebuild && useradd --system --gid securebuild securebuild

COPY --chown=securebuild:securebuild app ./app

USER securebuild

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]