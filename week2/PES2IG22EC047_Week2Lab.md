# Program 1: 
### Statement:
 Write an Assembly Program for addition of N words

### Name of file:
2halfwords.s.s

### Observation - Explanation
- <Write 3 statements explaining what the assembly program is doing>

### Observation - Single Cycle
- **Cycles:** 6 
- **Frequency:** 852.51 mHz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:**11
- **Frequency:**1.65 Hz
-**CPI:**1.83
- **IPC:** 0.545

### Register  Mapping
- **<Register Number Used>:** <Value Stored>
 for Single Cycle 
  x10                        0x00000000
  x11                        0x00000517
  x12                        0x00001111
  x13                        0x00000000
for 5 stage 
  x10                        0x10000000
  x11                        0x00001234
  x12                        0x00001111
  x13                        0x00000000
### Memory  Mapping
- **<Register Number Used>:** <Value stored>
 for Single Cycle 
 0x10000004                    0x00000000
 0x10000000                    0x11111234
for 5 stage 
  0x10000004                  0x00002345
  0x10000000                  0x11112345
### Snapshot
![Screenshot of RIPES window](<program1.png>)


### Statement:
 Write an Assembly Program for addition of N bytes

### Name of file:
add2bytes.s

### Observation - Explanation
- <Write 3 statements explaining what the assembly program is doing>

### Observation - Single Cycle
- **Cycles:** 6 
- **Frequency:**1.32Hz
- **CPI:** 1
- **IPC:**1

### Observation - 5 Stage
- **Cycles:** 11 
- **Frequency:**552.18mHz
- **CPI:** 1.83
- **IPC:** 0.545

### Memory Mapping
- **<Register Number Used>:** <Value Stored>
 for Single cycle    
0x10000004                  0x00000000
   0x10000000                  0x00fefd01
 for 5 stage 
0x10000004                   0x00000000
0x10000000                   0x00fefd01

### Register Mapping
- **<Register Number Used>:** <Value stored>
   for Sincgle cycle
   x10                         0x10000000
   x11                         0x00000001
   x12                         0xfffffffd
   x13                         0xfffffffe
for 5 Stage 
   x10                         0x10000000
   x11                         0x00000001
   x12                         0xfffffffd
   x13                         0xfffffffe
### Snapshot
![Screenshot of RIPES window](<program1.png>)
