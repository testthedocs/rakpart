=============
TTD Linkcheck
=============

.. admonition:: About

   Linkchecker for ``rst`` and ``md`` source files.


Based on:

Installation
============

Dependencies
------------

- `Docker <https://docker.com>`_


Documentation
=============


Usage
=====

docker run -it -v `pwd`:/srv/test lc:latest

.. code-block:: console

   docker run -v $(pwd)/docs:/srv/docs testthedocs/ttd-linkcheck


Contribute
==========

- `Issue Tracker <https://github.com/testthedocs/rakpart/issues>`_
- `Source Code <https://github.com/testthedocs/rakpart/tree/master/ttd-mdlint>`_

Support
=======

If you are having issues, please let us know.

License
======

`MIT <https://choosealicense.com/licenses/mit/>`_