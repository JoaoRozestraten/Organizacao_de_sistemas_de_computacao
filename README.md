# Computer Systems Organization (Organização de Sistemas de Computação)

This repository contains practical laboratory exercises and assignments for the **Computer Systems Organization** course. The projects are implemented in **x86 Assembly language** (16-bit DOS), focusing on low-level programming concepts, memory management, and system interruptions.

## 📁 Repository Structure

The repository is organized into directories representing different laboratory sessions, each containing specific Assembly tasks:

- **`Lab01/`**: Introductory Assembly programs, including basic string manipulation and standard I/O using DOS interrupts (`int 21h`).
- **`Lab02/`**: Further exploration of Assembly instructions and logic.
- **`Lab03/`**: Intermediate Assembly exercises.
- **`Lab05/`**: Advanced laboratory activities involving multiple assembly files.
- **`A_Teste/`**: Test environment and experimental code snippets.

## 🛠️ Technologies & Tools

- **Language:** x86 Assembly (16-bit)
- **Environment:** DOS (Designed to be run via an emulator like DOSBox)
- **Assembler:** MASM / TASM (compatible syntax)

## 🚀 How to Run

To assemble and execute these programs, you will need an x86 assembler (like TASM or MASM) and a DOS emulator (like DOSBox) if you are on a modern 64-bit operating system.

1. **Install DOSBox**: Download and install [DOSBox](https://www.dosbox.com/).
2. **Setup Assembler**: Ensure you have TASM/MASM executables inside your mounted DOSBox directory.
3. **Mount Directory**: Open DOSBox and mount this repository directory:
   ```cmd
   mount c c:\path\to\repository
   c:
   ```
4. **Assemble and Link**: Navigate to the desired Lab folder and assemble the `.asm` file. For example, using TASM:
   ```cmd
   cd Lab01
   tasm ATIV1_1.ASM
   tlink ATIV1_1.OBJ
   ```
5. **Execute**: Run the generated executable:
   ```cmd
   ATIV1_1.EXE
   ```

## 📚 Concepts Covered

Throughout these exercises, several core concepts of computer architecture are explored:
- Data segments (`.data`), code segments (`.code`), and stack setup.
- General-purpose registers (`AX`, `BX`, `CX`, `DX`).
- Moving data (`MOV`, `LEA`).
- DOS Interrupts (e.g., `INT 21H` for printing strings `AH=09H` or exiting programs `AH=4CH`).
