=======
TTD Tab
=======

.. admonition:: Abstract

    Checking and reporting tabs.

Installation
============

Dependencies
------------

- `Docker <https://docker.com>`_

Pull the image:

.. code-block:: shell

   docker pull testthedocs/ttd-tab

Usage
=====

Navigate to the directory containing your documentation.

Run The Test
------------

.. code-block:: shell

   docker run -it -v `pwd`:/build/docs testthedocs/ttd-tab


Source Code
===========

The code of `tts-tab` is located on `GitHub <https://github.com/testthedocs/rakpart/tree/master/ttd-tab>`_.
