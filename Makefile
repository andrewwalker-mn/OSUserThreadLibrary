CC = g++
CFLAGS = -lrt -g
DEPS = TCB.h uthread.h
OBJ = TCB.o uthread.o timertest.o
OTHER = TCB.o uthread.o

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

timertest: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

uthread-demo: $(OTHER)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm -f uthread-demo *.o
