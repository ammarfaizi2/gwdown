
CC ?= cc
CLFAGS ?= -Wall -Wextra -g -I/usr/include -I/usr/local/include -L/usr/lib -L/usr/local/lib -O2

all: gwdown2

gwdown2: gwdown2.c
	$(CC) $(CLFAGS) -o gwdown2 gwdown2.c -lcurl -lpthread

clean:
	rm -f gwdown2

.PHONY: clean
