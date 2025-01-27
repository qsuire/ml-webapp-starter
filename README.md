# ML Webapp Starter

This project is a starter kit to learn how to use Python with containers.

## Structure

### `Dockerfile`

The base Dockerfile. You can build an image of the project with:

```
podman build -t my_project .
```

### `requirements.txt`

This file lists the Python dependencies of the project. It is automatically used with `pip install -r requirements.txt` in the `Dockerfile`.

### `main.py`

The entrypoint of your Python application. This file is used in the `CMD` instruction of the `Dockerfile`.

### `images/`

A folder containing some images (useful for OCR tasks).

## Local Development with a container

To develop locally, you can share your local files with the folder `/code/` in the container:

```
podman run -it -v $(pwd):/code my_project /bin/bash
```
