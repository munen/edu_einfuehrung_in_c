#include <stdio.h> 
#include <stdlib.h> 

int x[8]; /* x[i] = x coordinate of queen in row i. */

/* prints field */
void print ()
{
  int i,j;
  printf ("+----------------+\n");
  for (i=0; i<8; i++) {
    printf ("|");
    for (j=0; j<8; j++)
      if (j==x[i]) printf ("<>");
      else printf ("  ");
    printf ("|\n");
  }
  printf ("+----------------+\n\n");
}

/* tests, whether (ix, iy) is beaten by queens 0...(iy-1) */
int is_free (int ix, int iy)
{
  int i;
  for (i=0; i<iy; i++)
    if ((x[i]==ix) || (abs(x[i]-ix)==abs(i-iy))) return 0;
  return 1;
}

/* tries to place queen n on row n */
void try (int n)
{
  int i;
  if (n==8) print();
  else
    for (i=0; i<8; i++)
      if (is_free(i,n)) {
        x[n]=i;
        try (n+1);
      }
}

int main ()
{
  try (0);
  return 0;
}
