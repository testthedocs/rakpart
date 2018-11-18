==============
Create A Check
==============

.. admonition:: Abstract

    A guide on how to create a new check.

Dependencies
============

- `Docker <https://docker.com>`_
- `Marvin <https://github.com/testthedocs/marvin>`_

Getting Started
===============

.. note::

   The following guide expects that you are already a member of the *testthedocs* GitHub organization.

   If you are not a member (yet), please reach out to us !

   One other possibility is to `fork <https://help.github.com/articles/fork-a-repo/>`_ the repository and
   create a PR (Pull Request) from your fork.


First, ``clone`` the Rakpart `repository <http://github.com/testthedocs/rakpart>`_, for example:

.. code-block:: shell

   git clone https://github.com/testthedocs/rakpart.git

Second, change into the cloned repository:

.. code-block:: shell

   cd rakpart

In the next step, we will create a new branch:

.. code-block:: shell

   git checkout -b $MY-NEW-CHECK

In the last step, we run ``marvin``, this will create the *base setup* of a new check, to help you to get
started.

.. code-block:: shell

   docker run -it -v `pwd`:/srv/data testthedocs/marvin rakpart-check
