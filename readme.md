# Containerised Mediawiki Project

This containerised Mediawiki configuration allows greater flexibility and compatibility, as well as enbling better development experience on Windows.

## Stuff Included

- Nginx
- VisualEditor and Parsiod
- Redis
- ElasticSearch
- MariaDB


## Installation
Download the version of Medaiwiki you wish you use.

Place the files under the `app/mw` directory.

Build the app and parsoid image using the Dockerfile included.

Go to `Docker-compose.yml` to adjust some settings and add MariaDB password. The default port is 8080.

Start docker-compose
```
docker-compose up
```

`scripts` directory includes some scripts that helps you with MW extension installation and ElasticSearch indexing.

## Things to note

1. Both the PHP handler and Nginx need to have access to the mediawiki files.
2. Make sure to use `innodb_flush_method=littlesync` in your mariadb setting if you are running on Windows.
3. Parsoid may refuse to shutdown gracefully. You can simply force kill that container.
4. I put the image volume outside the main mw directory. This is purely personal preference.


## Todo

1. Automatic the ElasticSearch indexing process
2. Rewrite the app docker with Alpine for better image size.
