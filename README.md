# Simple-Http-File-Server-Docker
First on the directory of the dockerfile we need to build the container:
```bash
docker build -t yourusername/simplehttpserver .
```
Then to run the container and specify the local filesystem to be share with container, use this command:

```bash
docker run -d --restart always -v /my_directory:/my_files -it --name my-http-file-server -p 8000:8000 yourusername/simplehttpserver
```
## The last command is explained as follows:

to automatically restart this container when it stops:

```bash
-d --restart always
```

to specify the part of the local filesystem to be shared with the container:

```bash
-v /my_directory:/my_files
```

to specify the name of the container:
```bash
--name my-container-name
```

to specify the PORT:
```bash
-p 8000:8000
```
