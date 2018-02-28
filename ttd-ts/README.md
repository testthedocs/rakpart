# ttd-ts

Containerised application for checking trailing spaces on line ends.


## Features

- Small Image, based on [Alpine Linux](http://www.alpinelinux.org/).
- Uses [Tini](https://github.com/krallin/tini) as `init`.
- Uses [su-exec](https://github.com/ncopa/su-exec) for setting permissions.
- Uses [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) for searching.

## Documentation

Full documentation for end users can be found in the ["docs"](docs) folder.

## Dependencies

- [Docker](https://docker.com "Homepage of docker")

## Installation

Pull the image:

```
docker pull testthedocs/ttd-ts
```

## Example

![example](docs/_static/ttd-ts-screen.png)

## Contribute

- [Issue Tracker](https://github.com/testthedocs/ttd-ts/issues)
- [Source Code](https://github.com/testthedocs/ttd-ts)

## Support

If you are having issues, please let us know.

## License

The project is licensed under the GPLv2.
