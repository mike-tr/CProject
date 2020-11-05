FLAGS = -Wall -g
CC = gcc
AR = ar

PROGRAMD = maind
PROGRAMS = mains

OBJECTS_MAIN = main.o
MYOBJECTS = power.o basicMath.o
StaticLibrary = libmyMath.a
DynamicLibrary = libmyMath.so


rund: $(PROGRAMD)
	./$<

runs: $(PROGRAMS)
	./$<

compiles: $(PROGRAMS)
compiled: $(PROGRAMD)


kek.txt : test | phonytarget
	touch $@

# i was asked to create mains and maind
# but not to generate it again if it exist,
# but its impossible, as i was asked to generate mainc and maind
# everytime it is called, anyway it will always generate mainc and maind
# if either main.o or any of the libraries doesnt exist or newer.
all : $(PROGRAMS) $(PROGRAMD)

$(PROGRAMS) : $(OBJECTS_MAIN) $(StaticLibrary)
	$(CC) $(FLAGS) -o $@ $^

$(PROGRAMD) : $(OBJECTS_MAIN) $(DynamicLibrary)
	$(CC) $(FLAGS) -o $@ $< ./$(DynamicLibrary)

mymathd : $(DynamicLibrary)
mymaths : $(StaticLibrary)

# i was asked to create the library only if it doesnt exist
# so if it doesnt exist we try to create the .o objects
# and then we create the library.
$(StaticLibrary) : 
	make $(MYOBJECTS)
	$(AR) -rcs $@ $(MYOBJECTS)

# i was asked to create the library only if it doesnt exist
# so if it doesnt exist we try to create the .o objects
# and then we create the library.
$(DynamicLibrary) : 
	make $(MYOBJECTS)
	$(CC) -shared -o $@ $(MYOBJECTS)

%.o: %.c myMath.h
	gcc $(FLAGS) -fPIC -c $<

PHONY: run, clean, all, mymathd, mymaths

clean:
	rm -f *.o *.a *.so $(PROGRAMD) $(PROGRAMS)

delo:
	rm -f *.o