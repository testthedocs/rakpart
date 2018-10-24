=============
TTD HTML Test
=============

.. admonition:: About

    ``htmltest`` runs your HTML output through a series of checks to ensure all your links, images, scripts references work, your alt tags are filled in, et cetera.

Based on: `htmltest <https://github.com/wjdp/htmltest>`_.

Another great alternative is `remark-lint <https://github.com/remarkjs/remark-lint>`_.

Installation
============

Dependencies
------------

- `Docker <https://docker.com>`_

Usage
=====

Out of the box (OOTB) ``ttd-htmltest`` is configured to run checks against the directory *_build/html*.

This directory is usually located in your *docs* directory.

If you use a different setup, you have to create your own *.html.yml*.

You can find more information in the `htmltest repository <https://github.com/wjdp/htmltest>`_.

.. code-block:: console

   docker run -it -v `pwd`:/build/docs testthedocs/ttd-htmltest


If you have any validations `ttd-mdlint` will report them.

Source Code
===========

The code of `ttd-htmltest` is located on `GitHub <https://github.com/testthedocs/rakpart/tree/master/ttd-htmltest>`_.