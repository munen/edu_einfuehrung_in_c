#include <stdio.h>
#include "int_stack.h"

int main(void) {
  int x, y;
  char c;
  while((c = getchar()) != 'q') {
    if(c == '\n')
      continue;

    if(c == '+')
        push(pop() + pop());
    if(c == '-')
        push(pop() - pop());
    if(c == '*')
        push(pop() * pop());
    if(c == '/')
        push(pop() / pop());
    if(c == '=')
      printf("Ergebnis: %d\n", pop());
    if(c>='0' && c<='9')
        push(c - '0');
  }
}
