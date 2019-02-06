LFLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm

all: test

test: test_game.cpp timers.cpp
	g++ test_game.cpp timers.cpp -Wall -Wextra $(LFLAGS) -o test

clean:
	rm -f test
	rm -f *.o
