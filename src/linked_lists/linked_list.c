#include <stdlib.h>
#include <stdio.h>

struct linked_list {
  int data;
  struct linked_list *next;
};

typedef struct linked_list item;


int main(void) {
  item *head, *cur, *tmp;

  head = NULL;
  int i;

  for(i = 0; i<=10; i++) {
    cur = (item *)malloc(sizeof(item));

    cur->data = i;
    cur->next = head;
    head = cur;
  }

  cur = head;
  while(cur) {
    printf("%d\n", cur->data);
    tmp = cur;
    cur = cur->next;
    free(tmp);
  }
}
