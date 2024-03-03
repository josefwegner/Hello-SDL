#include <SDL.h>
#include "Window.h"

int main() {
  Window GameWindow;
  SDL_Event event;
  bool quit = false;

  // Application Loop
  while (true) {
    // Event Loop
    while (SDL_PollEvent(&event)) {
      if (event.type == SDL_QUIT) [[unlikely]] {
        SDL_Quit();
        return 0;
      }
    }
    GameWindow.RenderFrame();
  }

  return 0;
}
