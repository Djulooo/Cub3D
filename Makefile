.PHONY:					all $(NAME) clear mkbuild lib minilibx clear clean fclean re sanitize

NAME					= cub3D

BUILD_DIR				= build/
	
HEADER_DIR				= header/
HEADER_FILE				= cub.h	\
							typedef.h	\

DIR						=	src/
SRC						=	main.c	exit.c	\
							parsing/parsing_cub.c	parsing/p_parameters.c parsing/p_list_utils.c	\
							parsing/p_analyse_list.c parsing/p_map_array.c	parsing/p_map_list.c parsing/p_utils.c
							
OBJECTS					= $(SRC:%.c=$(BUILD_DIR)%.o)
	
LIBFT					= libft.a
LIB_DIR					= libft/

#MINILIB					= libmlx.a
#MINILIB_DIR				= mlx/

GCC						= cc
CFLAGS					= -Wall -Werror -Wextra
SANITIZE				= $(CFLAGS) -g3 -fsanitize=address

RM 						= rm -rf
CLEAR					= clear

$(BUILD_DIR)%.o:		$(DIR)%.c $(HEADER_DIR)* libft Makefile
						@mkdir -p $(@D)
						$(GCC) $(CFLAGS) -I$(HEADER_DIR) -I$(LIB_DIR) -I/usr/include -O3 -c $< -o $@

all: 					clear mkbuild lib $(HEADER_DIR) $(NAME) 
						
mkbuild:
						@mkdir -p build

clear:
						$(CLEAR)
						
$(NAME): 				$(OBJECTS) $(LIB_DIR)$(LIBFT)
						$(GCC) $(OBJECTS) -o $(NAME) $(LIB_DIR)$(LIBFT) $(MINILIB_DIR)$(MINILIB)

sanit :					$(OBJECTS) $(LIB_DIR)$(LIBFT)
						$(GCC) $(SANITIZE) $(OBJECTS) -o $(NAME) $(LIB_DIR)$(LIBFT) $(MINILIB_DIR)$(MINILIB)

lib:
						@make -C $(LIB_DIR)

#minilibx:
#						@make -C $(MINILIB_DIR)
						
clean:					
						@${RM} $(OBJECTS)
						@make clean -C $(LIB_DIR)
						@${RM} $(BUILD_DIR)

fclean:					clean
						@${RM} ${NAME}
						@make fclean -C $(LIB_DIR)

re:						fclean all
						$(MAKE) all
