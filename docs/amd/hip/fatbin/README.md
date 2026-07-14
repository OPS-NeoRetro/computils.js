# Unofficial HIP Fatbin documentation

This is documentation on the AMD ROCm/HIP .hipbin/.hipfb file format made by me a contributors.

## What Are .hipfb and .hipbin Files?

.hipfb files or HIP Fatbin files are ROCm binaries usually found inside DLLs, EXEs, .so files and ELF files, or as separate .hipfb, .hipbin or .dat files. They contain compiled AMD ROCm code that can be executed directly by the GPU driver. AMD ROCm is extremely similar to CUDA because the HIP programming language is essentially a CUDA clone with renamed driver symbols.

Technically, they are Clang offload bundles (files with magic number `__CLANG_OFFLOAD_BUNDLE__`). They serve the same purpose as oneAPI fat binary files. Instead of containing 32-bit and 64-bit SPIR-V files like oneAPI Fatbins, AMD HIP Fatbins contain one or more ELFs each containing AMD GPU machine code/shader microcode (though "microcode" is a misnomer) for a specific line of AMD GPUs supporting ROCm. 
