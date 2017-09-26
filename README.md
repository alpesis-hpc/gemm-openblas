GEMM (OpenBLAS)
===============================================================================

GEMM codes is extracted from OpenBLAS.

-------------------------------------------------------------------------------
Getting Started
-------------------------------------------------------------------------------

NOTE: tested on Ubuntu 14.04 with x86_64.

```
# build
$ make all
# install
$ make install PREFIX=<path_to_install>


# benchmark
$ cd benchmark
$ make all
$ make clean
```

How to used

```
$ gcc xxx.c -I<path_to_include> -L<path_to_lib> -lopenblas
```

Multi-threads

```
$ export OPENBLAS_NUM_THREADS=4
$ export GOTO_NUM_THREADS=4
$ export OMP_NUM_THREADS=4 
```

-------------------------------------------------------------------------------
CPU Supported
-------------------------------------------------------------------------------


#### x86/x86-64:

- **Intel Xeon 56xx (Westmere)**: Used GotoBLAS2 Nehalem codes.
- **Intel Sandy Bridge**: Optimized Level-3 and Level-2 BLAS with AVX on x86-64.
- **Intel Haswell**: Optimized Level-3 and Level-2 BLAS with AVX2 and FMA  on x86-64.
- **AMD Bobcat**: Used GotoBLAS2 Barcelona codes.
- **AMD Bulldozer**: x86-64 ?GEMM FMA4 kernels. (Thank Werner Saar)
- **AMD PILEDRIVER**: Uses Bulldozer codes with some optimizations.
- **AMD STEAMROLLER**: Uses Bulldozer codes with some optimizations.

#### MIPS64:

- **ICT Loongson 3A**: Optimized Level-3 BLAS and the part of Level-1,2.
- **ICT Loongson 3B**: Experimental

#### ARM:

- **ARMV6**: Optimized BLAS for vfpv2 and vfpv3-d16 ( e.g. BCM2835, Cortex M0+ )
- **ARMV7**: Optimized BLAS for vfpv3-d32 ( e.g. Cortex A8, A9 and A15 )

#### ARM64:

- **ARMV8**: Experimental
- **ARM Cortex-A57**: Experimental

#### IBM zEnterprise System:

- **Z13**: Optimized Level-3 BLAS and Level-1,2 (double precision)
     

### Support OS:

- **GNU/Linux**
- **MingWin or Visual Studio(CMake)/Windows**: Please read <https://github.com/xianyi/OpenBLAS/wiki/How-to-use-OpenBLAS-in-Microsoft-Visual-Studio>.
- **Darwin/Mac OS X**: Experimental. Although GotoBLAS2 supports Darwin, we are the beginner on Mac OS X.
- **FreeBSD**: Supported by community. We didn't test the library on this OS.
- **Android**: Supported by community. Please read <https://github.com/xianyi/OpenBLAS/wiki/How-to-build-OpenBLAS-for-Android>.

