============
TTD Textlint
============

Custom setup of `textlint <https://textlint.github.io/>`_ in a Alpine container.

.. image:: docs/_static/ttd-textlinter-example.gif

Features
========

- textlint-rule-alex
- textlint-rule-no-dead-link
- textlint-rule-unexpanded-acronym
- textlint-rule-write-good
- textlint-rule-rousseau
- textlint-plugin-rst
- textlint-plugin-html
- textlint-rule-max-number-of-lines
- textlint-rule-terminology

- Uses `Tini <https://github.com/krallin/tini>`_ as `init`.
- Uses `su-exec <https://github.com/ncopa/su-exec>`_ for setting user permissions.

Dependencies
============

- `Docker <https://docker.com>`_

Installation
============

Pull the container from Docker Hub

.. code-block:: shell

   docker pull testthedocs/ttd-textlint


Usage
=====

ttd-textlint expects a configuration file called ``.textlintrc``

Example:

.. code-block:: yaml
   {
     "plugins": [
       "rst"
    ],
     "rules": {
       "write-good": {
         "so": true
       }
     }
   }


See the */docs* directory for examples.

For more info, please read the `documentation about configuring textlint <https://github.com/textlint/textlint/blob/master/docs/configuring.md>`_.

Contribute
==========

- `Issue Tracker <https://github.com/testthedocs/rakpart/issues>`_
- `Source Code <https://github.com/testthedocs/rakpart/tree/master/ttd-textlint>`_

Support
=======

If you are having issues, please let us know.

License
=======

`MIT <https://choosealicense.com/licenses/mit/>`_
