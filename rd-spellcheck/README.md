# rd-spellcheck

Containerized application based on [Sphinx](http://www.sphinx-doc.org/en/stable/) for spell checking documentation written in reST.


## Features

- Small Image, based on [Alpine Linux](http://www.alpinelinux.org/).
- You do not need to install [Sphinx](http://www.sphinx-doc.org/en/stable/) locally.
- Pre-configured with [sphinxcontrib-spelling](https://pypi.python.org/pypi/sphinxcontrib-spelling/).
- Uses [Tini](https://github.com/krallin/tini) as `init`.
- Uses [su-exec](https://github.com/ncopa/su-exec) for setting permissions.

## Documentation

Full documentation for end users can be found in the ["docs"](docs) folder.

## Dependencies

- [Docker](https://docker.com "Homepage of docker")

## Installation

Pull the image:

```
docker pull testthedocs/ttd-docsbuilder
```

## Contribute

- [Issue Tracker](github.com/testthedocs/rd-spellcheck/issues)
- [Source Code](github.com/testthedocs/rd-spellcheck)

## Support

If you are having issues, please let us know.

## License

The project is licensed under the MIT license.

