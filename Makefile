NAME	=	libftprintf.a

SRC	=	ft_printf.c     ft_puthex_pf.c  ft_putptr_pf.c  ft_putuint_pf.c \
		ft_putchar.c    ft_putnbr_pf.c  ft_putstr_pf.c

OBJS = $(SRC:.c=.o)

CC = cc
FLAGS = -Wall -Werror -Wextra
RM = rm -rf
AR = ar crs

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

all: $(NAME)

%.o: %.c ft_printf.h
	$(CC) $(FLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)		

re:	fclean all

.PHONY:	all clean fclean re