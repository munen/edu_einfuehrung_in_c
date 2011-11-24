#include <stdio.h>

int my_strlen(char *s) {
  char *p = s;
  while(*p != '\0')
    p++;
  return p - s;
}

int main(void) {
  printf("Laenge von s: %d\n", my_strlen("asdf"));
}
