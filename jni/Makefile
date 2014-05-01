
TOP_DIR=$(PWD)
LIBJPEG=libjpeg-turbo/libjpeg-turbo-1.3.1/_install/lib/libjpeg.a
VNC_SERVER=androidvncserver
ANDROID_VNC_SERVER=LibVNCServer-0.9.9/_install/bin/$(VNC_SERVER)

all:$(ANDROID_VNC_SERVER)

libjpeg-turbo:
	cd libjpeg-turbo/libjpeg-turbo-1.3.1; $(TOP_DIR)/ndk_configure.sh; make; make install

$(VNC_SERVER):$(ANDROID_VNC_SERVER)

$(LIBJPEG):libjpeg-turbo

$(ANDROID_VNC_SERVER):$(LIBJPEG)
	cd LibVNCServer-0.9.9; ./myconfigure.sh; make; make install; cp -f _install/bin/$(VNC_SERVER) $(TOP_DIR)/;
	strip $(VNC_SERVER)

clean:
	cd libjpeg-turbo/libjpeg-turbo-1.3.1; make clean; rm -rf _install
	cd LibVNCServer-0.9.9; make clean; rm -rf _install
	rm -rf $(VNC_SERVER)

install:
	cp -rf $(VNC_SERVER)  $(TOP_DIR)/../
