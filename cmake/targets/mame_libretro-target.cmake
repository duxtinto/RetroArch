# TARGET: mame_libretro
add_library(mame_libretro SHARED IMPORTED)
set_target_properties(
        mame_libretro
        PROPERTIES
        IMPORTED_LOCATION /home/duxtinto/projects/gamebots/gamebots_arena_libretro/deps/libretro-mame/mame_libretro.so
)
