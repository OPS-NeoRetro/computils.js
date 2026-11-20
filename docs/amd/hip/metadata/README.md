# Unofficial HIP Object Code Metadata Documentation

## Details

HIP object code metadata can appear as a dedicated data section in AMDGPU/HIP/ROCm ELF files or a separate file with .dat or .bin extension or with no extension. They act as precompiled headers or reflective metadata in a format that AMD's GPU drivers and ROCm toolchain can parse so multiple shaders using the same graphics API from one application can run correctly without conflicts.

Technically, they are MessagePack (.msgpack) files or in MessagePack format - the same format as Flax models. Think of it as binary JSON. They are usually serialized objects with a `solutions` or `amdhsa.kernels` header.

In assembly files, they are written in YAML. One such example is this:

```
# taken from https://github.com/tinygrad/tinygrad/blob/89f93e9f038d39a49603fdd4bce97e319d7876eb/extra/gemm/amd_seb/kernel8_batched_gmem.s#L2376-L2423
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.ident	"clang version 19.0.0git (git@github.amd.com:Compute-Mirrors/llvm-project b3dbdf4f03718d63a3292f784216fddb3e73d521)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 8320
    .kernarg_segment_align: 8
    .kernarg_segment_size: 24
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 128
    .name:           kernel
    .private_segment_fixed_size: 0
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         kernel.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     216
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 0
amdhsa.target:   amdgcn-amd-amdhsa--gfx1100
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
```

> [!WARNING]
> 
> DO NOT MODIFY .DAT FILES WITH EXTREMELY GARBLED TEXT OR A TON OF NULLS AMD FOREIGN CHARACTERS!

## Additional links

- [Sample files](samples/)
- [MessagePack file and stream format documentation](msgpack.md)
