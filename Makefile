# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    MakeFile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marvin <marvin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/08/08 22:28:03 by marvin            #+#    #+#              #
#    Updated: 2025/08/08 22:28:03 by marvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libft.a


SRCS = ft_strlen.c \
	   ft_strdup.c \
	   ft_atoi.c \
	   ft_isdigit.c \
	   ft_isalpha.c \
	   ft_isalnum.c \
	   ft_isascii.c \
	   ft_isprint.c \
	   ft_toupper.c \
	   ft_tolower.c \
	   ft_memset.c \
	   ft_bzero.c \
	   ft_memcpy.c \

OBJS = $(SRCS:.c=.o)


CC = cc
CFLAGS = -Wall -Wextra -Werror


all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c libft.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
