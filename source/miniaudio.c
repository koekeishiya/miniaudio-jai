#ifdef WIN32
#define __EXPORT __declspec(dllexport)
#else
#define __EXPORT
#endif

#define MA_API extern __EXPORT

#define MINIAUDIO_IMPLEMENTATION
#include "miniaudio.h"
