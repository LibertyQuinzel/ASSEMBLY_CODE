# 8086 ASSEMBLY_CODE
The asembly code (8086) I wrote during my undergraduate Microprocessors course

This repository contains **8086 assembly programs** demonstrating arithmetic operations, input/output, array processing, and exception handling using MASM/TASM.  

Two programs—**`2d_min.asm`** and **`2d_max.asm`**—are capable of printing **2-digit numbers correctly** using the `AAM` instruction.  

All programs are compatible with **DOS or DOSBox**.

---

## Programs Overview

| File | Description | Input/Data | Output | 2-Digit Friendly | Processor/Environment |
|------|-------------|------------|--------|-----------------|---------------------|
| add.asm | Add two numbers (`A + B`) | A=7FFFH, B=3 | AX (not displayed) | No | 8086 |
| dec_add.asm | Decrement and add (`A + B`) | A=0, B=0 | AX | No | 8086 |
| read_display.asm | Read a character from keyboard and display | Keyboard input | Character | No | 8086 |
| disp_str.asm | Display two strings ("CSE", "2023") | Strings | Strings | No | 8086 |
| 1d_sum.asm | Sum of two 1-digit numbers | User input 1-digit | Character (sum) | No (fails for sum >9) | 8086 |
| div_zero_exc.asm | Divide by zero exception demo | N/A | String: "Divide by zero error" | No | 8086 |
| ovfl_exc.asm | Overflow exception demo | N/A | String: "Overflow Error" | No | 8086 |
| 2d_min.asm | Minimum of N numbers in an array | Array: 13,24,90,42,77 | Number | ✅ Yes | 8086 |
| 2d_max.asm | Maximum of N numbers in an array | Array: 31,54,21,68 | Number | ✅ Yes | 8086 |
| 1d_even.asm | Count even numbers in a list | Array: 47,63,18,75,39 | Number | No (1-digit only) | 8086 |
| 1d_odd.asm | Count odd numbers in a list | Array: 26,84,53,10,72 | Number | No (1-digit only) | 8086 |

---

## Detailed Descriptions

### **add.asm**
Adds two numbers A and B. Stores the sum in AX (not displayed). Demonstrates basic arithmetic in 8086.

### **dec_add.asm**
Decrements A and B by 1 and adds them. Result stored in AX (not displayed). Demonstrates decrement and addition.

### **read_display.asm**
Reads a character from keyboard (INT 21H, function 01H) and prints it (INT 21H, function 02H). Demonstrates basic I/O.

### **disp_str.asm**
Displays two strings ("CSE" and "2023") using DOS string printing (INT 21H, function 09H). Demonstrates string output.

### **1d_sum.asm**
Prompts user for two 1-digit numbers and prints the sum. ASCII conversion via `'0'`. Only handles sums ≤9 correctly.

### **div_zero_exc.asm**
Demonstrates divide-by-zero exception. Prints `"Divide by zero error"` when division by zero occurs. Shows exception handling in 8086.

### **ovfl_exc.asm**
Demonstrates overflow detection. Prints `"Overflow Error"` if a 16-bit addition exceeds capacity. Uses `JNO` and `INTO` instructions.

### **2d_min.asm**
Finds the minimum in an array using 8086 looping and comparisons. Converts result to ASCII with `AAM` to print 2-digit numbers.

### **2d_max.asm**
Finds the maximum in an array using 8086 looping and comparisons. Converts result to ASCII with `AAM` to print 2-digit numbers.

### **1d_even.asm**
Counts even numbers in an array. Uses bitwise AND to check parity. Adds `'0'` to display count. Only prints single-digit counts correctly.

### **1d_odd.asm**
Counts odd numbers in an array. Uses bitwise AND to check parity. Adds `'0'` to display count. Only prints single-digit counts correctly.

---
