#include <SDL.h>
#include "Window.h"

int main() {
  Window GameWindow;
  SDL_Event event;
  while(true) {
    SDL_PollEvent(&event);
    GameWindow.RenderFrame();
  }
}
