#import "Raylib";

main :: () {
    screen_width:  s32 = 800;
    screen_height: s32 = 450;

    SetConfigFlags(xx ConfigFlags.WINDOW_HIGHDPI);

    InitWindow(screen_width, screen_height, "Jai Raylib Example");
    defer CloseWindow();

    SetTargetFPS(160);


    while !WindowShouldClose() {
        BeginDrawing();
        defer EndDrawing();

        ClearBackground(RAYWHITE);

        text := "Hello, Sailor";
        font_size : s32 = 32;
        text_width := MeasureText(text.data, font_size);

        x := (screen_width - text_width) / 2;
        y := (screen_height - font_size) / 2;

        DrawText(text.data, x, y, font_size, BLUE);
    }
}
