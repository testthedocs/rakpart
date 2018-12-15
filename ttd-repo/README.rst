========
TTD Repo
========

Validation checks, to make sure to follow always the same (our) repository style guide.

Currently only ``rst`` and ``md`` are supported.


Features
========

- Small Image, based on `Alpine Linux <http://www.alpinelinux.org/>`_.
- Uses `Tini <https://github.com/krallin/tini>`_ as `init`.
- Uses `su-exec <https://github.com/ncopa/su-exec>`_ for setting permissions.
- Uses grep and awk for searching and displaying

Dependencies
============

- `Docker <https://docker.com>`_

Installation
============

Pull the image:

.. code-block:: shell

   docker pull testthedocs/ttd-repo

Usage
=====

Run `ttd-repo` from the main directory of your repoitory:

.. code-block:: shell

   docker run -it -v `pwd`:/srv testthedocs/ttd-repo [option]

Check for ``md``:

.. code-block:: shell

   docker run -it -v `pwd`:/srv testthedocs/ttd-repo --md

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

Contribute
==========

- `Issue Tracker <https://github.com/testthedocs/rakpart/issues>`_
- `Source Code <https://github.com/testthedocs/rakpart/tree/master/ttd-repo>`_

Support
=======

If you are having issues, please let us know.

License
=======

`MIT <https://choosealicense.com/licenses/mit/>`_
