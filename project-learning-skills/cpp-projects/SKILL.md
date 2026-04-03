# C/C++ Project-Based Learning Skill

Guide for building real-world C/C++ projects from scratch. Curated from practical-tutorials/project-based-learning.

## 🎯 Trigger Phrases
- "Build a C project"
- "C++ tutorial project"
- "Systems programming project"
- "Learn C by building"
- "Low-level programming"

## 📚 Project Categories

### 🎓 Compilers & Interpreters

```
Project: Build Your Own Lisp
Difficulty: Intermediate
Time: 10-15 hours
Link: http://www.buildyourownlisp.com/

What you'll build:
- Parser (MPC)
- AST evaluator
- REPL
- Standard library
- GC (optional)

Skills learned:
- Parsing
- Recursion
- Memory management
- Function pointers
```

```
Project: Write a C Compiler
Difficulty: Expert
Time: 40-60 hours
Link: 10-part tutorial series

What you'll build:
- Lexer
- Parser
- AST
- Code generation (x86)
- Local/global variables
- Conditionals
- Loops
- Functions

Parts:
1. Integers, Lexing, CodeGen
2. Unary Operators
3. Binary Operators
4. More Binary Operators
5. Local Variables
6. Conditionals
7. Compound Statements
8. Loops
9. Functions
10. Global Variables

Skills learned:
- Compiler theory
- Assembly generation
- Register allocation
- Symbol tables
```

```
Project: Simple Interpreter
Difficulty: Advanced
Time: 15-20 hours
Link: https://ruslanspivak.com/lsbasi-part1/

What you'll build:
- Lexer (tokenizer)
- Parser
- AST interpreter
- Variables
- Functions
- Nested scopes

Skills learned:
- Interpreter design
- Tokenization
- Parsing algorithms
- Tree walking
```

```
Project: Compiler with LLVM
Difficulty: Expert
Time: 30-40 hours
Link: https://llvm.org/docs/tutorial/#kaleidoscope-implementing-a-language-with-llvm

What you'll build:
- LLVM IR generation
- JIT compilation
- Optimizations
- Debug info

Skills learned:
- LLVM framework
- IR generation
- Optimization passes
```

```
Project: JIT Compiler
Difficulty: Advanced
Time: 6-8 hours
Link: 2-part tutorial series

What you'll build:
- x86-64 code generation
- Runtime compilation
- Function execution
- Assembly emission

Skills learned:
- x86-64 assembly
- Memory execution
- Dynamic code generation
```

### 📝 Text Editors & Tools

```
Project: Text Editor (Kilo)
Difficulty: Intermediate
Time: 4-6 hours
Link: http://viewsourcecode.org/snaptoken/kilo/

What you'll build:
- Terminal UI
- Text buffer
- Syntax highlighting
- File I/O
- Search

Skills learned:
- Terminal control
- VT100 escape codes
- Buffer management
- Regular expressions
```

```
Project: Hash Table in C
Difficulty: Intermediate
Time: 3-4 hours
Link: https://github.com/jamesroutley/write-a-hash-table

What you'll build:
- Hash function
- Collision resolution
- Dynamic resizing
- Insert/delete/lookup

Skills learned:
- Hashing algorithms
- Dynamic arrays
- Memory management
```

### 🗄️ Databases & Storage

```
Project: Simple Database (SQLite clone)
Difficulty: Advanced
Time: 15-20 hours
Link: https://cstack.github.io/db_tutorial/

What you'll build:
- REPL
- SQL parser
- B-tree storage
- Pager
- Cursor
- Transactions (MVCC)

Skills learned:
- B-trees
- Paging systems
- SQL parsing
- Concurrency control
```

```
Project: Key-Value Store
Difficulty: Advanced
Time: 20-30 hours
Link: http://codecapsule.com/2012/11/07/ikvs-implementing-a-key-value-store-table-of-contents/

What you'll build:
- Storage engine
- LSM tree
- SSTables
- Compression
- ACID properties

Skills learned:
- Storage systems
- LSM trees
- Write-ahead logging
```

```
Project: Build Your Own Redis
Difficulty: Advanced
Time: 15-20 hours
Link: https://build-your-own.org/redis/

What you'll build:
- Event loop
- Protocol parser
- Data structures
- Persistence
- Replication (optional)

Skills learned:
- Event-driven programming
- Protocol design
- Data structures
- Network programming
```

### 💻 Operating Systems

```
Project: OS from Scratch
Difficulty: Expert
Time: 60-80 hours
Link: https://github.com/tuhdo/os01

What you'll build:
- Bootloader
- Protected mode
- Memory management
- Processes
- System calls
- File system

Skills learned:
- x86 architecture
- Assembly
- Kernel development
- Virtual memory
```

```
Project: OS Tutorial
Difficulty: Expert
Time: 40-60 hours
Link: https://github.com/cfenollosa/os-tutorial

What you'll build:
- Boot sector
- Kernel
- Drivers
- File system
- Shell

Skills learned:
- Low-level programming
- Hardware interfacing
- Kernel architecture
```

```
Project: Linux Kernel
Difficulty: Expert
Time: 100+ hours
Link: https://david942j.blogspot.com/2018/10/note-learning-kvm-implement-your-own.html

What you'll build:
- KVM integration
- Virtual CPU
- Memory virtualization
- Device emulation

Skills learned:
- KVM API
- Virtualization
- Hardware abstraction
```

```
Project: Write a Kernel
Difficulty: Expert
Time: 20-30 hours
Link: http://arjunsreedharan.org/post/82710718100/kernel-101-lets-write-a-kernel

What you'll build:
- Bootloader
- Kernel entry
- VGA driver
- Keyboard input
- Basic shell
```

```
Project: Bootloader in C
Difficulty: Advanced
Time: 4-6 hours
Link: http://3zanders.co.uk/2017/10/13/writing-a-bootloader/

What you'll build:
- BIOS calls
- Disk loading
- Protected mode switch
- C kernel loading
```

### 🎮 Emulators

```
Project: CHIP-8 Emulator
Difficulty: Intermediate
Time: 6-8 hours
Link: https://austinmorlan.com/posts/chip8_emulator/

What you'll build:
- CPU emulation
- Display (64x32)
- Input (16 keys)
- Sound timer
- 35 opcodes

Skills learned:
- Emulation basics
- Bit manipulation
- Graphics programming
```

```
Project: NES Game (C)
Difficulty: Advanced
Time: 30-40 hours
Link: https://nesdoug.com/

What you'll build:
- 6502 assembly
- PPU programming
- Controller input
- Sound engine
- Complete game

Skills learned:
- 6502 assembly
- Retro hardware
- Optimization
```

```
Project: Virtual Machine (LC-3)
Difficulty: Intermediate
Time: 4-6 hours
Link: https://justinmeiners.github.io/lc3-vm/

What you'll build:
- LC-3 CPU
- Memory (65536 locations)
- 15 opcodes
- Trap routines
- Keyboard input

Skills learned:
- VM architecture
- Instruction encoding
- Memory mapping
```

### 🎨 Graphics & Games

```
Project: Tiny Renderer
Difficulty: Advanced
Time: 10-15 hours
Link: https://github.com/ssloy/tinyrenderer/wiki

What you'll build:
- Software rasterizer
- 3D rendering
- Z-buffer
- Texture mapping
- Shaders

Skills learned:
- Linear algebra
- Rendering pipeline
- Graphics algorithms
```

```
Project: Ray Tracer (256 lines)
Difficulty: Intermediate
Time: 4-6 hours
Link: https://github.com/ssloy/tinyraytracer/wiki

What you'll build:
- Ray-sphere intersection
- Reflections
- Refractions
- Shadows
- Global illumination basics

Skills learned:
- Vector math
- Ray tracing
- Rendering equation
```

```
Project: Old-School FPS
Difficulty: Advanced
Time: 8-10 hours
Link: https://github.com/ssloy/tinyraycaster/wiki

What you'll build:
- Ray casting engine
- Textured walls
- Sprite rendering
- Floor/ceiling
- Basic AI

Skills learned:
- Ray casting
- 2.5D graphics
- Game loop
```

```
Project: Space Invaders
Difficulty: Intermediate
Time: 8-10 hours
Link: 5-part tutorial series

What you'll build:
- Game state
- Entity system
- Collision detection
- Graphics
- Sound
```

```
Project: Tetris Clone
Difficulty: Intermediate
Time: 6-8 hours
Link: http://javilop.com/gamedev/tetris-tutorial-in-c-platform-independent-focused-in-game-logic-for-beginners/

What you'll build:
- Game board
- Piece rotation
- Line clearing
- Scoring
- Game loop
```

### 🧮 Data Structures & Algorithms

```
Project: Linux Container (500 LOC)
Difficulty: Advanced
Time: 3-4 hours
Link: https://blog.lizzie.io/linux-containers-in-500-loc.html

What you'll build:
- Namespaces
- cgroups
- chroot
- Container runtime

Skills learned:
- Linux kernel
- System calls
- Resource management
```

```
Project: Memory Allocator
Difficulty: Intermediate
Time: 2-3 hours
Link: https://arjunsreedharan.org/post/148675821737/memory-allocators-101-write-a-simple-memory

What you'll build:
- malloc/free
- Memory pools
- Block management
- Coalescing
```

```
Project: Shell in C
Difficulty: Intermediate
Time: 3-4 hours
Link: https://brennan.io/2015/01/16/write-a-shell-in-c/

What you'll build:
- Command parsing
- Process forking
- Pipe support
- Redirection
- Built-in commands
```

### 🌐 Network Programming

```
Project: TCP/IP Stack
Difficulty: Expert
Time: 30-40 hours
Link: 5-part tutorial series

What you'll build:
- Ethernet layer
- ARP
- IPv4
- ICMP
- TCP basics
- Handshake
- Data flow
- Retransmission

Parts:
1. Ethernet & ARP
2. IPv4 & ICMPv4
3. TCP Basics & Handshake
4. TCP Data Flow & Socket API
5. TCP Retransmission

Skills learned:
- Network protocols
- Raw sockets
- Packet crafting
```

```
Project: MQTT Broker
Difficulty: Advanced
Time: 15-20 hours
Link: 7-part tutorial series

What you'll build:
- MQTT protocol
- Networking layer
- Server architecture
- Topic management
- Message routing
- Multithreading
```

```
Project: Concurrent Servers
Difficulty: Advanced
Time: 12-15 hours
Link: 6-part tutorial series

What you'll build:
- Thread-per-connection
- Event-driven
- libuv
- Redis case study
- Async/await
```

### 🐛 Debugging Tools

```
Project: Linux Debugger
Difficulty: Advanced
Time: 20-30 hours
Link: 10-part tutorial series

What you'll build:
- Breakpoint setting
- Register reading
- Memory inspection
- ELF/DWARF parsing
- Signal handling
- Source-level stepping
- Stack unwinding
- Variable inspection

Skills learned:
- ptrace
- DWARF format
- Symbol tables
- Debug info
```

### 🏗️ Build Tools & Systems

```
Project: Live Code Reloader
Difficulty: Advanced
Time: 4-6 hours
Link: http://howistart.org/posts/cpp/1/index.html

What you'll build:
- File watcher
- Dynamic loading
- Hot reloading
- C++ integration
```

```
Project: Meta Crush Saga
Difficulty: Expert
Time: 8-10 hours
Link: https://jguegant.github.io//jguegant.github.io/blogs/tech/meta-crush-saga.html

What you'll build:
- Compile-time game
- C++17 templates
- constexpr evaluation
- Metaprogramming
```

## 🚀 Quick Start Workflow

### 1. Compiler Setup
```bash
# GCC (Linux)
sudo apt-get install build-essential

# Clang (macOS)
xcode-select --install

# Verify
gcc --version
clang --version
```

### 2. Project Structure
```
myproject/
├── src/
│   ├── main.c
│   ├── utils.c
│   └── utils.h
├── include/
│   └── myproject.h
├── tests/
│   └── test_main.c
├── build/
├── Makefile
└── README.md
```

### 3. Makefile Template
```makefile
CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -O2
LDFLAGS =

SRCDIR = src
OBJDIR = build
BINDIR = bin

SOURCES = $(wildcard $(SRCDIR)/*.c)
OBJECTS = $(patsubst $(SRCDIR)/%.c,$(OBJDIR)/%.o,$(SOURCES))
TARGET = $(BINDIR)/myprogram

.PHONY: all clean test

all: $(TARGET)

$(TARGET): $(OBJECTS)
	@mkdir -p $(BINDIR)
	$(CC) $(LDFLAGS) -o $@ $^

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf $(OBJDIR) $(BINDIR)

test: $(TARGET)
	./$(TARGET) --test
```

### 4. Essential Libraries
```c
// Standard C
#include <stdio.h>      // I/O
#include <stdlib.h>     // Memory, conversions
#include <string.h>     // String operations
#include <stdint.h>     // Fixed-width integers
#include <stdbool.h>    // Boolean type
#include <assert.h>     // Assertions
#include <errno.h>      // Error numbers

// POSIX
#include <unistd.h>     // UNIX standard
#include <fcntl.h>      // File control
#include <sys/mman.h>   // Memory mapping
#include <sys/wait.h>   // Process control
#include <signal.h>     // Signal handling
#include <pthread.h>    // Threads
#include <arpa/inet.h>  // Network
#include <sys/socket.h> // Sockets

// Common libraries
// - libcurl (HTTP)
// - OpenSSL (crypto)
// - SDL2 (graphics)
// - SQLite (database)
// - jansson (JSON)
// - libuv (async I/O)
```

## 🎯 Learning Path

### Beginner C (2-3 weeks)
1. C syntax and types
2. Pointers and arrays
3. Memory management
4. File I/O
5. Small projects (calculator, file utils)

### Intermediate (4-6 weeks)
1. Data structures
2. Algorithms
3. Shell
4. CHIP-8 emulator
5. Hash table

### Advanced (6-8 weeks)
1. Database
2. Text editor
3. Container
4. Small compiler
5. Debugger basics

### Expert (8+ weeks)
1. Full compiler
2. Operating system
3. Network stack
4. Complex emulator
5. JIT compiler

## 💡 C/C++ Best Practices

1. **Memory**: Always check malloc return
2. **Buffers**: Never use unchecked string functions
3. **Pointers**: Initialize to NULL, check before dereference
4. **Resources**: Use RAII, free what you allocate
5. **Error Handling**: Check all system call returns
6. **Const**: Use const correctness
7. **Compiler**: Enable all warnings (-Wall -Wextra)
8. **Static Analysis**: Use clang-static-analyzer, cppcheck
9. **Testing**: Write unit tests with check, Unity, or CMocka
10. **Debugging**: Learn GDB/LLDB

## 📊 Difficulty Matrix

| Project | Beginner | Intermediate | Advanced | Expert |
|---------|----------|--------------|----------|--------|
| Hash Table | | ✅ | | |
| Memory Allocator | | ✅ | | |
| Shell | | ✅ | | |
| CHIP-8 | | ✅ | | |
| Text Editor | | | ✅ | |
| Simple Database | | | ✅ | |
| Redis Clone | | | ✅ | |
| Container | | | ✅ | |
| TCP/IP Stack | | | | ✅ |
| OS Kernel | | | | ✅ |
| Compiler | | | | ✅ |
| Linux Debugger | | | | ✅ |
| 3D Renderer | | | ✅ | |
| Ray Tracer | | | ✅ | |

## 🔗 Additional Resources

- [C Programming: A Modern Approach](http://knking.com/books/c2/)
- [The C Programming Language (K&R)](https://en.wikipedia.org/wiki/The_C_Programming_Language)
- [C FAQ](http://c-faq.com/)
- [Learn C the Hard Way](https://learncodethehardway.org/c/)
- [OSDev Wiki](https://wiki.osdev.org/Main_Page)
- [Compiler Explorer](https://godbolt.org/)
