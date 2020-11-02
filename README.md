# About This Image

This is the base image for mockserver cli accessible at: https://pypi.org/project/mock-server/

# Documentaion
Please follow documentation from: https://pypi.org/project/mock-server/

The default format is following:
```
root_dir/
    GET_200.json         # response content for GET /
    GET_H_200.json       # headers for GET /
    user/
        DELETE_404.xml   # response content for DELETE /user.xml?__statusCode=404
        POST_200.json    # response content for POST /user
        POST_H_200.json  # headers for POST /user
```

# Usage

The internal mockserver port is `8888` and directory for looking up mock responses is `/mock_server`:
```
 docker run -d  --volume [MOCK SERVER FILES DIRECTORY]:/mock_server:rw  -p 8080:8080 iandriy/mockserver
```

For use in docker-compose please add following entry:
```
mock-server:
    image: iandriy/mockserver@sha256:2416b70fa07c4dbd10312893f40c1c825d07859cbb900f3ffd5cf9a68b58a2a5
    ports:
    - published: 8888
      target: 8888
    volumes:
    - [MOCK SERVER FILES DIRECTORY]:/mock_server:rw
```
