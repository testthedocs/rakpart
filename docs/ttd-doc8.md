title: TTD Doc8 - TestTheDocs
description: Rakpart - reStructuredText (reST) code style linter.

# TTD Doc8

![Doc8 picture](_static/doc8-pic)

## About

Doc8 is an opinionated style checker for [reStructuredText](http://docutils.sourceforge.net/rst.html) (reST) (with basic support for plain text) styles of documentation.

Based on [Doc8](https://github.com/openstack/doc8).

## Usage

Run `ttd-doc8` in the directory containing your reStructuredText (`.rst`) files.

```shell
docker run -it -v `pwd`:/srv/data testthedocs/ttd-doc8
```

Default configuration:

- Invalid rst format - ``D000``
- Lines should not be longer than 180 characters - ``D001``
    - RST exception: line with no whitespace except in the beginning
    - RST exception: lines with http or https urls
    - RST exception: literal blocks
    - RST exception: rst target directives
- No trailing whitespace - ``D002``
- No tabulation for indentation - ``D003``
- No carriage returns (use unix newlines) - ``D004``
- No newline at end of file - ``D005``

Please check the [GitHub repository](https://github.com/openstack/doc8) of Doc8 for more on configuration options.

## Source

The code of `ttd-doc8` is located on [GitHub](https://github.com/testthedocs/rakpart/tree/master/ttd-doc8).
