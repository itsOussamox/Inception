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
	docker-compose -f srcs/docker-compose.yaml up -d
	
clean :
	docker-compose -f srcs/docker-compose.yaml down
	
fclean : clean purge
	docker-compose -f srcs/docker-compose.yaml rm -f

cleanvol:
	cd /home/obouadel/data/wp_volume && rm -rf *
	cd /home/obouadel/data/db_volume && rm -rf *
purge :
	docker rm wordpress nginx mariadb -f
	docker rmi srcs_nginx srcs_mariadb srcs_wordpress -f
	docker volume prune -f
	docker network prune -f
	docker system prune -f
	
re : fclean all
