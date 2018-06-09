#edirect-docker

edirect-docker is the [Docker](https://hub.docker.com) base
image for [Entrez Edirect ](https://www.ncbi.nlm.nih.gov/books/NBK25501/).

One may use it to create his own edirect applications using
Docker.

## Usage

Just include this image in your `Dockerfile`:

	FROM daknuett/edirect

All the scripts are installed under `/install/edirect`. The
paths are set accordingly.

## Bases

This image is based on `debian:9`.
