# Unofficial HIP Fatbin documentation

This is documentation on the AMD ROCm/HIP .hipbin/.hipfb file format made by me a contributors.

## What Are .hipfb and .hipbin Files?

.hipfb files or HIP Fatbin files are ROCm fat multi-GPU-generation binaries usually found inside DLLs, EXEs, .so files and ELF files, or as separate .hipbin, .hipfb, .co or .dat files. They contain compiled AMD ROCm code that can be executed directly by the GPU. AMD ROCm is extremely similar to CUDA because the HIP programming language is essentially a CUDA clone with renamed driver symbols.

Technically, they are Clang offload bundles (files with magic number `__CLANG_OFFLOAD_BUNDLE__`). They serve the same purpose as oneAPI fat binary files. Instead of containing 32-bit and 64-bit SPIR-V or LLVM IR files like oneAPI Fatbins, AMD HIP Fatbins contain one or more ELFs each containing AMD GPU machine code/shader microcode (though "microcode" is a misnomer) for a specific line of AMD GPUs supporting ROCm. 

## Additional Links

- [AMD Radeon RX 6800/6800 XT/6850 XT/6900/6900 XT/6950 XT `__CLANG_OFFLOAD_BUNDLE__` sample files](../../gfx1030/samples/__CLANG_OFFLOAD_BUNDLE__)
- [Multi-target AMD `__CLANG_OFFLOAD_BUNDLE__` sample files](samples/)
