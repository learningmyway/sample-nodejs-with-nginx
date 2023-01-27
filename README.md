### Relevan Command

Steps
1. Run EC2 Instance

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
yum install git -y

```

```

git clone https://github.com/dham6983/sample-nodejs-with-nginx.git

```

```
sudo curl --silent --location https://rpm.nodesource.com/setup_16.x | bash -
sudo yum -y install nodejs

```

```
curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo
sudo yum install yarn -y

```

```
node --version

```

```
yarn --version

```

```
yarn add  pm2 -g

```

```
./node_modules/.bin/pm2 start src/server.js

```

```
./node_modules/.bin/pm2 status

```

## Enable pm2 at boot level
```

./node_modules/.bin/pm2 startup

```

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
## Update /etc/nginx/nginx.conf and copy paste the content fron nginx.conf file in this repo
```
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;

```

```
nginx -t

```

```
systemctl status nginx
```

```
systemctl status nginx
```

[Important NginX Doc](https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy/)