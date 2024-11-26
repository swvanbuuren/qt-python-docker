# Qt for Python test docker container

This repository contains the definition and configuration for docker container for testing Qt for Python GUI programs.

It also features an automatic pipeline, that builds the docker container and
uploads it to the [GitHub Container
Registry](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry).


## Usage

This docker container is used in
[pqthreads](https://github.com/swvanbuuren/pqthreads) and
[mlpyqtgraph](https://github.com/swvanbuuren/mlpyqtgraph) for testing and
linting.

## License

An MIT style license applies for `qt-python-docker`, see the [LICENSE](LICENSE)
file for more details.
