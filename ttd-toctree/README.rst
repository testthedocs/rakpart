===========
TTD Toctree
===========

QA test (Toctree Validation) for sphinx based documentation

This test checks for multiple `:numbered:` entries.

Following our write guidelines we allow this setting **once**
in *index.rst*.

This tests checks all reStructuredText (.rst) files, if the test detects
`:numbered:` in another file than *index.rst* it will report an error.

Features
========

- Small Image, based on `Alpine Linux <https://www.alpinelinux.org/>.
- Uses `Tini <https://github.com/krallin/tini>`_ as `init`.
- Uses `su-exec <https://github.com/ncopa/su-exec>`_ for setting permissions.
- Uses `The Silver Searcher <https://geoff.greer.fm/ag/>`_ for speed and better configuration.

Dependencies
============

- `Docker <https://docker.com>`_

Installation
============

Pull the image:

.. code-block:: shell

   docker pull testthedocs/ttd-toctree


Usage
=====

Navigate to the directory containing your reStructuredText (.rst) files.

Run The Test
------------

.. code-block:: shell

   docker run -it -v `pwd`:/build/docs testthedocs/ttd-toctree


.. image:: docs/_static/ttd-testtoc.gif

Contribute
==========

- `Issue Tracker <github.com/testthedocs/rakpart/issues>`_
- `Source Code <https://github.com/testthedocs/rakpart/tree/master/ttd-toctree>`_

Support
=======

If you are having issues, please let us know.

License
=======

`MIT <https://choosealicense.com/licenses/mit/>`_