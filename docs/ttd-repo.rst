========
TTD Repo
========


.. admonition:: Abstract

   Validation checks, to make sure to follow always the same (our) repository style guide.

   Currently only ``rst`` and ``md`` are supported.

Installation
============

Dependencies
------------

- `Docker <https://docker.com>`_

Usage
=====

Navigate to the top/main directory of your repository.

.. code-block:: shell

    docker run -it -v `pwd`:/srv testthedocs/ttd-repo [option]

Check for ``md``

.. code-block:: shell

   docker run -it -v `pwd`:/srv testthedocs/ttd-repo --md

Options
-------

- ``md``
- ``rst``

Checks
------

File checks for:

- README.rst/md
- CHANGELOG.rst/md
- VERSION
- Makefile
- .dockerignore
- .gitignore

Directory checks for:

- dockerfiles

Source Code
===========

The code of `ttd-repo` is located on `GitHub <https://github.com/testthedocs/rakpart/tree/master/ttd-repo>`_.
