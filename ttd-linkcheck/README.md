# ttd-mdlint

Markdown Linter In A Container.

## Features

Based on: https://github.com/DavidAnson/markdownlint and https://github.com/dcycle/docker-markdown-lint
Another great alternative is: https://github.com/remarkjs/remark-lint

## Documentation

Full documentation for end users can be found in the ["docs"](..docs/) folder.

## Dependencies

- [Docker](https://docker.com "Homepage of docker")

## Installation

Pull the image:

```
docker pull testthedocs/ttd-mdlint
```

## Usage

docker run -it -v `pwd`:/srv/test lc:latest

``` console
docker run -v $(pwd)/docs:/srv/docs testthedocs/ttd-mdlint
```
## Contribute

- [Issue Tracker](https://github.com/testthedocs/rakpart/issues)
- [Source Code](https://github.com/testthedocs/rakpart/tree/master/ttd-mdlint)

## Support

If you are having issues, please let us know.

## License

The project is licensed under the GPLv2.
