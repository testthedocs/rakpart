========
TTD Doc8
========

Style checker for rst

Based on `doc8 <https://github.com/openstack/doc8>`_.

Dependencies
============

- `Docker <https://docker.com>`_

Installation
============

Pull the image:

.. code-block:: shell

   docker pull testthedocs/ttd-doc8

Usage
=====

Run `ttd-doc8` from in your docs directory:

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

Contribute
==========

- `Issue Tracker <https://github.com/testthedocs/rakpart/issues>`_
- `Source Code <https://github.com/testthedocs/rakpart/tree/master/ttd-doc8`_

Support
=======

If you are having issues, please let us know.

License
=======

`MIT <https://choosealicense.com/licenses/mit/>`_
