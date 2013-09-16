/* Algorithm
   1. if n==1, move the single disk from A to C and stop.
   2. Move the top n-1 disks from A to B, using C as auxiliary.
   3. Move the remaining disk from A to C.
   4. Move the n-1 disks from B to C, using C as auxiliary. */

#include "stdio.h"

void move_tower(int n,char frompeg,char topeg,char auxpeg) {
  /* If only 1 disk, make the move and return */
  if(n==1)
  { printf("Move disk 1 from peg %c to peg %c\n",frompeg,topeg);
    return;
  }

  /* Move top n-1 disks from A to B, using C as auxiliary */
  move_tower(n-1,frompeg,auxpeg,topeg);

  /* Move remaining disks from A to C */
  printf("Move disk %d from peg %c to peg %c\n",n,frompeg,topeg);

  /* Move n-1 disks from B to C using A as auxiliary */
  move_tower(n-1,auxpeg,topeg,frompeg);
}

int main() {
  int n;
  printf("Enter the number of disks : ");
  scanf("%d",&n);
  printf("The Tower of Hanoi involves the following moves\n\n");
  move_tower(n,'A','C','B');
  return 0;
}
