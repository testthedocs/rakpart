# Trailing Spaces

!!! abstract

    Check your `rst` based documentation for trailing spaces on line ends.

## Dependencies

None.

## Configuration

None.

## Usage

If ttd-ts can not find an _index.rst_ the test fails.

The following example mounts your current working directory into the container and runs the check:

```console
docker run -t -v `pwd`:/build/docs testthedocs/ttd-ts
```

The script reports if it detects trailing spaces on line ends, and shows the name of the file and the number of issues.

![Example with errors](images/ttd-ts-screen.png)

![Example with no errors](images/ttd-ts-ok.png)

## Source Code

The code of `tts-ts` is located on [GitHub](https://github.com/testthedocs/rakpart/tree/master/ttd-ts).
