# IronWorker package demo

This repo demonstrates an issue with the most recent version of the `iron-worker` package on PyPI.

## Steps to recreate

- Clone the repository
- Run `docker compose build`

Installing the package will fail. If you read the error message very closely, it's because `use_2to3` isn't valid in newer versions of `setuptools`.

You can uncomment line 11 of the `Dockerfile`, and then `docker compose build` will work, because in older versions of `setuptools`, `use_2to3` is available.

Ideally, we would be able to install `iron-worker` without pinning to an older version of `setuptools`.
