#ifndef TIMER_H
#define TIMER_H

#include <sys/time.h>

#ifdef __cplusplus
extern "C"
{
#endif

/* --------------------------------------------------------------------------------------------- */

inline double timer(void)
{
  struct timeval tp;
  struct timezone tzp;
  int i = gettimeofday(&tp, &tzp);
  return ((double)tp.tv_sec + (double)tp.tv_usec * 1.e-6);
}

/* --------------------------------------------------------------------------------------------- */

#ifdef __cplusplus
}
#endif

#endif

