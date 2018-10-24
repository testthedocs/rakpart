# ttd-htmltest

Debain Based Docker Container For Running HTML Checks Based On [htmltest](https://github.com/wjdp/htmltest)

## Features

- Runs HTMLchecks against documentation.

## Documentation

Full documentation for end users can be found in the ["docs"](..docs/) folder.

## Dependencies

- [Docker](https://docker.com "Homepage of docker")

## Installation

Pull the image:

```
docker pull testthedocs/ttd-htmltest
```

## Usage

Out of the box (OOTB) *ttd-htmltest* is configured to run checks against the directory ``_build/html``.

This directory is usually located in your *docs* directory.

If you use a different setup, you have to create your own ``.html.yml``.

You can find more information in the [htmltest repository](https://github.com/wjdp/htmltest).

### Run The Test

``` bash
docker run -it -v `pwd`:/build/docs testthedocs/ttd-htmltest
```

![A Gif with example](docs/_static/ttd-htmltest.png)

## Contribute

- [Issue Tracker](https://github.com/testthedocs/rakpart/issues)
- [Source Code](https://github.com/testthedocs/rakpart/tree/master/ttd-htmltest)

## Support

If you are having issues, please let us know.

## License

`MIT <https://choosealicense.com/licenses/mit/>`_
