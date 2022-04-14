# Simple-Http-File-Server-Docker
First on the directory of the dockerfile run this command:
```bash
docker build -t yourusername/simplehttpserver .
```
Then to run and specify the local filesystem to be share with container, use this command:

```bash
docker run -d --restart always -v /my_directory:/my_files -it --name my-http-file-server -p 8000:8000 yourusername/simplehttpserver
```
to automatically restart this container when it stops we use:

```bash
-d --restart always
```

to specify the part of the local filesystem to be shared with the container we use:

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
