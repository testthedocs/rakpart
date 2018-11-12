===========
Style Guide
===========

.. admonition:: Abstract

    Our style guide for checks.

Bash
====

- Make sure to test against `shellcheck <https://www.shellcheck.net/>`_.
- Scripts should fail on errors (``exit1``)

Color Variables
---------------

:Info: yellow
:Passing: green
:Error: red

.. code-block:: bash

   # Vars
   # Color
   ESC_SEQ="\x1b["
   COL_RESET=$ESC_SEQ"39;49;00m"
   COL_YELLOW=$ESC_SEQ"33;01m"
   COL_RED=$ESC_SEQ"31;01m"

   echo -en "$COL_YELLOW Running repository setup checks ...$COL_RESET\n"