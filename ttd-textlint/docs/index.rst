============
ttd-textlint
============

Run ttd-textlint against a certain files (example/index.rst)

Example:

.. code-block:: console

   docker run -v "${PWD}":/srv testthedocs/ttd-textlint example/index.rst

Run ttd-textlint against all files in certain directory:

.. code-block:: console

   docker run -v "${PWD}":/srv testthedocs/ttd-textlint example

Run ttd-textlint against all files in mounted directory:

.. code-block:: console

   docker run -v "${PWD}":/srv testthedocs/ttd-textlint *

Run ttd-textlint against a *long* file

.. code-block:: console

   docker run -v "${PWD}":/srv testthedocs/ttd-textlint example/long-text.rst
