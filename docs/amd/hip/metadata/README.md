# Unofficial HIP Object Code Metadata Documentation

## Details

HIP object code metadata can appear as a dedicated data section in AMDGPU/HIP/ROCm ELF files or a separate .dat or .bin file. They act as precompiled headers or reflective metadata in a format that AMD's GPU drivers and ROCm toolchain can parse so multiple shaders using the same graphics API from one application can run correctly without conflicts.

Technically, they are MessagePack (.msgpack) files or in MessagePack format, the same format as Flax models. Think of it as binary JSON. They are usually serialized objects named `solutions` or `amdhsa.kernels`.

## *DISCLAIMER!!!*
## *DO NOT MODIFY .DAT FILES WITH EXTREMELY GARBLED TEXT OR A TON OF NULLS AMD FOREIGN CHARACTERS!!!*

## Additional links

- [Sample files](samples/)
