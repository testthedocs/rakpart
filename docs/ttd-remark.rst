===============
TTD Remark Lint
===============

.. admonition:: Abstract

    Markdown Code Style Linter For `CommonMark <https://commonmark.org/>`_.

Based on: `remark-lint <https://github.com/remarkjs/remark-lint>`_ and `zemanlx/remark-lint <https://github.com/zemanlx/remark-lint>`_.

Usage
=====

Run `remark-lint` from in your docs directory:

.. code-block:: shell

   docker run --rm -i -v $PWD:/lint/input:ro testthedocs/ttd-remark .

Default configuration:

.. code-block:: yaml

   plugins:
     preset-lint-consistent:
     preset-lint-markdown-style-guide:
     preset-lint-recommended:
     validate-links:

Source Code
===========

The code of `ttd-mdlint` is located on `GitHub <https://github.com/testthedocs/rakpart/tree/master/ttd-remark>`_.
