title: TTD Markdown Lint - TestTheDocs
description: Rakpart - Markdown code style linter.

# TTD Markdown Lint

## Abstract

Markdown Linter In A Container.

Based on [markdownlint](https://github.com/DavidAnson/markdownlint) and [docker-markdown-lint](https://github.com/dcycle/docker-markdown-lint).

## Configuration

You can change the configuration, by adjusting the file named `config.json`, currently ignored:

- [MD013](https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md013)
- [MD033](https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md033)
- [MD044](https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md044)

Please see the [list](https://github.com/DavidAnson/markdownlint#rules--aliases) of all rules.

## Usage

```shell
docker run -v `pwd`:/srv/docs testthedocs/ttd-mdlint
```

If you have any validations `ttd-mdlint` will report them.

![ttd-mdlint example](_static/ttd-mdlint.png)

## Source Code

The code of `ttd-mdlint` is located on [GitHub](https://github.com/testthedocs/rakpart/tree/master/ttd-mdlint).
