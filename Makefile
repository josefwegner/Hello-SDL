SDK=/opt/ppc-amigaos/ppc-amigaos/SDK
CXX=ppc-amigaos-g++
CXXFLAGS_gl4es=-mcrt=newlib -athread=native -I${SDK}/local/newlib/include/SDL2 -DAMIGAOS4_GL4ES
LDFLAGS_gl4es=-lm -lpthread ${SDK}/local/newlib/lib/libSDL2_gl4es.a ${SDK}/local/newlib/lib/libgl4es.a

CXXFLAGS_mgl=-mcrt=newlib -athread=native -I${SDK}/local/newlib/include/SDL2 -DAMIGAOS4_MINIGL
LDFLAGS_mgl=-lm -lpthread ${SDK}/local/newlib/lib/libSDL2.a ${SDK}/local/newlib/lib/libGL.a

all:	Hello-SDL_gl4es Hello-SDL_mgl

Hello-SDL_gl4es: Main.cpp
	${CXX} ${CXXFLAGS_gl4es} Main.cpp ${LDFLAGS_gl4es} -o Hello-SDL_gl4es

Hello-SDL_mgl: Main.cpp
	${CXX} ${CXXFLAGS_mgl} Main.cpp ${LDFLAGS_mgl} -o Hello-SDL_mgl

clean:
	rm -f Hello-SDL*
