=======
Install
=======

Dependencies
============

- `Docker <https://www.docker.com/>`_
- A working Internet connection to pull the container on the first run
- A index.rst file

Please follow the `installation guide <https://docs.docker.com/engine/installation/>`_ of Docker or consult the documentation of your Operating System
to install Docker.


**That is all !**

You do not need to install anything else.

The first time you run *ttd-docsbuilder* it will automatically pull the application container from Docker Hub.

In case you prefer to pull (download) the container yourself do the following:

.. code-block:: shell

   docker pull testthedocs/rd-spellcheck

This will download the latest version of the container.

If you for some reason want or need to use a certain version (release), you can do that too:

.. code-block:: shell

   docker pull testthedocs/rd-spellcheck:0.0.1

Please check the `Changelog <https://github.com/testthedocs/rd-spellcheck/blob/master/CHANGES.md>`_ to find out more changes and releases.
