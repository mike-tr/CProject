FLAGS = -Wall 
CC = gcc
PROGRAM = program
MYOBJECTS = main.o power.o basicMath.o


run: $(PROGRAM)
	./$<

$(PROGRAM) : $(MYOBJECTS)
	gcc $(FLAGS) -o $@ $^

main.o: main.c myMath.h
	gcc $(FLAGS) -c $<

basicMath.o : basicMath.c myMath.h
	gcc $(FLAGS) -c $<

power.o : power.c myMath.h
	gcc $(FLAGS) -c $<

PHONY: run, clean

clean:
	rm $(MYOBJECTS) $(PROGRAM)