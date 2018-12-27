=======
Rakpart
=======

Writing documentation is hard, testing and checking is even harder.

About
=====

Container based checks for QA (Quality Assurance).

*Rakpart* is a collection of *checks* which help to improve the quality of your docs.

The main focus is on `reStructuredText <https://en.wikipedia.org/wiki/ReStructuredText>`_ and `Markdown <https://en.wikipedia.org/wiki/Markdown>`_
based documentation.

You can run the checks locally and on CI (Continuous Integration).

Dependencies
=============

- `Docker <https://docker.com>`_

.. toctree::
   :hidden:
   :maxdepth: 2
   :caption: Markdown:

   Markdown Lint <ttd-mdlint>
   Remark Lint <ttd-remark>

.. toctree::
   :hidden:
   :maxdepth: 2
   :caption:  reStructuredText:

   Doc8 <ttd-doc8>
   Toctree <ttd-toctree>

.. toctree::
   :hidden:
   :maxdepth: 2
   :caption:  Other:

   HTML Test <ttd-htmltest>
   Link Checker <ttd-linkcheck>
   Repository Check <ttd-repo>
   Tab <ttd-tab>
   Trailing Space <ttd-ts>
   Textlint <ttd-textlint>
   Vale <ttd-vale>

.. toctree::
   :hidden:
   :maxdepth: 2
   :caption: Contribute:

   code-of-conduct
   create-a-check
   commit-guidelines
   docker
   style-guide
   GitHub <https://github.com/testthedocs/rakpart>
   Contact <https://docs.testthedocs.org/communication.html>

