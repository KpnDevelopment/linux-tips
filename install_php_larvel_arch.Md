## install dependencies

```bash
sudo pacman -S php php-apache

```

```bash
sudo nano /etc/php/php.ini
```

````bash

First, find and enable bcmath. To enable it, remove; from the line.



##install mysql

```bash
sudo pacman -S mariadb

````

```bash
sudo systemctl start mysqld

```

## install composer

```bash
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
```

```bash
sudo php composer-setup.php --install-dir=/bin --filename=composer

```

## Install Laravel

```bash
    composer global require laravel/installer
```

```bash
echo 'export PATH="$PATH:$HOME/.config/composer/vendor/bin"' >> ~/.bashrc
```

```bash
source ~/.bashrc
```

```bash