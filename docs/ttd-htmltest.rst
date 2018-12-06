========
TTD HTML
========

.. admonition:: Abstract

    ``htmltest`` runs your HTML output through a series of checks to ensure all your links, images, scripts references work, your alt tags are filled in, et cetera.

Based on: `htmltest <https://github.com/wjdp/htmltest>`_.

.. note::

   Currently this check if configured for *rst* and *Sphinx* **only** !

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

.. code-block:: shell

   docker run -it -v `pwd`:/srv/test testthedocs/ttd-htmltest

Source Code
===========

The code of `ttd-htmltest` is located on `GitHub <https://github.com/testthedocs/rakpart/tree/master/ttd-htmltest>`_.
