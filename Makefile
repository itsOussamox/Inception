# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: obouadel <obouadel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/01 19:54:24 by obouadel          #+#    #+#              #
#    Updated: 2023/04/05 02:41:08 by obouadel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all : build

build :
	docker-compose up -d
	
clean :
	docker-compose down
	
fclean : clean
	docker-compose --rmi

re : fclean all