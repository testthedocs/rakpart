# ttd-textlint

Custom setup of [textlint](https://textlint.github.io/) in a Alpine container.

![Example Test](docs/_static/ttd-textlinter-example.gif "Gif of Example")

## Features

- textlint-rule-alex
- textlint-rule-no-dead-link
- textlint-rule-unexpanded-acronym
- textlint-rule-write-good
- textlint-rule-rousseau
- textlint-plugin-rst
- textlint-plugin-html
- textlint-rule-max-number-of-lines
- textlint-rule-terminology

- Uses [Tini](https://github.com/krallin/tini) as `init`.
- Uses [su-exec](https://github.com/ncopa/su-exec) for setting user permissions.

## Documentation

Full documentation for end users can be found in the ["docs"](..docs/) folder.

## Dependencies

- [Docker](https://docker.com "Homepage of docker")

## Installation

Pull the container from Docker Hub

```
docker pull testthedocs/ttd-textlint
```

## Usage

ttd-textlint expects a configuration file called ``.textlintrc``

Example:

```
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

See the */docs* directory for examples.

For more info, please read the [documentation about configuring textlint](https://github.com/textlint/textlint/blob/master/docs/configuring.md).

## Contribute

- [Issue Tracker](https://github.com/testthedocs/rakpart/issues)
- [Source Code](https://github.com/testthedocs/rakpart/tree/master/ttd-textlint)

## Support

If you are having issues, please let us know.

## License

`MIT <https://choosealicense.com/licenses/mit/>`_
