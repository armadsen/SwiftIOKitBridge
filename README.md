SwiftIOKitBridge
================

This is a very simple C library to allow Swift to call into a few IOKit and POSIX functions that take variadic arguments. It is solely intended to be used as part of [ORSSerialPort](http://www.github.com/armadsen/ORSSerialPort/).

This is considered a temporarly solution until the Swift Package Manager [implements](https://github.com/ddunbar/swift-evolution/blob/master/proposals/NNNN-swiftpm-c-language-targets.md) support for C language targets.

Installation
------------

In order to install [ORSSerialPort](http://www.github.com/armadsen/ORSSerialPort/) using the Swift package manager, you must first download and install this library to `/usr/local/lib` (OS X) or `/usr/lib` (Linux). A simple make file is included to automate this process. Simply do the following:

```
git clone https://github.com/armadsen/SwiftIOKitBridge.git
cd SwiftIOKitBridge
make
```