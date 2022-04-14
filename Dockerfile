FROM python:latest

WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install dependencies
#RUN pip install --no-cache-dir -r requirements.txt

# define the port number the container should expose
EXPOSE 8000

# run the command
CMD ["python", "./SimpleHttpsServer.py"]