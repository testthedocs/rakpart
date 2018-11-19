======
Docker
======

.. admonition:: Abstract

    A guide on how we work with `Docker <https://docker.com>`_.

.. contents::
   :local:
   :depth: 1
   :backlinks: none

Dependencies
============

- `Docker <https://docker.com>`_
- `Hadolint <https://github.com/hadolint/hadolint>`_
- `ShellCheck <https://www.shellcheck.net/>`_

Dockerfiles
===========

We use `Hadolint <https://github.com/hadolint/hadolint>`_ for linting our *Dockerfiles*.

Please make sure that you have it installed and configured for your `Editor <https://github.com/hadolint/hadolint/blob/master/docs/INTEGRATION.md>`_.

If you prefer you can also use it as a `container image <https://github.com/hadolint/hadolint>`_.

.. note::

   We use Hadolint with one configuration setting, we ignore *package pinning*, code: **DL3018**.

If you use Docker you run it like this:

.. code-block:: shell

   docker run --rm -i hadolint/hadolint hadolint --ignore DL3018 - < dockerfiles/Dockerfile

Entryoint Scripts
=================

We use `ShellCheck <https://www.shellcheck.net/>`_ to check and validate our *entrypoint.sh* scripts.

Example:

.. code-block:: shell

   docker run -v docker run -v `pwd`/dockerfiles:/mnt koalaman/shellcheck entrypoint.sh

Please see the `official docs <https://github.com/koalaman/shellcheck>`_ for more info on installation and setup.
