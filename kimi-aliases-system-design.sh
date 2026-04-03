#!/bin/bash
# System Design Aliases for Kimi - v6.0 Enhanced
# Integration of donnemartin/system-design-primer + project-based-learning

# ==============================================================================
# SYSTEM DESIGN FUNDAMENTALS
# ==============================================================================

alias kimi-sd-fundamentals='echo "📚 System Design Fundamentals
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

CORE CONCEPTS:
  • Performance vs Scalability - Speed vs Growth handling
  • Latency vs Throughput - Response time vs Operations/sec
  • CAP Theorem - Consistency, Availability, Partition tolerance
  • Consistency Patterns - Weak, Eventual, Strong
  • Availability Patterns - Failover, Replication, 9s calculation

KEY PRINCIPLES:
  ✓ Everything is a trade-off
  ✓ Networks are unreliable
  ✓ Measure before optimizing
  ✓ Design for failure

QUICK REFERENCE:
  kimi-sd-cap              - CAP theorem explained
  kimi-sd-latency          - Latency vs throughput
  kimi-sd-availability     - Availability calculations
  kimi-sd-consistency      - Consistency patterns

Full Guide: @system-design-skills/fundamentals/SKILL.md"'

alias kimi-sd-cap='echo "🎯 CAP Theorem
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

In distributed systems, pick 2 of 3:

  C - Consistency: Every read gets latest write or error
  A - Availability: Every request gets a response
  P - Partition Tolerance: System works despite network failures

REALITY CHECK:
  Networks are unreliable → You MUST choose P
  
So the real choice is:
  ┌─────────────────┐  ┌─────────────────┐
  │   CP Systems    │  │   AP Systems    │
  │                 │  │                 │
  │ Consistency +   │  │ Availability +  │
  │ Partition       │  │ Partition       │
  │                 │  │                 │
  │ • HBase         │  │ • Cassandra     │
  │ • MongoDB (CP)  │  │ • DynamoDB      │
  │ • Redis (CP)    │  │ • Couchbase     │
  │                 │  │                 │
  │ Use: Banking,   │  │ Use: Social,    │
  │ Inventory       │  │ Caching         │
  └─────────────────┘  └─────────────────┘

Remember: Choose based on business requirements!"'

alias kimi-sd-latency='echo "⚡ Latency vs Throughput
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

DEFINITIONS:
  Latency = Time for ONE operation (ms, μs)
  Throughput = Operations per SECOND (ops/sec)

GOAL: Maximize throughput with ACCEPTABLE latency

LATENCY NUMBERS (Every Programmer Should Know):
  ┌─────────────────────────────────────┬──────────────┐
  │ Operation                           │ Time         │
  ├─────────────────────────────────────┼──────────────┤
  │ L1 cache reference                  │ 0.5 ns       │
  │ L2 cache reference                  │ 7 ns         │
  │ Main memory reference               │ 100 ns       │
  │ SSD random read                     │ 16,000 ns    │
  │ Round trip within datacenter        │ 500,000 ns   │
  │ Read 1 MB from SSD                  │ 1,000,000 ns │
  │ Disk seek                           │ 10,000,000 ns│
  │ Read 1 MB from disk                 │ 20,000,000 ns│
  │ Round trip CA to Netherlands        │ 150,000,000ns│
  └─────────────────────────────────────┴──────────────┘

SCENARIOS:
  ❌ High latency, High throughput: Batch processing
  ❌ Low latency, Low throughput: Single-threaded
  ✅ Low latency, High throughput: The goal!

Full table: @system-design-skills/resources/latency_numbers.md"'

alias kimi-sd-availability='echo "🔄 Availability Calculations
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

\"NUMBER OF 9s\" - Uptime percentage:

  Availability    Downtime/Year    Downtime/Month    Downtime/Day
  ─────────────────────────────────────────────────────────────────
  99% (2 nines)   3.65 days        7.3 hours         14.4 minutes
  99.9%           8.76 hours       43.8 minutes      1.44 minutes
  99.99%          52.6 minutes     4.38 minutes      8.64 seconds
  99.999%         5.26 minutes     26.3 seconds      0.86 seconds

AVAILABILITY MATH:
  Series (dependent):  99.9% × 99.9% = 99.8%
  Parallel (redundant): 1 - (0.001 × 0.001) = 99.9999%

HIGH AVAILABILITY PATTERNS:
  • Active-Passive: One active, one standby
  • Active-Active: Both handle traffic
  • Replication: Data copied across nodes

Target based on business:
  • Internal tools: 99% acceptable
  • E-commerce: 99.99% expected
  • Financial: 99.999% required"'

alias kimi-sd-consistency='echo "🔄 Consistency Patterns
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

WEAK CONSISTENCY:
  • After write, reads MAY see it
  • Best effort
  • Use: Real-time games, VoIP, video chat
  • Example: Player position in games (slight delay OK)

EVENTUAL CONSISTENCY:
  • After write, reads WILL see it (eventually)
  • Usually milliseconds
  • Use: DNS, Email, Social media
  • Example: Facebook post visibility

STRONG CONSISTENCY:
  • After write, reads SEE IT immediately
  • Synchronous replication
  • Use: Banking, Inventory, Transactions
  • Example: Account balance

CHOICE MATRIX:
  ┌────────────────┬──────────┬────────────┬─────────────┐
  │ Pattern        │ Latency  │ Availability│ Use Case    │
  ├────────────────┼──────────┼────────────┼─────────────┤
  │ Weak           │ Lowest   │ Highest    │ Real-time   │
  │ Eventual       │ Low      │ High       │ Social      │
  │ Strong         │ Higher   │ Lower      │ Financial   │
  └────────────────┴──────────┴────────────┴─────────────┘"'

# ==============================================================================
# INFRASTRUCTURE COMPONENTS
# ==============================================================================

alias kimi-sd-infrastructure='echo "🏗️ Infrastructure Components
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

CORE COMPONENTS:
  • DNS - Domain to IP translation
  • CDN - Content delivery at edge
  • Load Balancer - Traffic distribution
  • Reverse Proxy - Unified entry point
  • Application Layer - Microservices

QUICK LINKS:
  kimi-sd-dns              - Domain Name System
  kimi-sd-cdn              - Content Delivery Network
  kimi-sd-lb               - Load Balancers
  kimi-sd-proxy            - Reverse Proxy
  kimi-sd-micro            - Microservices

Full Guide: @system-design-skills/infrastructure/SKILL.md"'

alias kimi-sd-dns='echo "🌐 Domain Name System (DNS)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PURPOSE: Translates domain names to IP addresses

RECORD TYPES:
  A     → IPv4 address (93.184.216.34)
  AAAA  → IPv6 address
  CNAME → Domain alias (www → root)
  MX    → Mail servers
  NS    → Name servers
  TXT   → Text/verification records

HOW IT WORKS:
  1. Browser checks cache
  2. OS checks cache
  3. Query recursive DNS resolver
  4. Resolver queries: Root → TLD → Authoritative
  5. Returns IP to client

ADVANCED FEATURES:
  • Weighted Round Robin - A/B testing
  • Latency-based routing - Nearest server
  • Geolocation routing - Regional content

CACHING (TTL):
  • Lower before changes (300s)
  • Higher for stability (86400s)

Managed DNS:
  • CloudFlare, Route 53, Google DNS"'

alias kimi-sd-cdn='echo "📦 Content Delivery Network (CDN)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PURPOSE: Serve content from edge locations near users

BENEFITS:
  ✓ Reduced latency
  ✓ Lower origin load
  ✓ Improved availability
  ✓ DDoS protection

TYPES:
  PUSH CDN:
    • You upload content
    • Good for: Small sites, infrequent updates
  
  PULL CDN:
    • CDN fetches on first request
    • Good for: Large sites, frequent updates
    • Automatic caching with TTL

POPULAR CDNs:
  • CloudFlare (Pull, Free tier)
  • AWS CloudFront
  • Fastly
  • Akamai

BEST FOR:
  ✓ Static assets (JS, CSS, images, videos)
  ✓ Global user base
  
NOT FOR:
  ✗ Dynamic personal data
  ✗ Highly sensitive content"'

alias kimi-sd-lb='echo "⚖️ Load Balancers
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PURPOSE: Distribute traffic across multiple servers

TYPES:
  Hardware: F5 BIG-IP, Citrix NetScaler
  Software: HAProxy, Nginx, Traefik
  Cloud: AWS ELB/ALB, Google Cloud LB

ALGORITHMS:
  • Round Robin - Sequential
  • Weighted Round Robin - By capacity
  • Least Connections - Fewest active
  • Least Response Time - Fastest
  • IP Hash - Same client → same server

LAYER 4 vs LAYER 7:
  Layer 4 (Transport):
    • Decisions: IP, Port, TCP/UDP
    • Faster, less processing
    • No content inspection
  
  Layer 7 (Application):
    • Decisions: HTTP headers, URL, cookies
    • Can route by path (/api/* vs /static/*)
    • Content-aware routing

BENEFITS:
  • Prevents overload
  • Health checks (removes failed servers)
  • SSL termination
  • Session persistence"'

alias kimi-sd-proxy='echo "🔄 Reverse Proxy
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PURPOSE: Centralizes internal services, provides unified interface

VS LOAD BALANCER:
  Reverse Proxy:
    • Works even with 1 server
    • Security, SSL, caching
    • Unified entry point
  
  Load Balancer:
    • Needs 2+ servers
    • Traffic distribution
    • Health checks
  
  Note: Many do both (Nginx, HAProxy)

BENEFITS:
  Security:
    • Hide backend details
    • IP blacklist/whitelist
    • Rate limiting
    • DDoS protection
  
  Performance:
    • SSL termination
    • Compression (gzip)
    • Caching static content
    • Connection pooling

PATTERNS:
  API Gateway:
    Client → Proxy → Auth → API Servers
  
  Static/Dynamic Split:
    /static/* → Static Server
    /api/* → Application Server"'

alias kimi-sd-micro='echo "🔧 Microservices
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

DEFINITION: Independently deployable, small, modular services

CHARACTERISTICS:
  • Single responsibility
  • Independent deployment
  • Own database per service
  • Inter-service APIs
  • Polyglot programming possible

BENEFITS:
  ✓ Independent scaling
  ✓ Technology flexibility
  ✓ Team autonomy
  ✓ Fault isolation

CHALLENGES:
  ✗ Distributed complexity
  ✗ Network latency
  ✗ Data consistency
  ✗ Testing complexity
  ✗ Operational overhead

SERVICE DISCOVERY:
  Tools: Consul, etcd, Zookeeper, Eureka
  
  Pattern:
    1. Service registers on startup
    2. Client queries registry
    3. Connects to healthy instance

EXAMPLE SERVICES:
  • User Service
  • Order Service
  • Payment Service
  • Notification Service"'

# ==============================================================================
# INTERVIEW PREPARATION
# ==============================================================================

alias kimi-sd-interview='echo "🎓 System Design Interview Prep
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

THE 4S FRAMEWORK:

1️⃣  SCOPE (5 min)
    • Ask clarifying questions
    • Define use cases
    • Calculate estimates (users, storage, QPS)

2️⃣  SKETCH (10-15 min)
    • High-level design
    • Main components
    • API endpoints
    • Data flow

3️⃣  SCALE (15-20 min)
    • Deep dive components
    • Database choice
    • Caching strategy
    • Identify bottlenecks

4️⃣  SOLIDIFY (5-10 min)
    • Discuss trade-offs
    • Failure scenarios
    • Future improvements
    • Monitoring

INTERVIEW TIPS:
  ✅ Ask questions first
  ✅ Think out loud
  ✅ Start simple, then scale
  ✅ Calculate numbers
  ✅ Discuss alternatives

  ❌ Don\'t jump to complex solutions
  ❌ Don\'t be silent
  ❌ Don\'t ignore requirements

Full Guide: @system-design-skills/interview-prep/SKILL.md"'

alias kimi-sd-questions='echo "📋 The 8 Essential Interview Questions
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Design Pastebin/Bit.ly
   • URL shortening, object storage
   • Read-heavy, 100:1 ratio

2. Design Twitter Timeline & Search
   • Fan-out problem (celebrities)
   • Feed generation, search indexing

3. Design Web Crawler
   • Distributed crawling
   • Politeness, deduplication

4. Design Mint.com
   • Bank aggregation
   • Security, categorization

5. Design Social Network
   • Graph data structures
   • Friend recommendations

6. Design Query Cache
   • Search result caching
   • Invalidation strategies

7. Design Sales Rank
   • Real-time analytics
   • Stream processing

8. Design for Millions (AWS)
   • Evolution from 1 server
   • Multi-region scaling

Quick Access:
  kimi-sd-pastebin    kimi-sd-twitter    kimi-sd-crawler
  kimi-sd-mint        kimi-sd-social     kimi-sd-search
  kimi-sd-ranking     kimi-sd-scaling"'

alias kimi-sd-pastebin='echo "📝 Design Pastebin/Bit.ly
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

REQUIREMENTS:
  • Paste text → Get unique URL
  • Visit URL → See content
  • Optional expiration
  • Analytics (view count)

KEY DECISIONS:
  • URL Generation: MD5 + Base62 encoding
  • Storage: SQL (metadata) + Object Store (content)
  • Scale: 10M writes/month, 100M reads/month

ARCHITECTURE:
  Client → Load Balancer → Write API → SQL DB → Object Store (S3)
                           ↳ Read API → SQL DB

URL GENERATION:
  url = base62(md5(ip + timestamp))[:7]
  62^7 = 3.5 trillion unique URLs

ESTIMATES:
  • 1 KB per paste
  • 10 GB/month storage
  • ~4 writes/sec, ~400 reads/sec

Solution: @advanced-developer-view/system-design-primer/solutions/system_design/pastebin/"'

alias kimi-sd-twitter='echo "🐦 Design Twitter Timeline
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

CHALLENGES:
  • Celebrity problem (1M followers × post)
  • Real-time timeline
  • Search indexing

APPROACHES:

  FAN-OUT ON WRITE (Push):
    • Post → Push to all followers\' feeds
    • Pros: Fast read (pre-computed)
    • Cons: Expensive for celebrities
  
  FAN-OUT ON READ (Pull):
    • Read: Query all following, merge
    • Pros: Cheap write
    • Cons: Expensive read

  HYBRID (Recommended):
    • Normal users (<1M followers): Fan-out on write
    • Celebrities: Fan-out on read
    • Celeb tweets stored separately, merged at read

SEARCH:
  • Inverted index: word → tweet IDs
  • Real-time indexing with queues
  • Elasticsearch/Solr

Solution: @advanced-developer-view/system-design-primer/solutions/system_design/twitter/"'

alias kimi-sd-scaling='echo "📈 Scale to Millions (AWS)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EVOLUTION PHASES:

Phase 1: Single Server
  Web + App + DB on one machine
  Users: <1,000

Phase 2: Separate Database
  App server + Database server
  Users: <10,000

Phase 3: Load Balancer + Multiple
  ELB + Auto Scaling Group
  Stateless servers
  Users: <100,000

Phase 4: Caching + CDN
  ElastiCache (Redis)
  CloudFront CDN
  Users: <1M

Phase 5: DB Scaling
  Read Replicas
  Database sharding
  Users: <10M

Phase 6: Microservices
  Service decomposition
  Container orchestration
  Users: <100M

Phase 7: Global Scale
  Multi-region
  Global databases
  Users: 100M+

Key: Scale incrementally, not all at once!

Solution: @advanced-developer-view/system-design-primer/solutions/system_design/scaling_aws/"'

# ==============================================================================
# DATABASES & CACHING
# ==============================================================================

alias kimi-sd-databases='echo "🗄️ Database Scaling
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

SQL SCALING TECHNIQUES:
  • Master-Slave Replication (read scaling)
  • Master-Master Replication (write scaling)
  • Federation (split by function)
  • Sharding (split by data)
  • Denormalization (read performance)
  • SQL Tuning (indices, queries)

NOSQL TYPES:
  • Key-Value: Redis, DynamoDB
  • Document: MongoDB, CouchDB
  • Wide-Column: Cassandra, HBase
  • Graph: Neo4j, Amazon Neptune

SQL vs NOSQL:
  Choose SQL when:
    ✓ ACID transactions needed
    ✓ Complex relationships
    ✓ Structured data
  
  Choose NoSQL when:
    ✓ High write throughput
    ✓ Unstructured data
    ✓ Horizontal scaling needed

Full Guide: @system-design-skills/databases/SKILL.md"'

alias kimi-sd-caching='echo "💨 Caching Strategies
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

CACHING LAYERS:
  • Client caching (browser)
  • CDN caching (edge)
  • Web server caching
  • Database caching
  • Application caching (Redis/Memcached)

CACHE PATTERNS:
  Cache-Aside (Lazy Loading):
    1. Check cache
    2. If miss, read from DB
    3. Write to cache
  
  Write-Through:
    1. Write to cache
    2. Cache writes to DB
  
  Write-Behind (Write-Back):
    1. Write to cache
    2. Async write to DB
  
  Refresh-Ahead:
    • Preemptively refresh cache before TTL

CACHE INVALIDATION:
  • TTL expiration
  • Active invalidation
  • Version-based (cache keys with version)

Hard Problems:
  • Cache stampede (thundering herd)
  • Cold start
  • Consistency

Full Guide: @system-design-skills/caching/SKILL.md"'

# ==============================================================================
# RESOURCES & REFERENCES
# ==============================================================================

alias kimi-sd-powers='echo "📊 Powers of Two Table
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

┌──────────┬────────────┬─────────────────────────────────────┐
│ Power    │ Exact      │ Approximate                         │
├──────────┼────────────┼─────────────────────────────────────┤
│ 2^7      │ 128        │                                     │
│ 2^8      │ 256        │                                     │
│ 2^10     │ 1,024      │ 1 thousand (1 KB)                   │
│ 2^16     │ 65,536     │                                     │
│ 2^20     │ 1,048,576  │ 1 million (1 MB)                    │
│ 2^30     │ 1,073,741  │ 1 billion (1 GB)                    │
│ 2^32     │ 4,294,967  │ 4 billion (32-bit limit)            │
│ 2^40     │ 1.1×10^12  │ 1 trillion (1 TB)                   │
└──────────┴────────────┴─────────────────────────────────────┘

USEFUL FOR:
  • Capacity planning
  • Memory calculations
  • Quick estimates
  • Interview calculations"'

alias kimi-sd-companies='echo "🏢 Company Engineering Blogs
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

LEARNING FROM PRODUCTION:

High Scale:
  • Netflix Tech Blog
  • Uber Engineering
  • Airbnb Engineering
  • Twitter Engineering
  • Facebook Engineering
  • LinkedIn Engineering

Cloud Providers:
  • AWS Architecture Blog
  • Google Cloud Blog
  • Microsoft Azure Blog

Databases:
  • MongoDB Blog
  • Redis Blog
  • PostgreSQL mailing lists
  • MySQL Performance Blog

Tools:
  • CloudFlare Blog
  • Datadog Engineering
  • Elastic Blog

Start here for real-world patterns!"'

alias kimi-sd-help='echo "🎯 System Design Skills Help
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

CATEGORY ALIASES:
  kimi-sd-fundamentals    - Core concepts (CAP, latency, etc.)
  kimi-sd-infrastructure  - DNS, CDN, Load balancers
  kimi-sd-databases       - SQL/NoSQL scaling
  kimi-sd-caching         - Cache patterns
  kimi-sd-interview       - Interview framework

QUICK TOPICS:
  kimi-sd-cap             - CAP theorem
  kimi-sd-latency         - Latency numbers
  kimi-sd-availability    - Availability calculations
  kimi-sd-consistency     - Consistency patterns
  kimi-sd-dns             - Domain Name System
  kimi-sd-cdn             - Content Delivery Network
  kimi-sd-lb              - Load balancers
  kimi-sd-proxy           - Reverse proxy
  kimi-sd-micro           - Microservices

INTERVIEW QUESTIONS:
  kimi-sd-questions       - All 8 questions
  kimi-sd-pastebin        - Design Pastebin/Bit.ly
  kimi-sd-twitter         - Design Twitter
  kimi-sd-crawler         - Design Web Crawler
  kimi-sd-mint            - Design Mint.com
  kimi-sd-social          - Design Social Network
  kimi-sd-search          - Design Query Cache
  kimi-sd-ranking         - Design Sales Rank
  kimi-sd-scaling         - Scale to millions

RESOURCES:
  kimi-sd-powers          - Powers of two table
  kimi-sd-companies       - Engineering blogs

Full Guide: @system-design-skills/README.md"'

echo "✅ System Design Aliases Loaded (v6.0)"
echo "   Run 'kimi-sd-help' to get started"
