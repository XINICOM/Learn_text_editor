SDL_CFLAGS := $(shell pkg-config --cflags sdl2)
SDL_LIBS   := $(shell pkg-config --libs sdl2) -lm la.c

te: main.c
	gcc -Wall -Wextra -std=c11 -pedantic -ggdb $(SDL_CFLAGS) -o te main.c $(SDL_LIBS)
