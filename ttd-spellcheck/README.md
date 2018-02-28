# ttd-spellcheck

Containerized spell-check application based.

Written by Praveen Kumar for [Project Atomic](https://github.com/projectatomic).

## Features

- Small Image, based on [Alpine Linux](http://www.alpinelinux.org/).
- Straightforward configuration
- Uses [Tini](https://github.com/krallin/tini) as `init`.
- Uses [su-exec](https://github.com/ncopa/su-exec) for setting permissions.

## Documentation

Full documentation for end users can be found in the ["docs"](docs) folder.

## Dependencies

- [Docker](https://docker.com "Homepage of docker")

## Installation

Pull the image:

```
docker pull testthedocs/ttd-spellcheck
```

## Contribute

- [Issue Tracker](https://github.com/testthedocs/ttd-spellcheck/issues)
- [Source Code](https://github.com/testthedocs/ttd-spellcheck)

## Support

If you are having issues, please let us know.

## License

The project is licensed under the GPLv2.
