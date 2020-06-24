## Installation

### 1. Start Containers and install dependencies: 
On Linux:
```bash
docker-compose up -d
```
On MacOS:
```bash
docker-sync-stack start
```
### 2. Run composer install
```bash
docker-compose exec php composer install
```

### 3. Open project
Just go to [http://localhost](http://localhost)


Useful commands and shortcuts
==========

## Shortcuts
It is recommended to add short aliases for the following frequently used container commands:

* `docker-compose exec php php` to run php in container
* `docker-compose exec php composer` to run composer
* `docker-compose exec php bin/console` to run Symfony CLI commands


## Checking code style and running tests
Fix code style by running PHP CS Fixer:
```bash
docker-compose exec php vendor/bin/php-cs-fixer fix
```