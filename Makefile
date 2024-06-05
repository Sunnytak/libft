# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stak <stak@student.hive.fi>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/06 11:25:46 by stak              #+#    #+#              #
#    Updated: 2023/11/24 16:14:40 by stak             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
libft = libft.h

MY_SOURCE  = ft_atoi.c \
			 ft_bzero.c \
			 ft_calloc.c \
			 ft_isalnum.c \
			 ft_isalpha.c \
			 ft_isascii.c \
			 ft_isdigit.c \
			 ft_isprint.c \
			 ft_memchr.c \
			 ft_memcmp.c \
			 ft_memcpy.c \
			 ft_memmove.c \
			 ft_memset.c \
			 ft_strchr.c \
			 ft_strdup.c \
			 ft_strlcat.c \
			 ft_strlcpy.c \
			 ft_strlen.c \
			 ft_strncmp.c \
			 ft_strnstr.c \
			 ft_strrchr.c \
			 ft_tolower.c \
			 ft_toupper.c \
			 ft_substr.c \
			 ft_strjoin.c \
			 ft_strtrim.c \
			 ft_putchar_fd.c \
			 ft_putstr_fd.c \
			 ft_putnbr_fd.c \
			 ft_putendl_fd.c \
			 ft_striteri.c \
			 ft_strmapi.c \
			 ft_itoa.c \
			 ft_split.c \

MY_BONUS =	ft_lstnew_bonus.c \
			ft_lstadd_front_bonus.c \
			ft_lstsize_bonus.c \
			ft_lstlast_bonus.c \
			ft_lstadd_back_bonus.c \
			ft_lstdelone_bonus.c \
			ft_lstclear_bonus.c \
			ft_lstiter_bonus.c \
			ft_lstmap_bonus.c \

OBJECTS = $(MY_SOURCE:.c=.o)
BONUS_OBJECTS = $(MY_BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJECTS) $(libft) 
	ar rc $(NAME) $(OBJECTS)

bonus: .bonus

.bonus: $(BONUS_OBJECTS)
	ar rc $(NAME) $(BONUS_OBJECTS)
	@touch .bonus

CC: HCC

CFLAGS += -Wall -Wextra -Werror

clean: 
	rm -f $(OBJECTS) .bonus $(BONUS_OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re