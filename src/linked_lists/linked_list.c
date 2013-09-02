#include <stdlib.h>
#include <stdio.h>

struct linked_list {
  int data;
  struct linked_list *next;
};

typedef struct linked_list item;

int main(void) {
  item *tail, *cur, *tmp;

  tail = NULL;
  int i;

  for(i = 0; i<=10; i++) {
    cur = (item *)malloc(sizeof(item));

    cur->data = i;
    cur->next = tail;
    tail = cur;
  }

  cur = tail;
  while(cur) {
    printf("%d\n", cur->data);
    tmp = cur;
    cur = cur->next;
    free(tmp);
  }
}
