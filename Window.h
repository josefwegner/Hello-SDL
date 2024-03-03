// Window.h
#pragma once
#include <SDL.h>

class Window {
public:
  Window() {
    SDL_Init(SDL_INIT_VIDEO);

    SDLWindow = SDL_CreateWindow(
      "Hello Window", 0, 0, 500, 300, 0
    );

    SDLWindowSurface = SDL_GetWindowSurface(SDLWindow);

    SDL_FillRect(
      SDLWindowSurface,
      nullptr,
      SDL_MapRGB(SDLWindowSurface->format, 40, 40, 40)
    );
  }

  void RenderFrame() {
    SDL_UpdateWindowSurface(SDLWindow);
  }

private:
  SDL_Window* SDLWindow { nullptr };
  SDL_Surface* SDLWindowSurface { nullptr };
};
