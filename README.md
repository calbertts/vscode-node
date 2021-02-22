# VSCode with NodeJS v12.20.2

NOTE: The container is executed without any SSL certificate and auth is not enabled.

## How to run a container
```
docker run -it -v $(pwd)/data:/data -v $(pwd):/code --name vscode --rm -p 8080:8443 calbertts/vscode-node:12.20.2
```

## How to build the image
```
docker build . -t calbertts/vscode-node:12.20.2
```
