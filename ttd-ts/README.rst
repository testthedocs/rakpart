===================
TTD Trailing Spaces
===================

Containerised application for checking trailing spaces on line ends.

Features
========

- Small Image, based on `Alpine Linux <https://www.alpinelinux.org/>`_.
- Uses `Tini https://github.com/krallin/tini>`_ as `init`.
- Uses `su-exec <https://github.com/ncopa/su-exec>`_ for setting permissions.
- Uses `The Silver Searcher <https://github.com/ggreer/the_silver_searcher>`_ for searching.

Dependencies
============

- `Docker <https://docker.com>`_

Installation
============

Pull the image:

.. code-block:: shell

   docker pull testthedocs/ttd-ts

Usage
=====

Run `ttd-ts` from in your docs directory:

.. code-block:: shell

   docker run -it -v `pwd`:/build/docs testthedocs/ttd-ts:latest

Contribute
==========

- `Issue Tracker <https://github.com/testthedocs/rakpart/issues>`_
- `Source Code <https://github.com/testthedocs/rakpart/tree/master/ttd-ts>`_

Support
=======

If you are having issues, please let us know.

License
=======

`MIT <https://choosealicense.com/licenses/mit/>`_