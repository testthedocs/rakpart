===============
TTD Remark Lint
===============

Docker image for `remark-lint <https://github.com/remarkjs/remark-lint>`_ markdown code style linter.

This image uses the container `zemanlx/remark-lint <https://github.com/zemanlx/remark-lint>`_ as base.

The only difference is that that *ttd-remark-lint* includes `Tini <https://github.com/krallin/tini>`_ and runs as *ttd* user.

Dependencies
============

- `Docker <https://docker.com>`_


Installation
============

Pull the image:

.. code-block:: shell

   docker pull testthedocs/ttd-remark-lint

Usage
=====

Run `remark-lint` from in your docs directory:

.. code-block:: shell

   docker run --rm -i -v $PWD:/lint/input:ro testthedocs/ttd-remark .

Default configuration:

.. code-block:: yaml

   plugins:
     preset-lint-consistent:
     preset-lint-markdown-style-guide:
     preset-lint-recommended:
     validate-links:


Contribute
==========

- `Issue Tracker <https://github.com/testthedocs/rakpart/issues>`_
- `Source Code <https://github.com/testthedocs/rakpart/tree/master/ttd-remark`_



Support
=======

If you are having issues, please let us know.


License
=======

`MIT <https://choosealicense.com/licenses/mit/>`_
