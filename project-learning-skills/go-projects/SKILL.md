# Go (Golang) Project-Based Learning Skill

Guide for building real-world Go projects from scratch. Curated from practical-tutorials/project-based-learning.

## 🎯 Trigger Phrases
- "Build a Go project"
- "Golang tutorial"
- "Go web application"
- "Learn Go by building"

## 📚 Project Categories

### 🌐 Web Applications & APIs

```
Project: Real-time Chat App
Difficulty: Intermediate
Time: 6-8 hours
Link: https://www.thepolyglotdeveloper.com/2016/12/create-real-time-chat-app-golang-angular-2-websockets/

What you'll build:
- WebSocket server
- Angular frontend
- Real-time messaging
- Go backend

Skills learned:
- Goroutines
- Channels
- WebSocket handling
- HTTP server
```

```
Project: Web Applications with Gin
Difficulty: Beginner
Time: 3-4 hours
Link: https://semaphoreci.com/community/tutorials/building-go-web-applications-and-microservices-using-gin

What you'll build:
- REST API
- Middleware
- Routing
- JSON handling

Skills learned:
- Gin framework
- HTTP methods
- Request/Response
- Validation
```

```
Project: Go Web Application (Complete)
Difficulty: Intermediate
Time: 8-10 hours
Link: https://astaxie.gitbooks.io/build-web-application-with-golang/content/en/

What you'll build:
- Full web app
- Database integration
- Sessions
- Templates
- Forms

Skills learned:
- net/http
- Database/SQL
- Template engine
- Sessions
```

```
Project: Chat System with ReactJS
Difficulty: Intermediate
Time: 8-10 hours
Link: 6-part tutorial series

What you'll build:
- Go backend
- React frontend
- WebSocket communication
- Docker deployment
- Multiple clients

Parts:
1. Initial Setup
2. Simple Communication
3. Frontend Design
4. Multiple Clients
5. Improved Frontend
6. Dockerizing
```

```
Project: REST Servers Series
Difficulty: Intermediate to Advanced
Time: 10-12 hours
Link: 7-part tutorial series

What you'll build:
- Standard library server
- Router package server
- Web framework server
- OpenAPI/Swagger
- Middleware
- Authentication
- GraphQL

Skills learned:
- http.ServeMux
- gorilla/mux
- gin-gonic
- OpenAPI
- JWT auth
- GraphQL
```

```
Project: WebAssembly Calculator
Difficulty: Intermediate
Time: 2-3 hours
Link: https://tutorialedge.net/golang/go-webassembly-tutorial/

What you'll build:
- Go compiled to WASM
- Browser calculator
- JavaScript interop

Skills learned:
- WebAssembly
- syscall/js
- Browser integration
```

### 🔗 Blockchain & Crypto

```
Project: Build Your Own Blockchain
Difficulty: Advanced
Time: 15-20 hours
Link: 7-part tutorial series

What you'll build:
- Block structure
- Proof of work
- Persistence (BoltDB)
- CLI interface
- Transactions
- Wallets/Addresses
- Network (P2P)

Parts:
1. Basic Prototype
2. Proof of Work
3. Persistence and CLI
4. Transactions 1
5. Addresses
6. Transactions 2
7. Network

Skills learned:
- Cryptography
- P2P networking
- Consensus algorithms
- Database design
```

### 💬 Network Programming

```
Project: TCP Chat Server
Difficulty: Intermediate
Time: 2-3 hours
Link: https://www.youtube.com/watch?v=Sphme0BqJiY (video)

What you'll build:
- TCP server
- Client connections
- Message broadcasting
- Concurrent handling

Skills learned:
- net package
- TCP sockets
- Goroutines
```

```
Project: Chat Service (Scalable)
Difficulty: Advanced
Time: 6-8 hours
Link: 2-part tutorial series

What you'll build:
- WebSocket server
- Message routing
- Scalable architecture
- High performance

Skills learned:
- WebSocket protocol
- Concurrent patterns
- Message queues
```

```
Project: BitTorrent Client
Difficulty: Advanced
Time: 10-12 hours
Link: https://blog.jse.li/posts/torrent/

What you'll build:
- BitTorrent protocol
- Peer connections
- Piece management
- File reconstruction

Skills learned:
- P2P networking
- Protocol implementation
- File I/O
```

### 🧪 Testing & Development

```
Project: BDD with Godog
Difficulty: Intermediate
Time: 2-3 hours
Link: https://semaphoreci.com/community/tutorials/how-to-use-godog-for-behavior-driven-development-in-go

What you'll build:
- BDD scenarios
- Step definitions
- Cucumber tests
- Feature files

Skills learned:
- Godog framework
- Gherkin syntax
- BDD practices
```

### 🔗 URL Shortener

```
Project: URL Shortener with Gin & Redis
Difficulty: Intermediate
Time: 6-8 hours
Link: 4-part tutorial series

What you'll build:
- URL shortening algorithm
- Redis storage
- Gin web server
- Redirect handling

Parts:
1. Project Setup
2. Storage Layer
3. Short Link Generator
4. Forwarding

Skills learned:
- Redis
- Base62 encoding
- HTTP redirects
- Rate limiting
```

### 📦 DevOps & Containers

```
Project: Container from Scratch
Difficulty: Advanced
Time: 1-2 hours
Link: https://www.youtube.com/watch?v=8fi7uSYlOdc (video)

What you'll build:
- Linux namespaces
- Container runtime
- Process isolation

Skills learned:
- Linux kernel
- Namespaces
- cgroups
- System calls
```

### 🧬 Single Page Applications

```
Project: SPA with Rust/WASM/Yew
Difficulty: Advanced
Time: 4-5 hours
Link: http://www.sheshbabu.com/posts/rust-wasm-yew-single-page-application/

What you'll build:
- Rust backend
- Yew frontend
- WebAssembly
- Single page app

Skills learned:
- Yew framework
- WASM compilation
- Component architecture
```

### 🎓 Complete Courses

```
Project: REST API Masterclass
Difficulty: Intermediate to Advanced
Time: 15-20 hours
Link: YouTube playlist

What you'll build:
- Production REST API
- PostgreSQL
- Docker
- Authentication
- Testing
- Deployment

Tech stack:
- Go
- PostgreSQL
- Docker
- Kubernetes (optional)
```

## 🚀 Quick Start Workflow

### 1. Installation
```bash
# Download from https://golang.org/dl/
# Or use package manager

# macOS
brew install go

# Ubuntu/Debian
sudo apt-get install golang-go

# Verify
go version
```

### 2. Workspace Setup
```bash
# Create workspace
mkdir -p ~/go/{bin,src,pkg}

# Set environment variables (add to .bashrc/.zshrc)
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
```

### 3. Project Structure
```
myproject/
├── cmd/
│   └── myapp/
│       └── main.go
├── pkg/
│   └── handlers/
│   └── models/
├── internal/
│   └── database/
├── api/
├── web/
├── configs/
├── scripts/
├── go.mod
├── go.sum
└── README.md
```

### 4. Initialize Project
```bash
# Create module
go mod init github.com/username/myproject

# Add dependencies
go get -u github.com/gin-gonic/gin
go get -u github.com/gorilla/websocket
go get -u github.com/boltdb/bolt

# Build
go build

# Run
go run cmd/myapp/main.go
```

### 5. Essential Libraries
```go
// Web frameworks
github.com/gin-gonic/gin        // Fast HTTP web framework
github.com/gorilla/mux          // URL router
github.com/labstack/echo        // High performance framework

// Database
github.com/lib/pq               // PostgreSQL
github.com/go-sql-driver/mysql  // MySQL
go.mongodb.org/mongo-driver     // MongoDB
github.com/boltdb/bolt          // Embedded key/value

// WebSocket
github.com/gorilla/websocket

// Authentication
github.com/dgrijalva/jwt-go     // JWT
golang.org/x/crypto/bcrypt      // Password hashing

// Testing
github.com/stretchr/testify     // Testing toolkit
github.com/cucumber/godog       // BDD framework

// Utilities
github.com/sirupsen/logrus      // Logging
github.com/spf13/viper          // Configuration
github.com/joho/godotenv        // Environment variables
```

## 🎯 Learning Path

### Beginner (1-2 weeks)
1. Go tour: https://tour.golang.org/
2. Web app with Gin
3. REST API basics
4. Database connection

### Intermediate (2-4 weeks)
1. Concurrent chat server
2. WebSocket applications
3. URL shortener
4. Testing with Godog

### Advanced (4+ weeks)
1. Blockchain from scratch
2. BitTorrent client
3. Container runtime
4. Microservices architecture

## 💡 Go Best Practices

1. **Formatting**: Always use `gofmt`
2. **Naming**: Use camelCase, exported names start with capital
3. **Error Handling**: Check errors explicitly
4. **Concurrency**: Use channels, share by communicating
5. **Interfaces**: Design for interfaces, not implementations
6. **Testing**: Write table-driven tests
7. **Documentation**: Document exported functions
8. **Context**: Use context for cancellation

## 📊 Difficulty Matrix

| Project | Beginner | Intermediate | Advanced |
|---------|----------|--------------|----------|
| Gin Web App | | ✅ | |
| Chat with Angular | | ✅ | |
| WebSocket Chat | | ✅ | |
| URL Shortener | | ✅ | |
| REST API Series | | ✅ | |
| TCP Chat | | ✅ | |
| Godog BDD | | ✅ | |
| Blockchain | | | ✅ |
| BitTorrent | | | ✅ |
| Container Runtime | | | ✅ |
| SPA with Yew | | | ✅ |

## 🔗 Additional Resources

- [Go by Example](https://gobyexample.com/)
- [Effective Go](https://golang.org/doc/effective_go)
- [Go Code Review Comments](https://github.com/golang/go/wiki/CodeReviewComments)
- [Go 101](https://go101.org/)
- [Ultimate Go](https://github.com/ardanlabs/gotraining)
