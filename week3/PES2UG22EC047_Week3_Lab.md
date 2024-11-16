# Program 1: 
### Statement: 
Write an assembly program to check if a number is a 2 out of 5 number

### Name of file:
2outof5.s

### Observation - Explanation
- <Write 3 statements explaining what the assembly program is doing>

### Observation - Single Cycle
- **Cycles:**38 
- **Frequency:**6.90Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** <Enter the info from RIPES> 
- **Frequency:** <Enter the info from RIPES>
- **CPI:** <Enter the info from RIPES>
- **IPC:** <Enter the info from RIPES>

### Register Mapping
- **<Register Number Used>:** <Value Stored>
for single cycle 
 x5                           0x00000000
 x10                          0x10000000
 x11                          0x00000000
 x12                          0x00000001 
 x13                          0x00000000
 x20                          0x00000001
 x25                          0x00000002
 x26                          0x00000002
for 5 stage 
### Memory Mapping
- **<Register Number Used>:** <Value stored>
for single cycle 
0x10000000                    0x00000012
for 5 stage 

### Snapshot
![[2outof5.png]]