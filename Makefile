CC = gcc
INCLUDE_PATH = /usr/include/
LIB_PATH = /usr/lib/
CFLAGS = -Wall -O3 -I$(INCLUDE_PATH)
LIBS = -lm $(LIB_PATH)/libCAENDigitizer.so $(LIB_PATH)/libCAENComm.so $(LIB_PATH)/libCAENVME.so
OBJECTS = DAQ.o Functions.o keyb.o cfg.o
HEADERS = 
DEBUG_FLAG = -g

ALL : DAQ.exe
	@echo File has been successfully compiled $(NEWLINE)

DAQ.exe : $(OBJECTS)
	$(CC) $(OBJECTS) $(DEBUG_FLAG) -o DAQ.exe $(LIBS) $(GLIBS) $(CFLAGS)

DAQ.o : DAQ.c $(HEADERS)
	$(CC) -c DAQ.c $(DEBUG_FLAG) -o DAQ.o $(CFLAGS)

Functions.o : Functions.c $(HEADERS)
	$(CC) -c Functions.c $(DEBUG_FLAG) -o Functions.o $(CFLAGS)

keyb.o : keyb.c $(HEADERS)
	$(CC) -c keyb.c $(DEBUG_FLAG) -o keyb.o $(CFLAGS)

cfg.o : cfg.c $(HEADERS)
	$(CC) -c cfg.c $(DEBUG_FLAG) -o cfg.o $(CFLAGS)

clean:
	rm -f *~ *.o *.exe
