# ttd-mdlint

Markdown Linter In A Container.


Based on: https://github.com/DavidAnson/markdownlint and https://github.com/dcycle/docker-markdown-lint

Another great alternative is: https://github.com/remarkjs/remark-lint

## Configuration

You can change the config, by changing `confog.json`, currenlty we ignore:

- [MD013](https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md013)
- [MD033](https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md033)
- [MD044](https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md044)

You can change the config, by changing `confog.json`, currenlty we ignore https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md013

## Usage

``` console
docker run -v $(pwd)/docs:/srv/docs testthedocs/ttd-mdlint
````
