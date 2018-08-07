# Sphinx Toctree Test

!!! abstract

    Toctree Validation For Sphinx Based Documentation

This test checks for multiple `:numbered:` entries.

Following our write guidelines we allow this setting once in index.rst.

This tests checks all reStructuredText (`.rst`) files, if the test detects `:numbered:` in another file than `index.rst` it will report an error.

## Installation

Pull the image:

```console
docker pull testthedocs/ttd-toctree
```

### Dependencies

- [Docker](https://docker.com "Homepage of docker")

## Usage

Navigate to the directory containing your reStructuredText (.rst) files.

### Run The Test

``` console
docker run -it -v `pwd`:/build/docs testthedocs/ttd-toctree
```

![A Gif with example](images/ttd-testtoc.gif)

## Source Code

The code of `tts-toctree` is located on [GitHub](https://github.com/testthedocs/rakpart/tree/master/ttd-toctree).
