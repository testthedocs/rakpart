# htmltest

!!! abstract

    htmltest runs your HTML output through a series of checks to ensure all your links, images, scripts references work, your alt tags are filled in, et cetera.

Based on: [htmltest](https://github.com/wjdp/htmltest).

Another great alternative is [remark-lint](https://github.com/remarkjs/remark-lint).

## Configuration

## Usage

Out of the box (OOTB) `ttd-htmltest` is configured to run checks against the directory ``_build/html``.

This directory is usually located in your *docs* directory.

If you use a different setup, you have to create your own ``.html.yml``.

You can find more information in the [htmltest repository](https://github.com/wjdp/htmltest).

```console
docker run -it -v `pwd`:/build/docs testthedocs/ttd-htmltest
```

If you have any validations `ttd-mdlint` will report them.

![A Gif with example](images/ttd-htmltest.png)

## Source Code

The code of `ttd-htmltest` is located on [GitHub](https://github.com/testthedocs/rakpart/tree/master/ttd-htmltest).
