=======
TTD Tab
=======

Containerised application for checking trailing spaces on line ends.

Features
========

- Small Image, based on [Alpine Linux](http://www.alpinelinux.org/).
- Uses [Tini](https://github.com/krallin/tini) as `init`.
- Uses [su-exec](https://github.com/ncopa/su-exec) for setting permissions.
- Uses grep and awk for searching and displaying

Dependencies
============

- `Docker <https://docker.com>`_

Installation
============

Pull the image:

.. code-block:: shell

   docker pull testthedocs/ttd-tab

Usage
=====

Run `ttd-tab` from in your docs directory:

.. code-block:: shell

   docker run -it -v `pwd`:/build/docs testthedocs/ttd-tab:latest

Contribute
==========

- `Issue Tracker <https://github.com/testthedocs/rakpart/issues>`_
- `Source Code <https://github.com/testthedocs/rakpart/tree/master/ttd-tab`_

Support
=======

If you are having issues, please let us know.

License
=======

`MIT <https://choosealicense.com/licenses/mit/>`_
