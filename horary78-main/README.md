# Horary App Docker Instructions

This repository contains the backend and frontend for the Horary astrology application. The project structure was simplified so the backend now lives in the `backend/` directory and the frontend in `frontend/`. A `Dockerfile` is provided to build a container that bundles both parts and serves the API via Gunicorn.

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

## Windows Quick Start

If you prefer running the backend directly on Windows without Docker, use the
`start.bat` script:

```bat
start.bat
```

The script creates a local Python virtual environment, installs dependencies from
`backend\requirements.txt`, and starts the server with
`waitress-serve --port %PORT% wsgi:application`.
