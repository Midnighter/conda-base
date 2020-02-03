# Copyright (c) 2020, Moritz E. Beber.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM continuumio/miniconda3:latest

ENV PYTHONUNBUFFERED=1

WORKDIR "/root"

COPY .condarc ./

ARG PYTHON_VERSION="3.8"

RUN set -eux \
    && conda update -n base conda \
    && conda install python="${PYTHON_VERSION}" \
    && conda clean --all --force-pkgs-dirs \
    && conda init bash

