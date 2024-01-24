# TUM EDA Lab VHDL Experiment and ETest

## Overview

This repository contains VHDL code and related content developed for the VHDL experimental course at the EDA College, Technical University of Munich (TUM). The focus is on the IDEA (International Data Encryption Algorithm) encryption design and its various implementations, showcasing different approaches and complexities.

## Contents

### 1. Direct Implementation

The `direct` directory contains a basic implementation of the IDEA encryption algorithm. Its unique feature is the comprehensive design of all eight rounds of the algorithm, fully realized in VHDL.

<img src="C:\Users\森\AppData\Roaming\Typora\typora-user-images\image-20240124210356819.png" alt="image-20240124210356819" style="zoom:50%;" />

### 2. RCS1 - Simplified Round Implementation

The `rcs1` directory offers a simplified version of the IDEA algorithm. Here, the complexity is reduced as it only involves a single round of the algorithm. The result of each round is independently stored in a register.

<img src="C:\Users\森\AppData\Roaming\Typora\typora-user-images\image-20240124210429726.png" alt="image-20240124210429726" style="zoom:67%;" />

### 3. RCS2 - State Machine Integration

In the `rcs2` directory, the implementation introduces the concept of state machines. This approach further simplifies the encryption process by streamlining the round transitions and operations.

<img src="C:\Users\森\AppData\Roaming\Typora\typora-user-images\image-20240124210503063.png" alt="image-20240124210503063" style="zoom:70%;" /><img src="C:\Users\森\AppData\Roaming\Typora\typora-user-images\image-20240124210534612.png" alt="image-20240124210534612" style="zoom:70%;" />

### 4. RCS2+ - Enhanced and Efficient Version

The `rcs2+` directory is an optimized version of `rcs2`. The key enhancement in this version is the reduced number of clock cycles required for the encryption process, leading to a more efficient and faster operation.

## Personal Contributions and ETest

The repository also includes my personal contributions and experimental tests (ETest) related to the IDEA encryption algorithm. These contributions aim to explore and expand upon the basic concepts taught in the course.