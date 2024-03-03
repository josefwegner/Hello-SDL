SDK=/opt/ppc-amigaos/ppc-amigaos/SDK
CXX=ppc-amigaos-g++
CXXFLAGS=-mcrt=newlib -athread=native -I${SDK}/local/newlib/include/SDL2
LDFLAGS=-lm -lpthread ${SDK}/local/newlib/lib/libSDL2_gl4es.a ${SDK}/local/newlib/lib/libgl4es.a

Hello-SDL: Main.cpp
	${CXX} ${CXXFLAGS} Main.cpp ${LDFLAGS} -o Hello-SDL

clean:
	rm Hello-SDL
