# Docker-assignment
Step 1:
mkdir myenvapp

Step 2:
cd myenvapp

Step 3:
echo -e '#!/bin/sh\n\necho "The value of MY_ENV_VAR is: $MY_ENV_VAR"' > printenv.sh

Step 4:
chmod +x printenv.sh

Step 5:
echo -e 'FROM alpine\nCOPY printenv.sh /usr/local/bin/printenv.sh\nCMD ["/usr/local/bin/printenv.sh"]' > Dockerfile

Step 6:
docker build -t myenvapp .


Step 7:
docker run --rm -e MY_ENV_VAR="Hello, Docker!" myenvapp

The value of MY_ENV_VAR is: Hello, Docker!

ilker@Laptop-ilker:~/myenvapp$ docker run --rm -e MY_ENV_VAR="Hello, Ilker" myenvapp
The value of MY_ENV_VAR is: Hello, Ilker