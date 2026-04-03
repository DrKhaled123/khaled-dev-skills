# System Design Fundamentals

Core concepts every software engineer must know to design scalable, reliable systems.

## 🎯 Trigger Phrases
- "Explain CAP theorem"
- "Performance vs scalability"
- "System design basics"
- "Distributed systems fundamentals"
- "Consistency patterns"

## 1. Performance vs Scalability

### Definitions

**Performance** is about how fast a system responds for a single user.
- Measured in: Response time, Latency, Throughput
- Problem: "My app is slow"

**Scalability** is about how the system handles growth.
- Measured in: Users supported, Requests/second, Data volume
- Problem: "My app is fast for 1 user but slow for 1000"

### Key Insight
```
Performance Problem → System is slow for single user
Scalability Problem → System is fast for single user but slow under load
```

### Relationship
- A service is **scalable** if it results in increased **performance** proportional to resources added
- Adding resources → More units of work OR larger datasets

### Example Scenarios

| Scenario | Performance | Scalability |
|----------|-------------|-------------|
| Database query takes 5s | ❌ Performance issue | - |
| Database query takes 100ms for 1 user, 10s for 1000 users | ✅ Good performance | ❌ Scalability issue |
| Adding 2x servers handles 2x traffic | - | ✅ Good scalability |

### Trade-offs
- Vertical scaling (bigger server) → Better performance, limited scalability
- Horizontal scaling (more servers) → Better scalability, complexity cost

## 2. Latency vs Throughput

### Definitions

**Latency**: Time to complete a single operation
- Measured in: milliseconds (ms), microseconds (μs)
- Lower is better
- Example: API response time

**Throughput**: Number of operations completed per unit time
- Measured in: requests/second, MB/s, operations/second
- Higher is better
- Example: Requests handled per second

### Relationship
```
Goal: Maximize throughput with acceptable latency
```

### Real-World Examples

| System | Latency Target | Throughput Target |
|--------|----------------|-------------------|
| Search engine | <200ms | 1000s queries/sec |
| Video streaming | <2s startup | Sustained MB/s |
| Trading system | <1ms | 1000s trades/sec |

### Key Insight
- You can have high throughput with high latency (batch processing)
- You can have low latency with low throughput (single-threaded)
- The challenge is achieving BOTH

## 3. Availability vs Consistency

### CAP Theorem

>In a distributed system, you can only guarantee **two** of the following three:

1. **C**onsistency - Every read receives the most recent write or an error
2. **A**vailability - Every request receives a response (not necessarily latest)
3. **P**artition Tolerance - System continues despite network failures

### Critical Insight
**Networks are unreliable → You MUST choose Partition Tolerance**

Therefore, distributed systems choose between:
- **CP** (Consistency + Partition Tolerance)
- **AP** (Availability + Partition Tolerance)

### CP Systems (Consistency + Partition Tolerance)
- Wait for response from partitioned node
- May return timeout/error
- Good for: Financial transactions, inventory systems
- Examples: HBase, MongoDB (configurable), Redis (configurable)

### AP Systems (Availability + Partition Tolerance)
- Return most available version
- Writes propagate asynchronously
- Good for: Social media, content delivery, caching
- Examples: Cassandra, DynamoDB, Couchbase

### Visual Decision Tree
```
                    Distributed System
                           |
                    Must Have Partition
                       Tolerance (P)
                           |
              ┌────────────┴────────────┐
              |                         |
        Choose CP                   Choose AP
     (Consistency)              (Availability)
              |                         |
     - Financial systems         - Social feeds
     - Inventory management      - Caching layers
     - Strong consistency        - Eventual consistency
```

## 4. Consistency Patterns

### Weak Consistency
- After a write, reads may or may not see it
- Best-effort approach
- Use cases: Real-time gaming, VoIP, video chat, live streaming
- Example: In-game player position (stale data is OK)

### Eventual Consistency
- After a write, reads will eventually see it (typically milliseconds)
- Data replicated asynchronously
- Use cases: DNS, Email, Social media, CDN
- Example: Facebook post visibility across servers

### Strong Consistency
- After a write, reads will see it immediately
- Data replicated synchronously
- Use cases: Banking, Inventory, File systems, RDBMS transactions
- Example: Bank account balance updates

### Comparison Table

| Pattern | Latency | Availability | Use Case |
|---------|---------|--------------|----------|
| Weak | Lowest | Highest | Real-time apps |
| Eventual | Low | High | Social/content |
| Strong | Higher | Lower | Financial/Inventory |

## 5. Availability Patterns

### Availability Calculation

**"Number of 9s"** - Uptime percentage:

| Availability | Downtime/Year | Downtime/Month | Downtime/Day |
|--------------|---------------|----------------|--------------|
| 99% (2 nines) | 3.65 days | 7.3 hours | 14.4 minutes |
| 99.9% (3 nines) | 8.76 hours | 43.8 minutes | 1.44 minutes |
| 99.99% (4 nines) | 52.6 minutes | 4.38 minutes | 8.64 seconds |
| 99.999% (5 nines) | 5.26 minutes | 26.3 seconds | 0.86 seconds |

### High Availability Strategies

**1. Fail-over Patterns**

*Active-Passive (Master-Slave)*
- Heartbeats between active and passive servers
- Passive takes over when heartbeat fails
- Pros: Simple, well-understood
- Cons: Resources idle on passive

*Active-Active (Master-Master)*
- Both servers handle traffic
- Load distributed between them
- Pros: Full resource utilization
- Cons: Conflict resolution complexity

**2. Replication**
- Data copied across multiple nodes
- Protects against data loss
- Enables read scaling

### Availability in Series vs Parallel

**Series** (dependent components):
```
Availability(Total) = Availability(A) × Availability(B)
Example: 99.9% × 99.9% = 99.8%
```
→ Overall availability DECREASES

**Parallel** (redundant components):
```
Availability(Total) = 1 - (1-Availability(A)) × (1-Availability(B))
Example: 1 - (0.001 × 0.001) = 99.9999%
```
→ Overall availability INCREASES

## 6. System Design Interview Approach

### The 4S Framework

**Step 1: Scope (5 minutes)**
- Ask clarifying questions
- Define use cases
- State assumptions
- Calculate rough estimates

**Step 2: Sketch (10-15 minutes)**
- High-level design
- Main components
- Data flow
- API endpoints

**Step 3: Scale (15-20 minutes)**
- Identify bottlenecks
- Discuss trade-offs
- Deep dive into components
- Address specific requirements

**Step 4: Solidify (5-10 minutes)**
- Discuss failure scenarios
- Monitoring and logging
- Future improvements
- Summarize key decisions

### Key Questions to Ask

**Functional Requirements:**
- What are the main features?
- Who are the users?
- What are the inputs/outputs?

**Non-Functional Requirements:**
- How many users? (DAU, MAU)
- What's the read/write ratio?
- What's the expected latency?
- What's the availability target?

**Scale Estimates:**
- Requests per second?
- Data storage requirements?
- Bandwidth requirements?

## 7. Back-of-the-Envelope Calculations

### Handy Numbers

**Time Conversions:**
- 1 day = 86,400 seconds
- 1 month ≈ 2.5 million seconds
- 1 year ≈ 30 million seconds

**Request Calculations:**
- 1 request/sec = 2.5 million requests/month
- 40 requests/sec = 100 million requests/month
- 400 requests/sec = 1 billion requests/month

**Storage Calculations:**
- 1 KB per item × 10M items/month = 10 GB/month
- Text post: ~1 KB
- Image: ~1 MB
- Video minute: ~50 MB

### Quick Estimation Example

**Designing a URL shortener:**
```
Assumptions:
- 10 million new URLs/month
- 100:1 read:write ratio
- 1 KB per URL entry

Calculations:
- Writes: 10M/month = ~4 writes/sec
- Reads: 1B/month = ~400 reads/sec  
- Storage: 10M × 1 KB = 10 GB/month
- 3-year storage: 360 GB
```

## 📚 Next Steps

After mastering fundamentals:
1. Study **Infrastructure** (DNS, CDN, Load Balancers)
2. Learn **Database** scaling techniques
3. Understand **Caching** strategies
4. Practice with **Interview Questions**

## 🔗 Quick Reference Aliases

```bash
kimi-sd-cap              # CAP theorem reference
kimi-sd-latency          # Latency numbers
kimi-sd-powers           # Powers of two
kimi-sd-availability     # Availability calculations
kimi-sd-interview        # Interview approach
```

---

**Source**: donnemartin/system-design-primer
**Enhanced with**: kimi-skills integration patterns
