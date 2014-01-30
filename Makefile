CPP = g++
CC = gcc
WINDRES = windres.exe
RES =
OBJ = prog.o
$(RES)LINKOBJ = prog.o
$(RES)BIN = prog
CXXFLAGS = $(CXXINCS)
CFLAGS = $(INCS)
RM = rm -f
.PHONY: all all-before all-after clean clean-custom
all: all-before prog all-after
clean: clean-custom
	${RM} $(OBJ) $(BIN)
$(BIN): $(OBJ)
	$(CPP) $(LINKOBJ) -o "prog"
prog2.o: prog.cpp
	$(CPP) -c prog.cpp -o prog.o $(CXXFLAGS)
