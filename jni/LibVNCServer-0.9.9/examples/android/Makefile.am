INCLUDES = -I$(top_srcdir)
LDADD = $(top_srcdir)/libvncserver/libvncserver.la @WSOCKLIB@

bin_PROGRAMS=androidvncserver
androidvncserver_SOURCES=jni/fbvncserver.c
androidvncserver_LDFLAGS = -static
androidvncserver_CFLAGS = -static
EXTRA_DIST=jni/Android.mk
