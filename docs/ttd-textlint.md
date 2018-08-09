# TTD-Textlint

!!! abstract

    The pluggable linting tool for text and markdown.

Based on: [textlint](https://textlint.github.io).

Another great alternative is [remark-lint](https://github.com/remarkjs/remark-lint).

## Configuration

ttd-textlint expects a configuration file called ``.textlintrc``

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


## Usage

```console
docker run -v "${PWD}":/srv testthedocs/ttd-textlint *
```

If you have any validation `ttd-textlint` will report them.

![ttd-textlint](images/ttd-textlinter-example.gif "ttd-textlint")

## Source Code

The code of `ttd-mdlint` is located on [GitHub](https://github.com/testthedocs/rakpart/tree/master/ttd-mdlint).
