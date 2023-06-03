# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: obouadel <obouadel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/01 19:54:24 by obouadel          #+#    #+#              #
#    Updated: 2023/06/03 13:06:00 by obouadel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all : build

build :
	./srcs/docker-compose up
	
clean :
	./srcs/docker-compose down
	
fclean : clean purge
	./srcs/docker-compose rm -f

cleanvol:
	cd /Users/obouadel/Desktop/Inception/srcs/wp_volume && rm -rf *
	cd /Users/obouadel/Desktop/Inception/srcs/db_volume && rm -rf *
purge :
	docker rm wordpress nginx mariadb -f
	docker rmi inception-nginx inception-mariadb inception-wordpress -f
	docker volume prune -f
	docker network prune -f
	docker system prune -f
	
re : fclean all