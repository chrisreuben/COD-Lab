.data
m1:.dword 0x8000000081234567
m2:.dword 0x8000001000000000
m3:.dword 0x000000000000000
.text 
la x10,m1
lw x11,0(x10)
lw x12,4(x10)
la x9,m2
lw x14,0(x9)
lw x15,4(x9)
add x13,x11,x14
add x16,x12,x15
la x10,m3
sw x13,0(x10)
sw x16,4(x10)
