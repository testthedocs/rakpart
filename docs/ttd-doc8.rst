========
TTD-Doc8
========


.. admonition:: Abstract

   Doc8 is an opinionated style checker for rst (with basic support for plain text) styles of documentation.

Based on `doc8 <https://github.com/openstack/doc8>`_.

Installation
============

Dependencies
------------

- `Docker <https://docker.com>`_

Usage
=====

Navigate to the directory containing your reStructuredText (.rst) or markdown (.md) files.

.. code-block:: shell

    docker run -it -v `pwd`:/srv/data testthedocs/doc8

Checks
------

- Invalid rst format - ``D000``
- Lines should not be longer than 150 characters - ``D001``

  - RST exception: line with no whitespace except in the beginning
  - RST exception: lines with http or https urls
  - RST exception: literal blocks
  - RST exception: rst target directives
- No trailing whitespace - ``D002``
- No tabulation for indentation - ``D003``
- No carriage returns (use unix newlines) - ``D004``
- No newline at end of file - ``D005``

Source Code
===========

The code of `tts-doc8` is located on `GitHub <https://github.com/testthedocs/rakpart/tree/master/ttd-doc8>`_.