dcpath = ./docker/docker-compose.yml
php-app = technodwarf-app

install:
	docker-compose -f $(dcpath) build
start:
	docker-compose -f $(dcpath) up -d
stop:
	docker-compose -f $(dcpath) stop
terminal:
	osascript -e 'tell app "Terminal"' \
			  -e '    do script "docker attach technodwarf-app"' \
			  -e 'end tell'