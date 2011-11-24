#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "stack.h"

// Just putting stuff in and out
void pushing_and_popping() {
}

// Actual checking function
int correct_parantheses(char *parantheses) {
  char *s = parantheses;
  char c;
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
  return pop() == 0;
}

// Loop program
void checking_parantheses() {
  char input[100];

  fgets(input, 100, stdin);
  while(strcmp(input, "q\n")) {

    if(correct_parantheses(input))
      printf("Correct parantheses. Good boy.\n");
    else
      printf("Incorrect parantheses!!\n");
    fgets(input, 100, stdin);
  }
}






int main(void) {
  int i;
  for(i = 65; i<=75; i++)
    push(i);
  for(i = 75; i>65; i--)
    printf("stuff: %c\n", pop());
}
