NAME = cub3D

CC = cc
CFLAGS = -Wall -Wextra -Werror

# macOS specific flags for miniLibX
MLXFLAGS = -Lmlx -lmlx -framework OpenGL -framework AppKit

# Source files
SRC_DIR = src
INC_DIR = includes
OBJ_DIR = objs

# Source files
SRCS = \
	$(SRC_DIR)/main.c \
	$(SRC_DIR)/init.c \
	$(SRC_DIR)/cleanup.c \
	$(SRC_DIR)/parser/map_parser.c \
	$(SRC_DIR)/parser/file_reader.c \
	$(SRC_DIR)/parser/validator.c \
	$(SRC_DIR)/renderer/draw.c \
	$(SRC_DIR)/raycaster/raycaster.c \
	$(SRC_DIR)/utils/error_handling.c \
	$(SRC_DIR)/input/key_handling.c

# Object files
OBJS = $(SRCS:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

# Rules
all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) $(MLXFLAGS) -o $(NAME)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -I$(INC_DIR) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re