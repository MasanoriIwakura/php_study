# Dockerを使用したPHP学習環境

## 開発環境

|ツール名|バージョン|
|:--|:--|
|OS|macOS Mojava 10.14.3|
|Docker|Docker for Mac 18.06.1-ce|
|Docker Compose|1.22.0|
|PHP|7.2.7-apache (Apacheと連携されているコンテナ)|
|MySQL|8|
|phpMyAdmin|4.7|

## プロジェクト構成

### [PHP]
Dockerコンテナの80番ポートと、ホストOSの80番ポートを紐付け。  
<http://localhost> で`php/html/index.php`の内容を表示する。

### [MySQL]
Version8からデフォルトの認証方式が`caching_sha2_password`となっているため、`mysql_native_password`に変更する。  
この設定を行わないとMySQLに接続出来ない。

## 使用手順

### [前提条件]
* Dockerがインストールされていること、起動されていること
* Docker Composeがインストールされていること

Dockerを導入していない場合、Macの場合は以下のコマンドで導入してください。

```bash
# Homebrewがインストールされていること
$ brew install docker
$ brew cask install docker
$ brew install docker-compose
```

```bash
# Clone
$ git clone https://github.com/MasanoriIwakura/php_study.git

# フォルダ移動
$ cd php_study

# コンテナ実行
$ docker-compose up -d

# 全てのコンテナが立ち上がっていることを確認
$ docker-compose ps
         Name                       Command               State               Ports
------------------------------------------------------------------------------------------------
php_study_mysql_1        docker-entrypoint.sh mysqld      Up      3306/tcp, 33060/tcp
php_study_php_1          docker-php-entrypoint apac ...   Up      0.0.0.0:80->80/tcp
php_study_phpmyadmin_1   /run.sh phpmyadmin               Up      0.0.0.0:8080->80/tcp, 9000/tcp
```