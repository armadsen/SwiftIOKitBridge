SRCDIR = Source
SHAREDLIB = libSwiftIOKitBridge.so

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	SHAREDLIBPATH = /usr/lib
endif
ifeq ($(UNAME_S),Darwin)
	SHAREDLIBPATH = /usr/local/lib
endif

SwiftIOKitBridge: $(SRCDIR)/SwiftIOKitBridge.c
	clang -shared $(SRCDIR)/SwiftIOKitBridge.c -o $(SHAREDLIB)
	cp libSwiftIOKitBridge.so $(SHAREDLIBPATH)

clean:
	-rm -f $(SHAREDLIB)
	-rm -f $(SHAREDLIBPATH)/$(SHAREDLIB)
