# AES-128 FPGA System

## Overview

This project implements a complete AES-128 Encryption and Decryption System on FPGA using Verilog HDL.

The system performs:
- AES Encryption
- AES Decryption
- Inverse AES transformations
- FPGA-based hardware verification
- Vivado ILA debugging and visualization

The project was successfully synthesized, implemented, and tested on FPGA using Xilinx Vivado. All intermediate AES stages were monitored using Vivado Integrated Logic Analyzer (ILA).

The system successfully encrypts plaintext into ciphertext and decrypts it back to the original plaintext.

---

# Features

- AES-128 Encryption
- AES-128 Decryption
- SubBytes and InvSubBytes
- ShiftRows and InvShiftRows
- MixColumns and InvMixColumns
- S-Box and Inverse S-Box memory implementation
- FPGA implementation using Verilog HDL
- Vivado ILA hardware debugging
- Complete datapath visualization
- End-to-end encryption and decryption verification
- Simulation and FPGA validation

---

# AES Architecture

## Encryption Flow

Plaintext  
↓  
AddRoundKey  
↓  
SubBytes  
↓  
ShiftRows  
↓  
MixColumns  
↓  
AddRoundKey  
↓  
Ciphertext  

---

## Decryption Flow

Ciphertext  
↓  
AddRoundKey  
↓  
InvMixColumns  
↓  
InvShiftRows  
↓  
InvSubBytes  
↓  
AddRoundKey  
↓  
Recovered Plaintext  

---

# Project Structure

```text
aes128-fpga-system/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── documentation/
│   ├── project_overview.md
│   ├── aes_algorithm.md
│   ├── fpga_implementation.md
│   ├── debugging_and_ila.md
│   └── team_contributions.md
│
├── rtl/
│   │
│   ├── encryption/
│   │   ├── aes_encrypt_round.v
│   │   ├── subbytes.v
│   │   ├── shiftrows.v
│   │   ├── mixcolumns.v
│   │   ├── sbox.v
│   │   └── sbox.mem
│   │
│   ├── decryption/
│   │   ├── aes_decrypt_round.v
│   │   ├── inv_subbytes.v
│   │   ├── inv_shiftrows.v
│   │   ├── inv_mixcolumns.v
│   │   ├── inv_sbox.v
│   │   └── inv_sbox.mem
│   │
│   └── system/
│       └── aes_system_top.v
│
├── testbench/
│   ├── encryption/
│   │   └── aes_encrypt_tb.v
│   │
│   ├── decryption/
│   │   └── aes_decrypt_tb.v
│   │
│   └── system/
│       └── aes_system_top_tb.v
│
├── simulations/
│   │
│   ├── encryption/
│   ├── decryption/
│   └── full_system/
│
├── fpga/
│   ├── constraints/
│   │   └── arty_a7.xdc
│   │
│   ├── ila/
│   └── vivado_project/
│
├── images/
│
└── results/
```

---

# FPGA Implementation

The AES system was synthesized, implemented, and verified on FPGA using Xilinx Vivado.

Vivado Integrated Logic Analyzer (ILA) was used to monitor:
- Plaintext
- Ciphertext
- Encryption stages
- Decryption stages
- Recovered plaintext

This allowed real-time hardware-level debugging and datapath verification.

---

# Vivado ILA Debugging

The following AES stages were monitored using Vivado ILA:

## Encryption Stages
- Plaintext
- SubBytes Output
- ShiftRows Output
- MixColumns Output
- Ciphertext

## Decryption Stages
- InvMixColumns Output
- InvShiftRows Output
- InvSubBytes Output
- Recovered Plaintext

---

# Simulation Results

## Input Plaintext

```text
HELLO WORLD
```

## Encrypted Ciphertext

```text
BC2AAB09E408011F7021CB8E3C862F8A
```

## Recovered Plaintext

```text
HELLO WORLD
```

---

# FPGA Results

The complete AES datapath was successfully verified on FPGA.

The FPGA implementation successfully demonstrated:

```text
HELLO WORLD
↓
AES Encryption
↓
Ciphertext
↓
AES Decryption
↓
HELLO WORLD
```

using real hardware execution and ILA verification.

---

# Team Contributions

## Kaushal Naik
Implemented MixColumns and InvMixColumns modules.

## Dipiksha Parab
Implemented ShiftRows and InvShiftRows modules.

## Vedam Panjikar
Implemented SubBytes, S-Box and lookup-table modules.

## Jaydev Rajpurohit
Implemented InvSubBytes, inverse S-Box, key handling and testing support.

## Jatin (Team Lead)
Handled system integration, debugging, FPGA implementation, Vivado ILA integration, verification and final testing.

---

# Future Improvements

- Full multi-round AES-128 implementation
- UART-based plaintext input
- FSM/pipelined architecture
- BRAM optimization
- Real-time FPGA encryption display
- Hardware performance optimization

---

# Tools & Technologies

- Verilog HDL
- Xilinx Vivado
- Vivado ILA
- FPGA Hardware Implementation
- AES-128 Cryptographic Algorithm

---

# Authors

This project was developed as a collaborative FPGA AES-128 implementation project by:

- [Jatin](https://github.com/Conolas)
- [Kaushal Naik](https://github.com/KrYPt0nYtE)
- [Dipiksha Parab](https://github.com/username)
- [Vedam Panjikar](https://github.com/vnull23)
- [Jaydev Rajpurohit](https://github.com/jaydev-rajpurohit)
---

# License

This project is intended for educational and academic purposes.