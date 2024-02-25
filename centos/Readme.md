<!-- install command for nginx in centos -->

## Update centos

```bash
    sudo yum update -y
```

```bash
    sudo yum check-update
```

## FireWall Settings

```bash
    systemctl status firewalld.service
```

````bash
    systemctl stop firewalld.service
```

```bash
    systemctl status firewalld.service
```

```bash
    systemctl disable firewalld.service
```
## Intall Nginx

```bash
 sudo yum install epel-release
````

```bash
 sudo yum install nginx
```

```bash
 sudo systemctl -l enable nginx
```

```bash
 sudo systemctl -l start nginx
```

## Install and configure Docker

```bash
curl -fsSL https://get.docker.com/ | sh

```

or

```bash
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo &&sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin

```

```bash
sudo systemctl start docker
```

```bash
sudo systemctl status docker
```

```bash
sudo systemctl enable docker
```

```bash
sudo usermod -aG docker $(whoami)
```

```bash
sudo usermod -aG docker root &&  sudo usermod -aG docker myuser
```

```bash
sudo chmod 666 /var/run/docker.sock
```

```bash
 docker images
```

```bash
docker run hello-world
```

## create a docker volume

```bash
    mkdir docker_volumes
```

```bash
 mkdir yacht && cd yacht
```

```bash
docker volume create yacht
```

```bash
docker run -d -p 8000:8000 -v /var/run/docker.sock:/var/run/docker.sock -v yacht:/config --name yacht selfhostedpro/yacht
```

```bash
    admin@yacht.local
```

```bash
    pass
```

### Add this selfhost template to your yacht

```bash
    https://raw.githubusercontent.com/SelfhostedPro/selfhosted_templates/yacht/Template/template.json
```

## bash alias

```bash
 nano ~/.bashrc
```

```bash
alias i="sudo dnf install "
alias b="cd .."
```

```bash
    source ~/.bashrc
```

## Instal TigerVNC

```bash
    sudo yum install tigervnc-server
```

```bash
    vncpasswd
```

```bash
 cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@:1.service
```

```bash
sudo rm vncserver@\:1.service && nano  /etc/systemd/system/vncserver@\:1.service
```

```bash
[Unit]
Description=Remote desktop service (VNC)
After=syslog.target network.target

[Service]
Type=forking
User=tecmint
Group=tecmint
WorkingDirectory=/home/tecmint
ExecStartPre=/bin/sh -c '/usr/bin/vncserver -kill %i > /dev/null 2>&1 || :'
ExecStart=/usr/bin/vncserver %i -geometry 1280x1024
PIDFile=/home/tecmint/.vnc/%H%i.pid
ExecStop=/bin/sh -c '/usr/bin/vncserver -kill %i > /dev/null 2>&1 || :'

[Install]
WantedBy=multi-user.target
```

```bash
   sudo systemctl daemon-reload
```

```bash
   sudo systemctl start vncserver@:1 && sudo systemctl enable vncserver@:1
```

```bash
    sudo systemctl status vncserver@:1
```

```bash
    ss -tulpn| grep vnc
```

### vnc server is running on port 5901
