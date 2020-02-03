# Conda-Base

[![master Build Status](https://travis-ci.org/Midnighter/conda-base.svg?branch=master)](https://travis-ci.org/Midnighter/conda-base)
[![Docker image pulls](https://img.shields.io/docker/pulls/midnighter/conda-base)](https://cloud.docker.com/repository/docker/midnighter/conda-base/)
[![License](https://img.shields.io/badge/license-Apache--2.0-blueviolet)](https://opensource.org/licenses/Apache-2.0)

The `conda-base` image slightly expands the
[continuumio/miniconda3](https://hub.docker.com/r/continuumio/miniconda3) image
and includes a configuration file with strict channel order, as well as
particular Python versions in the base environment.

## Usage

The `conda-base` image is intended to be used in other images that further define
the conda environment by installing packages therein. It would typically be
used in the following way:

```dockerfile
FROM midnighter/conda-base:3.8-latest
```

## Python Versions

Images are generated for the following Python versions. Please [open an
issue](https://github.com/Midnighter/conda-base/issues/new) if you require
others.

| Tag | Python |
| --- | ------ |
| 3.6-latest | 3.6 |
| 3.7-latest | 3.7 |
| 3.8-latest | 3.8 |

Additionally, there are monthly builds that create a date based image tag.

## Copyright

* Copyright © 2020, Moritz E. Beber. All rights reserved.
* Free software licensed under the [Apache License, Version 2.0](LICENSE).
