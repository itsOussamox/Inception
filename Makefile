# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: obouadel <obouadel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/01 19:54:24 by obouadel          #+#    #+#              #
#    Updated: 2023/06/03 14:08:50 by obouadel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all : build

build :
	docker-compose -f srcs/docker-compose.yaml up
	
clean :
	docker-compose -f srcs/docker-compose.yaml down
	
fclean : clean purge
	docker-compose -f srcs/docker-compose.yaml rm -f

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