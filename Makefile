SDL_CFLAGS := $(shell pkg-config --cflags sdl2)
SDL_LIBS   := $(shell pkg-config --libs sdl2) -lm la.c buffer.c
CFLAGS     := -Wall -Wextra -std=c11 -pedantic -ggdb

te: main.c
	gcc $(CFLAGS) $(SDL_CFLAGS) -o te main.c $(SDL_LIBS)
