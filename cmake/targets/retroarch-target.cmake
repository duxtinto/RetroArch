# TARGET: Retroarch
add_executable(
        retroarch

        # Retroarch Files
        ${PROJECT_SOURCE_DIR}/configuration.c
        ${PROJECT_SOURCE_DIR}/core_backup.c
        ${PROJECT_SOURCE_DIR}/core_info.c
        ${PROJECT_SOURCE_DIR}/disk_control_interface.c
        ${PROJECT_SOURCE_DIR}/disk_index_file.c
        ${PROJECT_SOURCE_DIR}/file_path_str.c
        ${PROJECT_SOURCE_DIR}/file_path_special.c
        ${PROJECT_SOURCE_DIR}/manual_content_scan.c
        ${PROJECT_SOURCE_DIR}/msg_hash.c
        ${PROJECT_SOURCE_DIR}/playlist.c
        ${PROJECT_SOURCE_DIR}/retroarch.c
        ${PROJECT_SOURCE_DIR}/runtime_file.c
        ${PROJECT_SOURCE_DIR}/verbosity.c
        ${PROJECT_SOURCE_DIR}/audio/drivers/sdl_audio.c
        ${PROJECT_SOURCE_DIR}/cores/dynamic_dummy.c
        ${PROJECT_SOURCE_DIR}/frontend/frontend_driver.c
        ${PROJECT_SOURCE_DIR}/frontend/drivers/platform_unix.c
        ${PROJECT_SOURCE_DIR}/gfx/font_driver.c
        ${PROJECT_SOURCE_DIR}/gfx/gfx_animation.c
        ${PROJECT_SOURCE_DIR}/gfx/gfx_display.c
        ${PROJECT_SOURCE_DIR}/gfx/font_driver.c
        ${PROJECT_SOURCE_DIR}/gfx/video_coord_array.c
        ${PROJECT_SOURCE_DIR}/gfx/video_crt_switch.c
        ${PROJECT_SOURCE_DIR}/gfx/video_filter.c
        ${PROJECT_SOURCE_DIR}/gfx/common/sdl2_common.c
        ${PROJECT_SOURCE_DIR}/gfx/common/x11_common.c
        ${PROJECT_SOURCE_DIR}/gfx/drivers/sdl2_gfx.c
        ${PROJECT_SOURCE_DIR}/gfx/display_servers/dispserv_x11.c
        ${PROJECT_SOURCE_DIR}/gfx/drivers_context/gfx_null_ctx.c
        ${PROJECT_SOURCE_DIR}/gfx/drivers_font_renderer/bitmapfont.c
        ${PROJECT_SOURCE_DIR}/input/input_autodetect_builtin.c
        ${PROJECT_SOURCE_DIR}/input/input_keymaps.c
        ${PROJECT_SOURCE_DIR}/input/input_remapping.c
        ${PROJECT_SOURCE_DIR}/input/common/input_x11_common.c
        ${PROJECT_SOURCE_DIR}/input/common/linux_common.c
        ${PROJECT_SOURCE_DIR}/input/drivers/linuxraw_input.c
        ${PROJECT_SOURCE_DIR}/input/drivers/sdl_input.c
        ${PROJECT_SOURCE_DIR}/input/drivers/x11_input.c
        ${PROJECT_SOURCE_DIR}/input/drivers_joypad/sdl_joypad.c
        ${PROJECT_SOURCE_DIR}/input/drivers_joypad/linuxraw_joypad.c
        ${PROJECT_SOURCE_DIR}/intl/msg_hash_us.c
        ${PROJECT_SOURCE_DIR}/led/led_driver.c
        ${PROJECT_SOURCE_DIR}/managers/cheat_manager.c
        ${PROJECT_SOURCE_DIR}/managers/state_manager.c
        ${PROJECT_SOURCE_DIR}/tasks/task_autodetect.c
        ${PROJECT_SOURCE_DIR}/tasks/task_content.c
        ${PROJECT_SOURCE_DIR}/tasks/task_core_backup.c
        ${PROJECT_SOURCE_DIR}/tasks/task_decompress.c
        ${PROJECT_SOURCE_DIR}/tasks/task_file_transfer.c
        ${PROJECT_SOURCE_DIR}/tasks/task_image.c
        ${PROJECT_SOURCE_DIR}/tasks/task_patch.c
        ${PROJECT_SOURCE_DIR}/tasks/task_save.c
        ${PROJECT_SOURCE_DIR}/tasks/task_screenshot.c

        # Retroarch external dependencies
        ${PROJECT_SOURCE_DIR}/deps/yxml/yxml.c

        # Libretro Common
        ${PROJECT_SOURCE_DIR}/libretro-common/audio/conversion/float_to_s16.c
        ${PROJECT_SOURCE_DIR}/libretro-common/audio/conversion/s16_to_float.c
        ${PROJECT_SOURCE_DIR}/libretro-common/audio/dsp_filter.c
        ${PROJECT_SOURCE_DIR}/libretro-common/audio/resampler/audio_resampler.c
        ${PROJECT_SOURCE_DIR}/libretro-common/audio/resampler/drivers/nearest_resampler.c
        ${PROJECT_SOURCE_DIR}/libretro-common/audio/resampler/drivers/sinc_resampler.c
        ${PROJECT_SOURCE_DIR}/libretro-common/compat/compat_getopt.c
        ${PROJECT_SOURCE_DIR}/libretro-common/compat/compat_strcasestr.c
        ${PROJECT_SOURCE_DIR}/libretro-common/compat/compat_strl.c
        ${PROJECT_SOURCE_DIR}/libretro-common/dynamic/dylib.c
        ${PROJECT_SOURCE_DIR}/libretro-common/encodings/encoding_utf.c
        ${PROJECT_SOURCE_DIR}/libretro-common/encodings/encoding_crc32.c
        ${PROJECT_SOURCE_DIR}/libretro-common/features/features_cpu.c
        ${PROJECT_SOURCE_DIR}/libretro-common/file/archive_file.c
        ${PROJECT_SOURCE_DIR}/libretro-common/file/config_file.c
        ${PROJECT_SOURCE_DIR}/libretro-common/file/config_file_userdata.c
        ${PROJECT_SOURCE_DIR}/libretro-common/file/file_path.c
        ${PROJECT_SOURCE_DIR}/libretro-common/file/file_path_io.c
        ${PROJECT_SOURCE_DIR}/libretro-common/file/nbio/nbio_intf.c
        ${PROJECT_SOURCE_DIR}/libretro-common/file/nbio/nbio_stdio.c
        ${PROJECT_SOURCE_DIR}/libretro-common/file/retro_dirent.c
        ${PROJECT_SOURCE_DIR}/libretro-common/formats/image_texture.c
        ${PROJECT_SOURCE_DIR}/libretro-common/formats/image_transfer.c
        ${PROJECT_SOURCE_DIR}/libretro-common/formats/logiqx_dat/logiqx_dat.c
        ${PROJECT_SOURCE_DIR}/libretro-common/formats/json/jsonsax_full.c
        ${PROJECT_SOURCE_DIR}/libretro-common/formats/xml/rxml.c
        ${PROJECT_SOURCE_DIR}/libretro-common/hash/rhash.c
        ${PROJECT_SOURCE_DIR}/libretro-common/lists/dir_list.c
        ${PROJECT_SOURCE_DIR}/libretro-common/lists/file_list.c
        ${PROJECT_SOURCE_DIR}/libretro-common/memmap/memalign.c
        ${PROJECT_SOURCE_DIR}/libretro-common/queues/fifo_queue.c
        ${PROJECT_SOURCE_DIR}/libretro-common/queues/message_queue.c
        ${PROJECT_SOURCE_DIR}/libretro-common/streams/file_stream.c
        ${PROJECT_SOURCE_DIR}/libretro-common/streams/interface_stream.c
        ${PROJECT_SOURCE_DIR}/libretro-common/streams/memory_stream.c
        ${PROJECT_SOURCE_DIR}/libretro-common/gfx/scaler/scaler.c
        ${PROJECT_SOURCE_DIR}/libretro-common/gfx/scaler/scaler_filter.c
        ${PROJECT_SOURCE_DIR}/libretro-common/gfx/scaler/scaler_int.c
        ${PROJECT_SOURCE_DIR}/libretro-common/gfx/scaler/pixconv.c
        ${PROJECT_SOURCE_DIR}/libretro-common/lists/string_list.c
        ${PROJECT_SOURCE_DIR}/libretro-common/playlists/label_sanitization.c
        ${PROJECT_SOURCE_DIR}/libretro-common/queues/task_queue.c
        ${PROJECT_SOURCE_DIR}/libretro-common/string/stdstring.c
        ${PROJECT_SOURCE_DIR}/libretro-common/time/rtime.c
        ${PROJECT_SOURCE_DIR}/libretro-common/vfs/vfs_implementation.c
)

target_include_directories(
        retroarch
        PUBLIC
        ../..
        ${PROJECT_SOURCE_DIR}/cores
        ${PROJECT_SOURCE_DIR}/deps
        ${PROJECT_SOURCE_DIR}/deps/stb
        ${PROJECT_SOURCE_DIR}/libretro-common/include
        ${PROJECT_SOURCE_DIR}/libretro-common/include/compat
        ${CMAKE_CURRENT_LIST_DIR}/src
)

target_compile_definitions(
        retroarch
        PUBLIC

        # OS
        HAVE_UNIX

        # Misc
        HAVE_DYNAMIC
        HAVE_CONFIGFILE
        RARCH_INTERNAL
        _FILE_OFFSET_BITS=64

        # Debug
        _DEBUG
        DEBUG
        GL_DEBUG
        MBEDTLS_SSL_DEBUG_ALL
        VULKAN_DEBUG

        # Frontend
        HAVE_X11=1
        HAVE_XF86VM=1
        HAVE_SDL2=1
        _REENTRANT
)

# Video/Audio/Input Libraries
find_package(X11 REQUIRED)
find_package(XXF86VM REQUIRED)
find_package(SDL2 REQUIRED)

target_link_libraries(
        retroarch ${CMAKE_DL_LIBS} m ${X11_LIBRARIES} ${XXF86VM_LIBRARIES} ${SDL2_LIBRARIES} mame_libretro
)

target_include_directories(
        retroarch
        BEFORE PUBLIC
        ${X11_INCLUDE_DIR}
        ${XXF86VM_INCLUDE_DIR}
        ${SDL2_INCLUDE_DIRS}
        /usr/include/SDL2
)