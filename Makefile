##
## EPITECH PROJECT, 2018
## 
## File description:
## 
##

AS		= nasm
ASFLAGS		= -f elf64

CC		= ld
CFLAGS		= -fPIC -shared

RM		= rm -f

NAME		= libasm.so

SRCS		= src/strlen.asm	\
		src/strchr.asm		\
		src/memset.asm

OBJS		= $(SRCS:.asm=.o)


all: $(NAME)

$(NAME): $(OBJS)
	 $(CC) $(CFLAGS) -o $(NAME) $(OBJS)

%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re
