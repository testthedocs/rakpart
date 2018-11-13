========
TTD Repo
========


.. admonition:: Abstract

   Validation checks, to make sure to follow always the same (our) repository style guide.

   Currently only ``rst`` is supported.

Installation
============

Dependencies
------------

- `Docker <https://docker.com>`_

Usage
=====

Navigate to the top/main directory of your repository.

.. code-block:: shell

    docker run -it -v `pwd`:/srv/data testthedocs/ttd-repo

Checks
------

File checks for:

- README.rst
- CHANGES.rst
- VERSION
- Makefile
- .dockerignore
- .gitignore

Directory checks for:

- dockerfiles

Source Code
===========

The code of `ttd-repo` is located on `GitHub <https://github.com/testthedocs/rakpart/tree/master/ttd-repo>`_.
