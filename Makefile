CC 	 = gcc	#compiler name
CFLAGS   = -Wall # compress all warning, choose your own compile flags (if any)
TARGET   = ./bin/test
OBJFILES = ./bin/test.o ./bin/list.o
  
$(TARGET): $(OBJFILES)  
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES) 

test.o: test.c list.c      # Meaning: target test.o depends on test.c list.c
	gcc -o ./bin/list.o -c list.c        # Command to make the target
	gcc -o ./bin/test.o -c test.c

list.o: list.c   list.h #target list.o depends on list.c and indirectly on list.h	
	gcc -o ./bin/list.o -c list.c
clean: 
	rm -f $(OBJFILES) $(TARGET)
