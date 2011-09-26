#include <stdio.h>
#include "read_num.h"

int fib(int n) {
  return (n < 2) ? n : fib(n-1) + fib(n-2);
}

int main(void) {
  printf("num: ");
  printf("fib: %i\n", fib(read_num()));
  return 0;
}
