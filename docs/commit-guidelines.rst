==================
Commit Guidelines
==================

.. admonition:: Abstract

    Guidelines on how our git commit messages can be formatted.

    This leads to more readable messages and a better project history.

    Inspired by `Sentry <https://docs.sentry.io/development/contribute/contributing/>`_.

.. contents::
   :local:
   :depth: 1
   :backlinks: none

General Rules
=============

#. Separate subject from body with a blank line
#. Limit the subject line to 70 characters
#. Capitalize the subject line
#. Do not end the subject line with a period
#. Use the imperative mood in the subject line
#. Use the body to explain what and why vs. how
#. Each commit should be a single, stable change

Merge Vs Rebase
===============

That means that every commit on its own should be a clear, functional, and stable change.

This means then when you’re building a new feature, you should try to pare it down into functional steps,
and when that’s not reasonable, the end patch should be a single commit.

This is counter to having a Pull Request which may include “[fix] unmerged behavior”.

Those commits should get squashed, and the final patch when landed should be rebased.

**Remember:** each commit should follow the commit message format and be stable (green build).

Rebase and Merge
================
The GitHub UI exposes a “Rebase and Merge” option, which, if your commits are already in following the commit guidelines,
is a great way to bring your change into the codebase.

Commit Message Format
=====================

Commit messages should be short, clear and "to the point".

.. code-block:: bash

   [docs] Add docs about ttd-repo

Type
----

Must be one of the following:

:[docs]:	Documentation only changes
:[fix]: 	A bug fix
:[test]:	Adding missing tests or correcting existing tests
:[ci]:  	Changes to our CI configuration files and scripts
:[meta]:	Some meta information in the repo changes (example scopes: owner files, editor config etc.)
:[release]: Making a new release