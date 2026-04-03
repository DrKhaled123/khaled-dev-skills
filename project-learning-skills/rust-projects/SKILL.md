# Rust Project-Based Learning Skill

Guide for building real-world Rust projects from scratch. Curated from practical-tutorials/project-based-learning.

## 🎯 Trigger Phrases
- "Build a Rust project"
- "Rust tutorial project"
- "Learn Rust by building"
- "Rust systems programming"

## 📚 Project Categories

### 🌐 Web Applications

```
Project: Simple Web App Series
Difficulty: Intermediate
Time: 8-10 hours
Link: Multi-part tutorial series

What you'll build:
- HTTP server
- Request handling
- Template rendering
- Database connection

Parts:
1. Basic Setup
2. Request Handling
3. Templates
4. Database

Skills learned:
- Hyper HTTP
- Iron/Nickel framework
- Diesel ORM
- Request routing
```

```
Project: WebAssembly SPA
Difficulty: Advanced
Time: 6-8 hours
Link: http://www.sheshbabu.com/posts/rust-wasm-yew-single-page-application/

What you'll build:
- Yew framework
- WebAssembly compilation
- Single page application
- Component architecture

Skills learned:
- wasm-bindgen
- Yew components
- Virtual DOM
- Browser interop
```

### 💻 Systems Programming

```
Project: Operating System
Difficulty: Expert
Time: 40-60 hours
Link: https://os.phil-opp.com/

What you'll build:
- Bootloader
- Kernel
- Memory management
- Interrupt handling
- Multitasking

Skills learned:
- x86_64 architecture
- Assembly
- Memory safety
- Unsafe Rust
- Hardware abstraction
```

```
Project: Browser Engine
Difficulty: Advanced
Time: 15-20 hours
Link: https://limpet.net/mbrubeck/2014/08/08/toy-layout-engine-1.html

What you'll build:
- HTML parser
- CSS parser
- Layout engine
- Rendering pipeline

Skills learned:
- Parsing techniques
- Layout algorithms
- DOM manipulation
- Graphics
```

```
Project: Container from Scratch
Difficulty: Advanced
Time: 3-4 hours
Link: https://www.youtube.com/watch?v=8fi7uSYlOdc (video comparison)

What you'll build:
- Linux namespaces
- Process isolation
- Container runtime
- System calls

Skills learned:
- Linux kernel
- Namespaces
- cgroups
- chroot
```

### 🎮 Emulators & Games

```
Project: NES Emulator
Difficulty: Advanced
Time: 20-30 hours
Link: https://bugzmanov.github.io/nes_ebook/

What you'll build:
- CPU emulation (6502)
- PPU (Picture Processing Unit)
- Memory mapping
- Controller input
- Graphics rendering

Skills learned:
- Low-level emulation
- Bit manipulation
- Memory management
- Graphics programming
```

```
Project: Game Boy Emulator (OCaml reference)
Difficulty: Expert
Time: 30-40 hours
Link: https://linoscope.github.io/writing-a-game-boy-emulator-in-ocaml/

Note: Adapt concepts to Rust

What you'll build:
- Z80 CPU emulation
- Graphics rendering
- Sound emulation
- Memory banking

Skills learned:
- CPU architecture
- Timing accuracy
- State machines
```

```
Project: Roguelike Game
Difficulty: Intermediate
Time: 10-15 hours
Link: https://aimlesslygoingforward.com/blog/2019/02/09/writing-a-rust-roguelike-for-the-desktop-and-the-web/

What you'll build:
- Procedural maps
- Entity system
- Combat mechanics
- WASM target

Skills learned:
- ECS pattern
- WASM compilation
- Game loop
- Dungeon generation
```

```
Project: Evolution Simulation
Difficulty: Advanced
Time: 15-20 hours
Link: 4-part tutorial series

What you'll build:
- Neural network
- Genetic algorithm
- Physics simulation
- WebAssembly target
- Visualization

Parts:
1. Simulation basics
2. Neural networks
3. Genetic algorithm
4. WASM integration

Skills learned:
- Neural networks
- Genetic algorithms
- WASM
- Parallel processing
```

### 🗃️ Data Structures

```
Project: Too Many Linked Lists
Difficulty: Intermediate
Time: 8-10 hours
Link: http://cglab.ca/~abeinges/blah/too-many-lists/book/README.html

What you'll build:
- Singly linked list
- Doubly linked list
- Persistent list
- Bad stack/queue
- Ok stack/queue

Skills learned:
- Ownership
- Borrowing
- Lifetimes
- Unsafe Rust
- Smart pointers
```

### 💬 Network Applications

```
Project: Chat Service
Difficulty: Intermediate
Time: 8-10 hours
Link: 2-part tutorial series

What you'll build:
- WebSocket server
- Client management
- Message routing
- Concurrent connections

Parts:
1. WebSocket implementation
2. Message handling

Skills learned:
- tokio async
- futures
- channels
- concurrency
```

```
Project: Microservice
Difficulty: Intermediate
Time: 4-6 hours
Link: http://www.goldsborough.me/rust/web/tutorial/2018/01/20/17-01-11-writing_a_microservice_in_rust/

What you'll build:
- HTTP service
- Docker container
- JSON API
- Database connection

Skills learned:
- hyper HTTP
- serde JSON
- Docker
- Service architecture
```

## 🚀 Quick Start Workflow

### 1. Installation
```bash
# macOS/Linux
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Windows
# Download from https://rustup.rs/

# Verify
rustc --version
cargo --version
```

### 2. Essential Tools
```bash
# Rustfmt (formatting)
rustup component add rustfmt

# Clippy (linting)
rustup component add clippy

# Rust Language Server (IDE support)
rustup component add rls

# Cargo tools
cargo install cargo-edit      # Dependency management
cargo install cargo-watch     # Auto-rebuild
cargo install cargo-tree      # Dependency tree
```

### 3. Project Structure
```
myproject/
├── Cargo.toml
├── Cargo.lock
├── src/
│   ├── main.rs          # Binary entry point
│   ├── lib.rs           # Library entry point
│   ├── bin/             # Additional binaries
│   ├── models/          # Data models
│   ├── handlers/        # Request handlers
│   └── utils/           # Utilities
├── tests/               # Integration tests
├── benches/             # Benchmarks
├── examples/            # Usage examples
└── target/              # Build output
```

### 4. Cargo.toml Template
```toml
[package]
name = "myproject"
version = "0.1.0"
edition = "2021"
authors = ["Your Name <you@example.com>"]
description = "A brief description"
license = "MIT OR Apache-2.0"
repository = "https://github.com/username/myproject"

[dependencies]
# Web
actix-web = "4"
tokio = { version = "1", features = ["full"] }

# Serialization
serde = { version = "1.0", features = ["derive"] }
serde_json = "1.0"

# Database
diesel = { version = "2.0", features = ["postgres"] }
sqlx = { version = "0.6", features = ["runtime-tokio", "postgres"] }

# HTTP client
reqwest = { version = "0.11", features = ["json"] }

# CLI
clap = { version = "4", features = ["derive"] }

# Async
futures = "0.3"
async-trait = "0.1"

# Error handling
anyhow = "1.0"
thiserror = "1.0"

# Logging
tracing = "0.1"
tracing-subscriber = "0.3"

[dev-dependencies]
tokio-test = "0.4"
```

### 5. Essential Crates
```rust
// Web frameworks
actix-web    // Powerful, pragmatic
axum         // Ergonomic, modular
rocket       // Easy to use
warp         // Composable

// Async runtime
tokio        // Async runtime
async-std    // Async standard library

// Serialization
serde        // Serialization framework
serde_json   // JSON support

// CLI
clap         // Command line parsing
structopt    // Derive-based CLI (deprecated, use clap v3+)

crossterm    // Cross-platform terminal
termion      // Terminal manipulation

// Error handling
anyhow       # Flexible error handling
thiserror    # Derive macro for errors

// HTTP client
reqwest      // Easy HTTP client
hyper        // Low-level HTTP

// Database
diesel       // ORM
sqlx         // Async SQL
rusqlite     // SQLite
mongodb      // MongoDB driver

// WebAssembly
wasm-bindgen // JS interop
yew          // React-like framework
seed         // Elm-like framework

// Graphics
wgpu         // Cross-platform graphics
pixels       // 2D graphics framework
macroquad    // Simple game framework

// Testing
mockall      // Mocking

// Logging
tracing      // Structured logging
log          // Logging facade
env_logger   // Logger implementation
```

## 🎯 Learning Path

### Beginner (2-3 weeks)
1. Rust Book: https://doc.rust-lang.org/book/
2. Rustlings: https://github.com/rust-lang/rustlings
3. CLI application
4. Simple web server

### Intermediate (3-4 weeks)
1. Chat server with tokio
2. Microservice
3. Data structures
4. WebAssembly basics

### Advanced (4+ weeks)
1. NES emulator
2. Operating system
3. Browser engine
4. Evolution simulation

### Expert (6+ weeks)
1. Complete emulator
2. Systems programming
3. Kernel development
4. Compiler construction

## 💡 Rust Best Practices

1. **Ownership**: Understand move, borrow, and clone
2. **Error Handling**: Use Result and Option, avoid unwrap
3. **Lifetimes**: Explicit when ambiguous, implicit when clear
4. **Traits**: Design for composition
5. **Unsafe**: Minimize and document unsafe blocks
6. **Testing**: Write unit tests and doc tests
7. **Documentation**: Document public APIs
8. **Formatting**: Use rustfmt
9. **Linting**: Enable clippy warnings
10. **Async**: Prefer async/await over raw futures

## 🧪 Testing Pattern
```rust
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_addition() {
        assert_eq!(add(2, 2), 4);
    }

    #[test]
    #[should_panic(expected = "division by zero")]
    fn test_division_by_zero() {
        divide(10, 0);
    }

    #[tokio::test]
    async fn test_async_function() {
        let result = async_operation().await;
        assert!(result.is_ok());
    }
}
```

## 📊 Difficulty Matrix

| Project | Beginner | Intermediate | Advanced | Expert |
|---------|----------|--------------|----------|--------|
| Web App | | ✅ | | |
| Chat Service | | ✅ | | |
| Microservice | | ✅ | | |
| Linked Lists | | ✅ | | |
| WASM SPA | | | ✅ | |
| Roguelike | | | ✅ | |
| Container | | | ✅ | |
| Browser Engine | | | | ✅ |
| NES Emulator | | | | ✅ |
| OS Kernel | | | | ✅ |
| Evolution Sim | | | ✅ | |

## 🔗 Additional Resources

- [Rust Book](https://doc.rust-lang.org/book/)
- [Rust By Example](https://doc.rust-lang.org/rust-by-example/)
- [Rustlings](https://github.com/rust-lang/rustlings)
- [Exercism Rust](https://exercism.org/tracks/rust)
- [This Week in Rust](https://this-week-in-rust.org/)
- [Rust Cheat Sheet](https://cheats.rs/)
- [Awesome Rust](https://github.com/rust-unofficial/awesome-rust)
