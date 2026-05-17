#import "Basic";
#import "Compiler";
#import "Bindings_Generator";

#run build();

build :: () {
  set_build_options_dc(.{do_output = false});

  opts: Generate_Bindings_Options;

  #if OS == .LINUX {
    array_add(*opts.libraries, .{filename="raylib-6.0/lib/linux/libraylib", identifier = "raylib"});
  } else #if OS == .WINDOWS {
    array_add(*opts.libraries, .{filename="raylib-6.0/lib/windows/raylib.lib", identifier = "raylib"});
  } else #if OS == .MACOS {
    array_add(*opts.libraries, .{filename="raylib-6.0/lib/macos/libraylib", identifier = "raylib"});
  }

  array_add(*opts.source_files,
    "raylib-6.0/include/raylib.h",
    "raylib-6.0/include/raymath.h",
    "raylib-6.0/include/rlgl.h"
  );


  generate_bindings(opts, "raylib.jai");
}
