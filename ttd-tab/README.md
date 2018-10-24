# ttd-ttab

Containerised application for checking trailing spaces on line ends.

## Features

- Small Image, based on [Alpine Linux](http://www.alpinelinux.org/).
- Uses [Tini](https://github.com/krallin/tini) as `init`.
- Uses [su-exec](https://github.com/ncopa/su-exec) for setting permissions.
- Uses grep and awk for searching and displaying

## Documentation

Full documentation for end users can be found in the ["docs"](..docs/) folder.

## Dependencies

- [Docker](https://docker.com "Homepage of docker")

## Installation

Pull the image:

```consile
docker pull testthedocs/ttd-tab
```

## Usage

Run `ttd-tab` from in your docs directory:

```console
docker run -it -v `pwd`:/build/docs testthedocs/ttd-tab:latest
```

## Contribute

- [Issue Tracker](https://github.com/testthedocs/rakpart/issues)
- [Source Code](https://github.com/testthedocs/rakpart/tree/master/ttd-tab)

## Support

If you are having issues, please let us know.

## License

`MIT <https://choosealicense.com/licenses/mit/>`_
