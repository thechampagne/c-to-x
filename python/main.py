import ctypes

c = ctypes.CDLL("./libsum.so")

c.sum.argtypes = [ctypes.c_int, ctypes.c_int]

print(c.sum(50,50))