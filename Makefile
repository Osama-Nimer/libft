# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: onimer <onimer@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/08/20 09:56:27 by onimer            #+#    #+#              #
#    Updated: 2025/08/20 09:56:27 by onimer           ###   ########.fr        #
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
	   ft_strncmp.c \
	   ft_memmove.c \
	   ft_strlcat.c \
	   ft_strlcpy.c \
	   ft_memchr.c \
	   ft_memcpy.c \
	   ft_calloc.c \
	   ft_strchr.c \
	   ft_strrchr.c \
	   ft_strnstr.c

	   
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
