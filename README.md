# Common Lisp [SBCL](https://www.sbcl.org/) build with some useful packages for DevOps

The complete list of extra packages [here](./Dockerfile#L10).

To build multiarch image:

```console
docker buildx build --platform linux/arm/v7,linux/arm64/v8,linux/amd64 .
```
