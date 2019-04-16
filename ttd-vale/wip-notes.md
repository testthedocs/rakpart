# Dev Notes

## Run It

docker run -it -v `pwd`/tests:/srv/tests ttv:latest


New way of building:
To make th eimage smaller and also to be able to use static linked go bins.
we will clone and build vale in our build container.
```shell
build:
        CGO_ENABLED=0 GOOS=linux go build ${LDFLAGS} -o bin/vale
```

After that is done we will copy the bin.

By doing so our images will get smaller and we have more control!
 Further we can adjust our entrypoint script, we do not need su-exec anymore
