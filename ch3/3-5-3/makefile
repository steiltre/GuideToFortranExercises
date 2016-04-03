sort : sort_3.o sort_module.mod swap_module.mod sort_3_module.mod
	gfortran -o sort sort_module.mod swap_module.mod sort_3_module.mod sort_3.o

sort_3.o : sort_3.f90 sort_3_module.mod
	gfortran -c sort_3.f90 sort_module.f90 swap_module.f90 sort_3_module.f90

sort_module.mod : sort_module.f90
	gfortran -c sort_module.f90

swap_module.mod : swap_module.f90
	gfortran -c swap_module.f90

sort_3_module.mod : sort_3_module.f90
	gfortran -c sort_3_module.f90 sort_module.f90 swap_module.f90
