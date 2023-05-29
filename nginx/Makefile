# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: obouadel <obouadel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/06 02:46:59 by obouadel          #+#    #+#              #
#    Updated: 2023/04/08 00:47:44 by obouadel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# makefile that runs the dockerfile and build the image and clean the container and fclean the image and the container

NAME = nginx
CONTAINER_NAME = nginx_container

all: build

build:
	- docker build -t $(NAME) .
	
run:
	- docker run -d --name $(CONTAINER_NAME) -p 80:80 -p 443:443 $(NAME)

clean:
	- docker rm $(CONTAINER_NAME)
	
fclean: clean
	- docker rmi $(NAME)

remove:
	- docker stop $(docker ps -a -q)
	- docker rm $(docker ps -a -q)
	- docker rmi $(docker images -q)
	
re: fclean all