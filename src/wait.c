#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main(void) {
  pid_t ret_f = fork();
  if (0 == ret_f) {
    exit(-1);
  }
  int status;
  wait(&status);
  status = WEXITSTATUS(status);
  printf("child exit status: %i\n", status);
  exit(-1);
}
