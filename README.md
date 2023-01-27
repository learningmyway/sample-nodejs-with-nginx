# Setting up node js server with Nginx Reverse Proxy

**Steps**
1. Run EC2 Instance
2. Setup Security Group
3. Install node & yarn
4. Deploy the code
5. Install nginx
6. Setup nginx 
7. Voila!!! your express server is live.

**Pre Requisite for this Activity**
1. Amazon Account as we will be deploying the app using Amazon EC2 Service

**Out-fo-Scope**
1. Domain Registration using AWS Router53 
2. Configuring NS/Hosted zones


# Change to root user
```
sudo su -
```

# Update Package 
```
yum update -y

```
# Install Git
```
yum install -y git

```
# Clone the Repo
```

git clone https://github.com/dham6983/sample-nodejs-with-nginx.git

```
# Installing node
```
sudo curl --silent --location https://rpm.nodesource.com/setup_16.x | bash -
sudo yum -y install nodejs

```
# Installing yarn
```
curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo
sudo yum install yarn -y

```
# Checking node version
```
node --version

```
# Checking yarn version
```
yarn --version

```
# Install process manager (pm)
```
yarn add  pm2 -g

```
# Installing the dependency
```
yarn install
```
# Running the server with process manager
```
./node_modules/.bin/pm2 start src/server.js

```
# Checking the status
```
./node_modules/.bin/pm2 status

```

# Enable pm2 at boot level
```

./node_modules/.bin/pm2 startup

```
# Installing Nginx
```

sudo amazon-linux-extras list | grep nginx

```

```
sudo amazon-linux-extras enable nginx1

```

```
sudo yum clean metadata

```

```
sudo yum -y install nginx
```
# Update /etc/nginx/nginx.conf and copy paste the content fron nginx.conf file in this repo
```
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;

```
# Check the sysntax of nginx config file
```
nginx -t

```
# Checking the status of nginx service on Amazon Linux 2
```
systemctl status nginx
```
# Starting Nginx Server
```
systemctl start nginx
```
# Enable Nginx Server on system bootup
```
systemctl start nginx
```

Reference: [Important NginX Doc](https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy/)