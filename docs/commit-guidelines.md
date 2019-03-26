title: Commit Guidelines
description: Rakpart - Commit Guidelines

# Commit guidelines

## Abstract

Guidelines on how our git commit messages can be formatted.

This leads to more readable messages and a better project history.

Inspired by [Sentry](https://docs.sentry.io/development/contribute/contributing).

## General rules

1. Separate subject from body with a blank line
2. Limit the subject line to 70 characters
3. Capitalize the subject line
4. Do not end the subject line with a period
5. Use the imperative mood in the subject line
6. Use the body to explain what and why vs. how
7. Each commit should be a single, stable change

## Merge vs rebase

That means that every commit on its own should be a clear, functional, and stable change.

This means then when you are building a new feature, you should try to pare it down into functional steps,
and when that’s not reasonable, the end patch should be a single commit.

This is counter to having a Pull Request which may include “fix unmerged behavior”.

Those commits should get squashed, and the final patch when landed should be rebased.

**Remember:** each commit should follow the commit message format and be stable (green build).

## Rebase and merge

The GitHub UI exposes a “Rebase and Merge” option, which, if your commits are already in following the commit guidelines,
is a great way to bring your change into the codebase.

## Commit message format

Commit messages should be short, clear and "to the point".

```txt
[docs] Add docs about ttd-repo
```
```txt
[release] ttd-repo 0.0.8
```
```txt
[ttd-repo] Improve Dockerfile
```
## Type

Must be one of the following:

|Type|Description|
|----|-----------|
|[docs]|	Documentation only changes|
|[ci]|  	Changes to our CI configuration files and scripts|
|[meta]|	Some meta information in the repo changes (example scopes: owner files, editor config etc.)|
|[release]| Making a new release|
