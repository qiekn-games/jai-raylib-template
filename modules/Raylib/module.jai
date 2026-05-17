#load "raylib.jai";
#load "color.jai";

operator * :: inline (lhs: Vector2, rhs: float) -> Vector2 {
  return Vector2Scale(lhs, rhs);
}

operator * :: inline (lhs: Vector2, rhs: Vector2) -> Vector2 {
  return Vector2Multiply(lhs, rhs);
}

operator / :: inline (lhs: Vector2, rhs: Vector2) -> Vector2 {
return Vector2Divide(lhs, rhs);
}

operator + :: inline (lhs: Vector2, rhs: Vector2) -> Vector2 {
  return Vector2Add(lhs, rhs);
}

operator - :: inline (lhs: Vector2, rhs: Vector2) -> Vector2 {
  return Vector2Subtract(lhs, rhs);
}

#if OS == .LINUX {
    libm         :: #library,system,link_always "libm";
    libX11       :: #library,system,link_always "X11";
}

#if OS == .MACOS {
    libCocoa     :: #library,system,link_always "Cocoa";
    libIOKit     :: #library,system,link_always "IOKit";
    libCoreAudio :: #library,system,link_always "CoreAudio";
    libCoreVideo :: #library,system,link_always "CoreVideo";
    // libOpenGL    :: #library,system,link_always "OpenGL";
}

#if OS == .WINDOWS {
    libUser32    :: #library,system,link_always "user32";
    libGdi32     :: #library,system,link_always "gdi32";
    libWinmm     :: #library,system,link_always "winmm";
    libShell32   :: #library,system,link_always "shell32";
    // libOpenGL32  :: #library,system,link_always "opengl32";
}

