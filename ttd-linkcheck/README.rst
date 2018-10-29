=============
TTD Linkcheck
=============

.. admonition:: About

   Linkchecker for ``rst`` and ``md`` source files.

Based on `linkcheck <https://github.com/cytopia/linkcheck>`_.

Installation
============

Dependencies
------------

- `Docker <https://docker.com>`_

Usage
=====

docker run -it -v `pwd`:/srv/test lc:latest

.. code-block:: console

   docker run -v `pwd`:/srv/docs testthedocs/ttd-linkcheck

Settings
--------

Default settings are configured in the `script itself <https://github.com/testthedocs/rakpart/blob/master/ttd-linkcheck/linkcheck>`_.

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
