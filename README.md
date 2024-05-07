# Simple CICD Pipeline Project - Todo Application 

Please follow the below links for more updates and Projects.

💾 <a href="https://shaikhwaseem.com" target="_blank">shahikhwaseem.com</a> <br>

💾 <a href="https://www.youtube.com/@waseeemuddin" target="_blank">Youtube Link</a>

## Prerequisites
1. EC2 Machine - Medium Size will be prefreable 
2. Docker Setup on EC2 Machine.
3. Jenkins Setup - either you use manuall installation or you can use jenkins image.
4. Github Account - you need a github account to automate the pipleline 

Here is Archietchure Diagram 

# ![git-img](img/01.png)


### Step 01 - Create EC2 Machine 

# ![git-ec2](img/2.png)
# ![git-ec3](img/03.png)
# ![git-ec4](img/04.png)
# ![git-ec5](img/05.JPG)

### Step 02 - Connect EC2 Machine  

Now next step is to connect your EC2 Ubuntu Machine using SSH and make sure you're in root user or use 'sudo'

``` shell
$ sudo ssh -i "key.pem" ubuntu@<ip-addressmkdir> 
```
# ![git-ec6](img/06.JPG)

### Step 03 - Install docker on Ec2 machine

In step 3 you need to install the docker on your ec2 machine.
docker installation commands are simple and easily docker setup.
You can find installation steups from as below address : https://docs.docker.com/engine/install/ubuntu/
Here is the docker script to be execute on Ubuntu 22.04

1.Set up Docker's apt repository.

``` shell
$ # Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

```
2. Install the Docker packages.
``` shell
$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
# ![git-ec6](img/7.1.JPG)


### Step 03 - Installation of Jenkins 

Next step is to installation of Jenkins. There are two ways to install/setup jenkins
1. Manuall installation or stand-alone installation
2. container based installation which is flexiable and easy to handle and light weight
Here we setup the jenkins via container based installation.

``` shell
$ docker run -p 8080:8080 -p 50000:50000 -d \
-v jenkins_home:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(which docker): /usr/bin/docker jenkins/jenkins:lts
```
# ![git-ec6](img/7.2.JPG)

After running the above command jenkins container has been created and started

# ![git-ec6](img/08.JPG)

Now you can type blow ip addess if your ec2 machine and check weather your jenkins is accessiable or not 
But make sure that the port should be added on your EC2 Security Group

# ![git-ec6](img/09.JPG)
# ![git-ec6](img/10.JPG)

``` shell
$ localhost:8080
$ <ip-address>:porty

```
# ![git-ec6](img/11.JPG)

Now, In order to get the jenkins password. you have to login or access the jenkins container

``` shell
$ docker exec -it <container-id> bash
$ docker exec -it 98760878abree bash

```
# ![git-ec6](img/12.JPG)

### Step 04 - Jenkins Pipleline Setup

Till now, we have setup the EC2 server and configure the docker and our jenkins setup
Now in this step we can see how we can create the jenkins simple pipeline 

Now before create the pipeline and connect your git-repo to jenkins. please make sure you have upto date
Git repository. To download the update git here are below links

``` shell
$ https://github.com/waseemuddin/simple-cicd-project01.git # this is  my link repo where i have update all files and codes
$ https://github.com/docker/getting-started-app.git # and here is the doker official repo

```
Now let get start and create the pipleline

Login jenkins using same password as create above.

# ![git-ec6](img/13.JPG)

# ![git-ec6](img/14.JPG)

There are 2 ways to creating the pipeline code either inline pipleline or pipleline script with SCM means using Jenkinsfile
The latest and best approch is to using Jenkinsfile

# ![git-ec6](img/15.JPG)

# ![git-ec6](img/16.JPG)






### Step 02 - create some files in the git local directory/folder

``` shell
$ mkdir imges 
$ mkdir js
$ mkdir css
$ mkdir project 
$ touch css/front.css
$ touch js/mysim.js
$ touch index.php
```


### Step 03 - After editing and adding completed, run the below commands

``` shell
$ git init
$ git status
$ git add .
$ git commit
```
# ![git-init](imges/03.png)

# ![git-status](imges/04.png)

# ![git-add](imges/05.png)

# ![git-commit](imges/06.png)

Our local repository files are commited and now its time to push into remote repository

# ![git-local](imges/07.png)

To push your code to remote repository, first you have to create the empty reposity on your github account

### Step 04 - Create Empty Repo on your Github Account
 
Got your GitHub accunt profile and create a new repository

 # ![git-local](imges/10.png)

 # ![git-local](imges/11.png)


### Step 05 - Push Local Repo to Remote Repo

Now its time to push your local repository to your remote repository means your Github account

 # ![git-local](imges/12.png)

 # ![git-local](imges/13.png)

 # ![git-local](imges/14.png)

 # ![git-local](imges/15.png)


As you see all local repository files/folders are now push to remote repository


 # ![git-local](imges/16.png)

