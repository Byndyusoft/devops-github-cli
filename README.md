# Docker image with github-cli.

## Usage
```
docker run -it --rm -v /project/repo:/src -w src -e GH_TOKEN=$GITHUB_TOKEN --entrypoint="sh" byndyusoft/github-cli 

Run inside: > gh pr status
```
