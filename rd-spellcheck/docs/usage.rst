=====
Usage
=====

.. note::

   All commands in the documentation refrer to the installation according to the official
   ` Docker installation guide <https://docs.docker.com/engine/installation/>`_.

   If you installed Docker via the package manager of your Operating System you may have to adjust the commands.

   Meaning if you installed Docker on Ubuntu from the Ubuntu repositories the syntax would be ``docker.io`` in place of ``docker``.


Download Image
==============

Pull (download) *rd-spellcheck*:

.. code-block:: shell

   docker pull testthedocs/rd-spellcheck

Update Image
============

Check and update application image to a newer version:

.. code-block:: shell

   docker pull testthedocs/rd-spellcheck

Running Spellcheck
==================

*rd-spellcheck* is designed to run spellchecks against all files in your *current working directory* (`$PWD`).

The *output* will be saved in a directory called *_build/spellcheck/output.txt* in your `$PWD`.

Wordlist
========

*rd-spellcheck* expects a file called *spelling_wordlist.txt* in your `$PWD`.

If *rd-spellcheck* can not detect it, *rd-spellcheck* will fail.

To add more files to the list, open the fhis files with your editor of your choice and add one name per line.

Example
-------

Change into your documentation dorectory (/docs) of your project:

.. code-block:: shell

   cd docs

Do a ``ls`` to see all the files here:

.. code-block:: shell

   index.rst

Run *rd-spellcheck*:

.. code-block:: shell

   docker run -v `pwd`:/build/docs testthedocs/rd-spellcheck spellcheck

