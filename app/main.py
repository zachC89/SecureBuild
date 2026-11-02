from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def root():
    return {"message": "SecureBuild Pipeline API"}


@app.get("/health")
def health():
    return {"status": "healthy"}


@app.get("/info")
def info():
    return {
        "name": "SecureBuild Pipeline",
        "version": "1.0.0"
    }