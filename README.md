# Docker image with github-cli.

## Usage

To check pr status
```
docker run -it --rm -v /project/repo:/src -w src -e GH_TOKEN=$GITHUB_TOKEN byndyusoft/github-cli pr status
```

Other commands you can find [here](https://cli.github.com/manual/)

## License

This repository is released under version 2.0 of the 
[Apache License](https://www.apache.org/licenses/LICENSE-2.0).
