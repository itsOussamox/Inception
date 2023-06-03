# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: obouadel <obouadel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/02 17:42:31 by obouadel          #+#    #+#              #
#    Updated: 2023/06/02 17:45:46 by obouadel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = staticweb
CONTAINER_NAME = staticweb_container

all: build run

build:
	- docker build -t $(NAME) .
	
run:
	- docker run -d --name $(CONTAINER_NAME) -p 8080:8080 $(NAME)
clean:
	- docker stop $(CONTAINER_NAME)
	- docker rm $(CONTAINER_NAME)
	
fclean: clean
	- docker rmi $(NAME)

remove:
	- docker stop $(docker ps -a -q)
	- docker rm $(docker ps -a -q)
	- docker rmi $(docker images -q)
	
re: fclean all