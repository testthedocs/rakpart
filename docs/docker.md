title: Docker Guidelines
description: Rakpart - Docker Guidelines

# Docker

Abstract

A guide on how we work with [Docker](https://docker.com).

## Dependencies

- [Docker](https://docker.com)
- [Hadolint](https://github.com/hadolint/hadolint)
- [ShellCheck](https://www.shellcheck.net/)

## Dockerfiles

We use [Hadolint](https://github.com/hadolint/hadolint) for linting our *Dockerfiles*.

Please make sure that you have it installed and configured for your [Editor](https://github.com/hadolint/hadolint/blob/master/docs/INTEGRATION.md).

If you prefer you can also use it as a [container image](https://github.com/hadolint/hadolint).

!!! note

    We use Hadolint with **one** configuration setting, we ignore *package pinning*, code: **DL3018**.


If you use Docker you run it like this:

```shell
docker run --rm -i hadolint/hadolint hadolint --ignore DL3018 - < dockerfiles/Dockerfile
```

## Entryoint scripts

We use [ShellCheck](https://www.shellcheck.net/) to check and validate our *entrypoint.sh* scripts.

Example:

```shell
docker run -v docker run -v `pwd`/dockerfiles:/mnt koalaman/shellcheck entrypoint.sh
```

Please see the [official docs](https://github.com/koalaman/shellcheck) for more info on installation and setup.
