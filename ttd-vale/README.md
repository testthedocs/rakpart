# ttd-vale

Spelling, grammar, style, and readability linter.

## Features

Flexible English language linter with dozens of predefined checks. See ["docs"](..docs/) for more details.

## Documentation

Full documentation for end users can be found in the ["docs"](..docs/) folder.

## Dependencies

- [Docker](https://docker.com "Homepage of docker")

## Installation

Pull the image:

```
docker pull testthedocs/ttd-vale
```

## Usage

Run `ttd-vale` from in your docs directory:

```console
docker run -v $(pwd)/docs:/srv/docs testthedocs/ttd-vale
```

## Contribute

- [Issue Tracker](https://github.com/testthedocs/rakpart/issues)
- [Source Code](https://github.com/testthedocs/rakpart/tree/master/ttd-vale)

## Support

If you are having issues, please let us know.

## License

`MIT <https://choosealicense.com/licenses/mit/>`_
