# This repository is deprecated.

Use the official image [`ncbi/edirect`](https://hub.docker.com/r/ncbi/edirect) instead.

# edirect-docker

edirect-docker is the [Docker](https://hub.docker.com) base
image for [Entrez Edirect ](https://www.ncbi.nlm.nih.gov/books/NBK25501/).

One may use it to create his own edirect applications using
Docker.

## Usage

Just include this image in your `Dockerfile`:

	FROM daknuett/edirect

All the scripts are installed under `/install/edirect`. The
paths are set accordingly. 

The `Dockerfile` sets up the `EDIRECT_PUBMED_MASTER` at
`/data`.

You can also run an interactive shell in the container in
order to modify your data.

	docker run -it -v /path/to/your/pubmed_master:/data daknuett/edirect bash

## Bases

This image is based on `debian:9`.
