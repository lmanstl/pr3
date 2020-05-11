CC 	 = gcc	#compiler name
CFLAGS   = -Wall # compress all warning, choose your own compile flags (if any)
TARGET   = ./bin/test
OBJFILES = ./bin/test.o ./bin/list.o
OUT = bin

$(TARGET): $(OBJFILES) $(OUT)/ 
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES) 

$(OUT)/:
	mkdir -p $@

$(OUT)/test.o: test.c list.c $(OUT)/     # Meaning: target test.o depends on test.c list.c
	gcc -o ./bin/list.o -c list.c        # Command to make the target
	gcc -o ./bin/test.o -c test.c

$(OUT)/list.o: list.c $(OUT)/   list.h #target list.o depends on list.c and indirectly on list.h	
	gcc -o ./bin/list.o -c list.c
clean: 
	rm -r $(OUT)/


