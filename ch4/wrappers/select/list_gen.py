# Test Fortran routines from Python
import list_generator

a = list_generator.random_module.random_real(0,1)
print(a)

b = [0]*10
b=list_generator.list_generator_module.random_list(5)

print(b)
