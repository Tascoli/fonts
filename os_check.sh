#! /bin/bash
#
# Test your operacional system
#

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # ...
        echo "This is a Linux Distribution"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
        echo "This is a MacOS system"
#elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
#elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
#elif [[ "$OSTYPE" == "win32" ]]; then
        # I'm not sure this can happen.
#elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # ...
else
        # Unknown.
        echo "I don't know what your f*ing system"
fi

