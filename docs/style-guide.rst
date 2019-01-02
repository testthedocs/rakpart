===========
Style Guide
===========

.. admonition:: Abstract

    Our style guide for checks.

Bash
====
- Scripts are formated with `shfmt <https://github.com/mvdan/sh/>`_, following `Google's Style Guide <https://google.github.io/styleguide/shell.xml/>`_, ``shfmt -i 2 -ci``.
- Make sure to test against `shellcheck <https://www.shellcheck.net/>`_.
- Use ``set -euo pipefail``, see `Safer bash scripts <https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/>`_.
- Scripts should fail on errors (``exit 1``)

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
