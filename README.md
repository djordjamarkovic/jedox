# jedox
#jedox
Supported tags and respective Dockerfile links

    latest: Jedox 2019.1 (trial license) 
    2019_1: Jedox 2019.1 (trial license)  
    2018_4: Jedox 2018.4 (trial license)  
    2018_3: Jedox 2018.3 (trial license)  
    2018_2: Jedox 2018.2 (trial license)  
    2018_1: Jedox 2018.1 (trial license)  
    7_0_SR2: Jedox 7.0 SR2 (trial license)  
    7_0_SR1: Jedox 7.0 SR1 (trial license)  
    6_SR3: Jedox 6.0 SR3 (trial license)  

What is Jedox?
  http://www.jedox.com/

How to run it?
  docker pull dmarkovic/jedox-build:latest
  
  docker run --privileged -p 10080:80 -p 17775:7775 -p 17777:7777 -td --name jdx -v /Users/dmarkovic/folder_to_share:/share dmarkovic/jedox-build:latest

  docker exec -it jdx /bin/bash
  
  /opt/jedox/ps/jedox-suite.sh start
  
  /opt/jedox/ps/jedox-suite.sh stop

Software Source: http://www.jedox.com/downloads/software/

https://it-novum.com/
