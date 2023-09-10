# XFL Human Study Package

This repository provides guidelines on how to install the necessary setup,
checkout to bug instances, and run tests using Docker, as well as how to
access explanations when necessary.

## Installation

### Prerequisites

`git` and `Docker` must be installed on your machine to proceed with this
experiment.

### Set up the Docker image


```bash
docker pull stuatlittle/fl-human-study:latest
```

## Performing the Task

### Loading Buggy Code

Your study webpage will let you know what branch you should check to next.
Use `git checkout` to change the directory content to the target branch.
Depending on the experiment settings, it may or may not have an explanation
available.

(NOTE: Test using the `python_test` branch.)

### Executing tests

Tests may be executed via:

```bash
bash test.sh
```

This will provide the number of failing tests. Initially, there should be
one or more failing tests.

### Accessing Fault Localization Results and Explanations

To access links, first run `bash localizer.sh`, which will change links
to use your current directory.

In all cases, there will be a `fl.md` file in the branch. This file provides
links to identified fault locations, along with links that will point directly
to the suggested fault location.

If there is an `explanation.md` file in the branch, this is an instance where
an explanation is provided. (Your website will also clarify whether an
explanation is expected to be visible). You can read the explanation, and
click links to go directly to the target code.
