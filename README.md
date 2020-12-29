# gsrc
A solution for installing and using an older version of GCC in recent version of Linux with no root privilege. Most of the PCs in our lab use a newer version of GCC which is incompatible when building/compiling most of existing projects like Flownet2, PyTorch DCNv2, etc. Hence, an older GCC version is required. Since we do not have root privilege, here is a solution to follow in order to install a custom GCC version locally without disturbing the original system.

This reposiotry uses the [GSRC version 2014.10.11](https://ftp.gnu.org/gnu/gsrc/) and contains the patch file for bug fixed related changes in GCC.

## Requirements
- C++11

## Steps for using older GCC without root privilege
1. `$ cd $PATH_TO_LOCAL_REPO`
2. `$ git clone https://github.com/proy3/gsrc`
3. `$ cd gsrc/`
4. `$ ./bootstrap`
5. `$ ./configure --prefix=$PATH_TO_LOCAL_GCC`
6. `$ . ./setup.sh`
7. Put `source $PATH_TO_GSRC/setup.sh` in your `.bashrc`
8. `$ make -C gnu/gcc` (this should end with errors)
9. `$ cp patch_gcc_bug_fixed.patch gnu/gcc/work`
10. `$ cd gnu/gcc/work/`
11. `$ patch -s -p0 < patch_gcc_bug_fixed.patch`
12. `$ cd ../../../`
13. `$ make -C gnu/gcc`
14. `$ make -C gnu/gcc install`
15. `$ conda install libgcc`
16. `$ mv $PATH_TO_LOCAL_GCC/lib64/libstdc++.so.6`
17. `$ ln -s $PATH_TO_LOCAL_ANACONDA/lib/libstdc++.so.6.0.24 $PATH_TO_LOCAL_GCC/lib64/libstdc++.so.6` (replace 24 by a higher value if it exists)

If all went well, you should be able to see `gcc version 4.9.1 (GCC)` by doing `gcc -v` in the terminal.
