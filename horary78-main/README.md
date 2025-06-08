# Horary App Docker Instructions

This repository contains the backend and frontend for the Horary astrology application. The project structure was simplified so the backend now lives in the `backend/` directory and the frontend in `frontend/`. A `Dockerfile` is provided to build a container that bundles both parts and serves the API via Gunicorn. All Python dependencies are listed in `backend/requirements.txt`.

## Build the Image

From the repository root run:

```bash
docker build -t horary-app .
```

## Run the Container

After building the image, start the application with:

```bash
docker run -p 5000:5000 horary-app
```

The API will be available on `http://localhost:5000`.

## Local Development

If you prefer to run the application without Docker, first create a virtual environment and install the dependencies:

```bash
python -m venv venv
source venv/bin/activate
pip install -r backend/requirements.txt
```

Then start the API with:

```bash
python backend/app.py
```
