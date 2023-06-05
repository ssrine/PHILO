# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nel-hark <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/29 21:03:37 by nel-hark          #+#    #+#              #
#    Updated: 2023/06/04 22:36:47 by nel-hark         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


SRC =	main.c ft_atoi.c help.c life.c utilis.c finish.c

OBJ = $(SRC:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror -fsanitize=thread -g3

RM = rm -rf
NAME = philo

all: $(NAME)
$(NAME): $(OBJ)
	 $(CC) $(CFLAGS) $(OBJ) -o $(NAME)

clean:
	$(RM) $(OBJ)
fclean: clean
	$(RM) $(NAME)
re: fclean all