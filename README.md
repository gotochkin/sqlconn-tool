# sqlconn-tool
Small container image to connect to various SQL databases 

The mssql-cli usage guide
https://github.com/dbcli/mssql-cli/blob/master/doc/usage_guide.md

The mycli documentation
https://www.mycli.net/docs


Get the image from docker hub
docker pull otochkin/sqlconn-tool:0.03

Build image 
docker build --force-rm --tag otochkin/sqlconn-tool:0.03 .

Run image
docker run -ti --rm otochkin/sqlconn-tool:0.03 /bin/bash