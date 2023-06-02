# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: obouadel <obouadel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/01 19:54:24 by obouadel          #+#    #+#              #
#    Updated: 2023/06/02 11:26:59 by obouadel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all : build

build :
	docker-compose up 
	
clean :
	docker-compose down
	
fclean : clean purge
	docker-compose rm -f

cleanvol:
	cd db_volume && rm -rf *
purge :
	docker rm wordpress nginx mariadb -f
	docker rmi inception-nginx inception-mariadb inception-wordpress -f
	docker volume prune -f
	docker network prune -f
	docker system prune -f

re : fclean all