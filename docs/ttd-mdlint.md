title: TTD Markdown Lint - TestTheDocs
description: Rakpart - Markdown code style linter.

# TTD Markdown Lint

![ttd-mdlint example](_static/ttd-mdlint.png)

## About

Markdown Linter In A Container.

Based on [markdownlint](https://github.com/DavidAnson/markdownlint) and [docker-markdown-lint](https://github.com/dcycle/docker-markdown-lint).

## Usage

```shell
docker run -v `pwd`:/srv/docs testthedocs/ttd-mdlint
```

## Configuration

You can change the configuration, by adjusting the file named `config.json`, currently ignored:

- [MD013](https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md013) (Line length)
- [MD033](https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md033) (Inline HTML)
- [MD044](https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md044) (Names should have the correct capitalization)

Please see the [list](https://github.com/DavidAnson/markdownlint#rules--aliases) of all rules.

## Source Code

The code of `ttd-mdlint` is located on [GitHub](https://github.com/testthedocs/rakpart/tree/master/ttd-mdlint).
