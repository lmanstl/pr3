/*
  file: main.c
*/
#include "list.h"
#include <stdlib.h>
#include <stdio.h>

Node * head = NULL;
int v;
	
int menu(void) {
    char choice;
	

    printf("\nMenu:\n\n");
    printf("1) Insert Head\n");
    printf("2) Insert Tail\n");
    printf("3) Delete Node\n");
	printf("4) Delete All Nodes\n");
	printf("5) Display\n");
	printf("6) Exit\n");
    printf("Choice: ");
    if (scanf(" %c", &choice) == 1)
        return choice;
    else
        return EOF;
}

void choice1(){
	printf("new head value: ");
	scanf(" %d", &v);
	head = List_insert(head, v);
}
void choice2(){
	printf("new tail value: ");
	scanf(" %d", &v);
	List_insert_last(head, v);
}
void choice3(){
	printf("value to remove: ");
	scanf(" %d", &v);
	head = List_delete(head, v);
}
void choice4(){
	List_destroy(head);
}
void choice5(){
	List_print(head);
}


int main(int argc, char * argv[])
{

	int ch;

    for (;;) {
        switch (ch = menu()) {
        case '1':  choice1();  continue;
        case '2':  choice2();  continue;
        case '3':  choice3();  continue;
		case '4':  choice4();  continue;
		case '5':  choice5();  continue;
        case '6':
        case EOF:  break;
        default:   printf("Invalid character %c\n", ch);  continue;
        }
        break;
    }
    return 0;
	
}