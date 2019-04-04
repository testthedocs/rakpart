title: TTD Toctree - TestTheDocs
description: Rakpart - Toctree validation for Sphinx based documentation.

# TTD Toctree

HERE A PICTURE

## About

Toctree validation for [Sphinx](http://www.sphinx-doc.org/en/master/) based documentation.

This test checks for multiple `:numbered:` entries.

This tests checks all [reStructuredText](http://docutils.sourceforge.net/rst.html) (reST) files, if the test detects `:numbered:` in another file than `index.rst` it reports an error.

## Usage

Run `ttd-toctree` in the directory containing your reStructuredText (`.rst`) files.

```shell
docker run -it -v `pwd`:/build/docs testthedocs/ttd-toctree
```

## Source

The code of `ttd-toctree` is located on [GitHub](https://github.com/testthedocs/rakpart/tree/master/ttd-toctree).
