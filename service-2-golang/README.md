
```
$ git clone https://github.com/prabaprakash/Go-Static-File-Server.git
$ docker build . --tag go-static-file-server
$ docker run -it -p 80:8100 -v $PWD:/files go-static-file-server 
  2018/09/18 09:15:23 Serving /files on HTTP port: 8100
```
