{
    files = {
        "src/nes_apu.c"
    },
    values = {
        "/usr/bin/gcc",
        {
            "-m64",
            "-fvisibility=hidden",
            "-Wall",
            "-Wextra",
            "-O3",
            "-std=c11",
            "-Iinc",
            "-Iport",
            "-D_REENTRANT",
            "-isystem",
            "/usr/include/SDL2",
            "-DNDEBUG"
        }
    },
    depfiles_gcc = "nes_apu.o: src/nes_apu.c inc/nes.h port/nes_port.h port/nes_conf.h  inc/nes_rom.h inc/nes_cpu.h inc/nes_ppu.h port/nes_conf.h inc/nes_apu.h  inc/nes_mapper.h\
"
}