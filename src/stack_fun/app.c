#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "stack.h"

// Actual checking function
int correct_parantheses(char *parantheses) {
  char *s = parantheses;
  char c;
  int empty = 0;
  while((c = *s++) != '\n') {
    if(c == '(')
      push(c);
    else {
      if(peek() == '(')
        pop();
      else
        push(c);
    }
  }
  empty =  pop() == 0;
  if(!empty)
    while(pop()!=0)
      ;
  return empty;
}

// Loop program
void checking_parantheses() {
  char input[100];

  fgets(input, 100, stdin);
  while(strcmp(input, "q\n")) {

    if(correct_parantheses(input))
      printf("Correct parantheses. Good boy.\n");
    else {
      printf("Incorrect parantheses!!\n");
    }
    fgets(input, 100, stdin);
  }
}






int main(void) {
  checking_parantheses();
}
