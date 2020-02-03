FROM continuumio/miniconda3:latest

ENV PYTHONUNBUFFERED=1

WORKDIR "/root"

COPY .condarc ./

ARG PYTHON_VERSION="3.8"

RUN set -eux \
    && conda update -n base conda \
    && conda install python="${PYTHON_VERSION}" \
    && conda clean --all --force-pkgs-dirs --yes \
    && conda init bash

