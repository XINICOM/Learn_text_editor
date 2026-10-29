SDL_CFLAGS := $(shell pkg-config --cflags sdl2)
SDL_LIBS   := $(shell pkg-config --libs sdl2) -lm 
CFLAGS     := -Wall -Wextra -std=c11 -pedantic -ggdb
FILES       := main.c la.c editor.c

te: $(FILES)
	gcc $(CFLAGS) $(SDL_CFLAGS) -o te $(FILES) $(SDL_LIBS)
