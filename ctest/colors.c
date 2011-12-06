#include <stdio.h>

#define R_RGB(r,g,b)	((r)|((g)<<8)|((b)<<16)|0xFF000000)
#define R_RGBA(r,g,b,a)	((r)|((g)<<8)|((b)<<16)|((a)<<24))
#define R_RED(col)	(((col)	   )&255)
#define R_GREEN(col)	(((col)>> 8)&255)
#define R_BLUE(col)	(((col)>>16)&255)
#define R_ALPHA(col)	(((col)>>24)&255)
#define R_OPAQUE(col)	(R_ALPHA(col) == 255)
#define R_TRANSPARENT(col) (R_ALPHA(col) == 0)


int
main(int argc, char *argv[])
{
  unsigned int val;
  int n;

  val = -16777216;

  val = R_RGB(0,0,0);

  if(argc > 1) {
    n = sscanf(argv[1], "%u", &val);

    if(n == 0) {
      fprintf(stderr, "can't read input");
      fflush(stderr);
      return(1);
    }
  }

  fprintf(stderr, "input: %u\n%d", val, R_TRANSPARENT(val));

  return(0);
}
