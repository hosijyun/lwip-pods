
#ifdef __OBJC__
#  import <UIKit/UIKit.h>
#else
#  ifndef FOUNDATION_EXPORT
#    if defined(__cplusplus)
#      define FOUNDATION_EXPORT extern "C"
#    else
#      define FOUNDATION_EXPORT extern
#    endif
#  endif
#endif

#ifdef __OBJC__
#include "lwip/api.h"
#include "lwip/netifapi.h"
#include "lwip/udp.h"
#include "lwip/tcp.h"
#include "lwip/tcpip.h"
#include "lwip/sockets.h"
#endif

FOUNDATION_EXPORT double lwipVersionNumber;
FOUNDATION_EXPORT const unsigned char lwipVersionString[];


