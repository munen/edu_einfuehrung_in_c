#include <stdio.h>
#include "int_stack.h"

int main(void) {
  char line[100];
  int x, y;

  do {
    fgets(line, sizeof(line), stdin);

    if(!strcmp(line, "+\n"))
        push(pop() + pop());
    else if(!strcmp(line, "-\n")) {
        x = pop();
        y = pop();
        push(y - x);
    }
    else if(!strcmp(line, "*\n"))
        push(pop() * pop());
    else if(!strcmp(line, "/\n")) {
        x = pop();
        y = pop();
        push(y / x);
    }
    else if(!strcmp(line, "=\n")) {
      printf("Ergebnis: %d\n", peek());
    }
    else {
      sscanf(line, "%d", &x);
      push(x);
    }
  } while(strcmp(line, "quit\n"));
}
