title: TTD Textlint - TestTheDocs
description: Rakpart - TTD-Textlint a luggable linting tool for text and Markdown.

# TTD Textlint

![ttd-mdlint example](_static/ttd-textlinter-example.gif)

## About

A pluggable linting tool for text and markdown.

Based on [textlint](https://textlint.github.io).

## Usage

From in your documentation directory run

```shell
docker run -v `pwd`:/srv testthedocs/ttd-textlint *
```

## Configuration

`ttd-textlint` expects a configuration file called ``.textlintrc``

```yaml

   {
     "plugins": [
       "rst"
     ],
     "rules": {
       "write-good": {
         "so": true
       }
     }
   }
```

For more info, please read the [documentation about configuring textlint](https://github.com/textlint/textlint/blob/master/docs/configuring.md).

## Source

The code of `ttd-textlint` is located on [GitHub](https://github.com/testthedocs/rakpart/tree/master/ttd-textlint).
