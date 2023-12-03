NAME	= libft.a
HASH	= 
NOVISU 	= 0

FILE_EXTENSION	= .c

SRCS			= ft_atoi.c ft_bzero.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memset.c\
				ft_putchar_fd.c ft_putstr_fd.c ft_strchr.c ft_strdup.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c\
				ft_strnstr.c ft_substr.c ft_tolower.c ft_toupper.c ft_memmove.c ft_isalnum.c ft_calloc.c ft_strrchr.c ft_putendl_fd.c\
				ft_putnbr_fd.c ft_strmapi.c ft_striteri.c ft_strtrim.c ft_itoa.c ft_split.c

SRCS_BONUS		= ft_lstsize_bonus.c ft_lstadd_front_bonus.c ft_lstnew_bonus.c ft_lstlast_bonus.c\
				ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

INCLUDE_PATH	= ./include
SRCS_PATH		= ./srcs
OBJS			= $(addprefix objs/, ${SRCS:$(FILE_EXTENSION)=.o})
OBJS_BONUS		= $(addprefix objs/bonus/, ${SRCS_BONUS:$(FILE_EXTENSION)=.o})

OK_COLOR    = \033[0;32m
ERROR_COLOR = \033[0;31m
WARN_COLOR  = \033[0;33m
NO_COLOR    = \033[m

all: header $(NAME)

header:
	@printf "%b" "$(OK_COLOR)"
	@echo "   _   _   ___   _   _  "
	@echo "  | | | | / _ \ | | | | "
	@echo "  | |_| || (_) || |_| | "
	@echo "   \__, | \___/  \__,_| "
	@echo "    __/ |                 "
	@echo "   |___/                  "
	@echo
ifneq ($(HASH),)
	@printf "%b" "$(OBJ_COLOR)Name:  $(WARN_COLOR)$(NAME)@$(HASH)\n"
else
	@printf "%b" "$(OBJ_COLOR)Name:  $(WARN_COLOR)$(NAME)\n"
endif
	@printf "%b" "$(OBJ_COLOR)CC:  $(WARN_COLOR)$(CC)\n\033[m"
	@printf "%b" "$(OBJ_COLOR)Flags:  $(WARN_COLOR)$(CFLAGS)\n\033[m"
	@echo

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

objs/%.o: $(SRCS_PATH)/%$(FILE_EXTENSION)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@ -I$(INCLUDE_PATH)

bonus: $(OBJS) $(OBJS_BONUS)
	ar rcs $(NAME) $(OBJS) $(OBJS_BONUS)

objs/bonus/%.o: $(SRCS_PATH)/%$(FILE_EXTENSION)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@ -I$(INCLUDE_PATH)

clean: header
	@rm -rf objs objs/bonus
	@printf "%-53b%b" "$(COM_COLOR)clean:" "$(OK_COLOR)[✓]$(NO_COLOR)\n"

fclean: header clean
	@rm -f $(NAME)
	@printf "%-53b%b" "$(COM_COLOR)fclean:" "$(OK_COLOR)[✓]$(NO_COLOR)\n"

re: fclean all

.PHONY: all clean fclean re header bonus
