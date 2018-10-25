============
TTD Textlint
============

.. admonition:: Abstract

   A pluggable linting tool for text and markdown.

Based on: `textlint <https://textlint.github.io>`_.

Installation
============

Dependencies
------------

- `Docker <https://docker.com>`_

Configuration
=============

ttd-textlint expects a configuration file called ``.textlintrc``

.. code-block:: yaml

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


For more info, please read the `documentation about configuring textlint <https://github.com/textlint/textlint/blob/master/docs/configuring.md>`_.

Usage
=====

.. code-block:: shell

   docker run -v `pwd`:/srv testthedocs/ttd-textlint *


If you have any validation `ttd-textlint` will report them.

.. image:: _static/ttd-textlinter-example.gif

Source Code
===========

The code of `ttd-textlint` is located on `GitHub <https://github.com/testthedocs/rakpart/tree/master/ttd-textlint>`_.
