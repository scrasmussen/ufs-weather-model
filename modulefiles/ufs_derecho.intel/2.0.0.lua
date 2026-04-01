help([[
loads UFS Model prerequisites for NOAA Parallelworks/Intel
]])

setenv("LMOD_TMOD_FIND_FIRST","yes")
prepend_path("MODULEPATH", "/glade/work/epicufsrt/contrib/spack-stack/derecho/spack-stack-2.0.0/envs/ue-oneapi-2025.2.1/modules/Core/")

unload("ncarcompilers")
stack_intel_ver=os.getenv("stack_intel_ver") or "2025.2.1"
load(pathJoin("stack-intel-oneapi-compilers", stack_intel_ver))

stack_cray_mpich_ver=os.getenv("stack-cray-mpich_ver") or "8.1.32"
load(pathJoin("stack-cray-mpich", stack_cray_mpich_ver))

cmake_ver=os.getenv("cmake_ver") or "3.31.8"
load(pathJoin("cmake", cmake_ver))

stack_python_ver=os.getenv("stack_python_ver") or "3.11.11"
load(pathJoin("python", stack_python_ver))

-- load("ufs_common") -- this wasn't loading when this module file was developed
load("jasper/4.2.4")
load("libpng/1.6.37")
load("hdf5/1.14.5")
load("netcdf-c/4.9.2")
load("netcdf-fortran/4.6.1")
load("parallelio/2.6.2")
load("esmf/8.8.0")
load("fms/2024.02-gfs-constants")
load("bacio/2.6.0")
load("crtm/3.1.2")
load("g2/3.5.1")
load("g2tmpl/1.17.0")
load("ip/5.4.0")
load("w3emc/2.11.0")
load("gftl-shared/1.11.0")
load("mapl/2.53.4-esmf-8.8.0")
load("scotch/7.0.10")

nccmp_ver=os.getenv("nccmp_ver") or "1.9.0.1"
load(pathJoin("nccmp", nccmp_ver))

setenv("CC", "mpicc")
setenv("CXX", "mpicxx")
setenv("FC", "mpif90")
setenv("I_MPI_CC", "icx")
setenv("I_MPI_CXX", "icpx")
setenv("I_MPI_F90", "ifort")

setenv("CMAKE_Platform", "derecho.intel")
whatis("Description: UFS build environment")
