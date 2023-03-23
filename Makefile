# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rogarrid <rogarrid@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/25 13:22:34 by rocio             #+#    #+#              #
#    Updated: 2022/11/02 13:31:31 by rogarrid         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a

SOURCES	=	ft_conver_base_hexa.c	\
			ft_filter_conver.c	\
			ft_lowercase_hex.c	\
			ft_printf.c	\
			ft_putchar_length.c	\
			ft_putcharporcent_length.c	\
			ft_puthex_length.c	\
			ft_putnbr_length.c	\
			ft_putnbr_unsig_length.c	\
			ft_strchr_length.c	\
			ft_uppercase_hex.c	\

OBJS = $(SOURCES:.c=.o)

CC = gcc
CFLAGS = -Wall -Werror -Wextra
RM = rm -rf
AR = ar crs

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

all: $(NAME)

clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all

.PHONY:	all clean fclean re
