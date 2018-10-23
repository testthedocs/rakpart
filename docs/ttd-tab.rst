========
Tab Test
========

.. admonition:: About

    Checking And Reporting Tabs.

Installation
============

Dependencies
------------

- `Docker <https://docker.com>`_

Pull the image:

.. code-block:: console

   docker pull testthedocs/ttd-tab

Usage
=====

Navigate to the directory containing your documentation.

Run The Test
------------

.. code-block:: console

   docker run -it -v `pwd`:/build/docs testthedocs/ttd-tab


Source Code
===========

The code of `tts-tab` is located on `GitHub <https://github.com/testthedocs/rakpart/tree/master/ttd-tab>`_.
