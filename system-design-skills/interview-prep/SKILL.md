# System Design Interview Preparation

Master the system design interview with 8 practice questions and proven strategies.

## 🎯 Trigger Phrases
- "System design interview"
- "Design Pastebin"
- "Design Twitter"
- "Scale a system to millions"
- "Interview preparation"

## 📋 The 4S Interview Framework

### Step 1: SCOPE (5 minutes)
**Gather Requirements**

Ask clarifying questions:
- Who are the users? How many?
- What are the main features?
- What's the read/write ratio?
- What's the expected scale?
- What are the latency requirements?

**Calculate Estimates:**
- Requests per second
- Storage requirements
- Bandwidth needs

### Step 2: SKETCH (10-15 minutes)
**High-Level Design**

Draw the big picture:
- Client layer (Web, Mobile)
- API layer (Load balancer, API Gateway)
- Application layer (Services)
- Data layer (Databases, Cache)
- Supporting services (Message queues, CDN)

**Define APIs:**
```
POST /api/resource    # Create
GET /api/resource/:id # Read
PUT /api/resource/:id # Update
DELETE /api/resource/:id # Delete
```

### Step 3: SCALE (15-20 minutes)
**Deep Dive Components**

For each component:
- Database choice (SQL vs NoSQL)
- Caching strategy
- Scaling approach
- Failure handling

**Identify Bottlenecks:**
- Single points of failure
- Hot shards/partitions
- Expensive operations

### Step 4: SOLIDIFY (5-10 minutes)
**Discuss Trade-offs**

- Alternative approaches
- Future improvements
- Monitoring and alerting
- Security considerations

## 🎓 The 8 Essential Interview Questions

### 1. Design Pastebin / Bit.ly

**Problem:** Create a service like Pastebin (text sharing) or Bit.ly (URL shortening).

**Requirements:**
- User pastes text → gets unique URL
- User visits URL → sees content
- URLs expire optionally
- Analytics: view counts

**Key Design Decisions:**
- URL generation: MD5 hash + Base62 encoding
- Storage: SQL (metadata) + Object Store (content)
- Read-heavy: 100:1 read:write ratio

**Architecture:**
```
Client → Load Balancer → Web Server → Write API
                          ↓
                    SQL Database (shortlink → path)
                          ↓
                    Object Store (S3)
```

**Scale Estimates:**
- 10M pastes/month
- 100M reads/month
- Storage: 10 GB/month (1KB per paste)

**Reference**: @advanced-developer-view/system-design-primer/solutions/system_design/pastebin/README.md

---

### 2. Design Twitter Timeline & Search

**Problem:** Design Twitter's news feed and search functionality.

**Challenges:**
- Celebrity problem (1M followers × post = 1M writes)
- Real-time timeline generation
- Search indexing

**Approaches:**

**Fan-out on Write (Push):**
- When user posts → Push to all followers' feeds
- Pros: Fast read (pre-computed)
- Cons: Expensive for celebrities

**Fan-out on Read (Pull):**
- Read time: Query all following, merge
- Pros: Cheap write
- Cons: Expensive read, slow for active users

**Hybrid Approach:**
- Normal users: Fan-out on write
- Celebrities (>1M followers): Fan-out on read
- Celebrities' tweets stored separately, merged at read time

**Search Architecture:**
- Inverted index: word → list of tweet IDs
- Real-time indexing with message queues
- Elasticsearch or Solr

**Reference**: @advanced-developer-view/system-design-primer/solutions/system_design/twitter/README.md

---

### 3. Design a Web Crawler

**Problem:** Build a distributed web crawler like Google.

**Components:**
1. **URL Frontier**: Queue of URLs to crawl
2. **Downloader**: HTTP client to fetch pages
3. **Content Parser**: Extract links and content
4. **Content Seen**: Deduplication check
5. **URL Filter**: Exclude certain URLs
6. **URL Seen**: Don't crawl same URL twice

**Optimizations:**
- Politeness: Rate limit per domain
- Distributed: Multiple crawler nodes
- Prioritization: PageRank or freshness

**Scale:**
- Billions of pages
- Terabytes of data
- Distributed storage (GFS/HDFS)

**Reference**: @advanced-developer-view/system-design-primer/solutions/system_design/web_crawler/README.md

---

### 4. Design Mint.com

**Problem:** Personal finance aggregation service.

**Core Features:**
- Connect to bank accounts
- Categorize transactions
- Show spending insights

**Challenges:**
- Security (bank credentials)
- Data aggregation (10,000+ banks)
- Categorization (ML/Rule-based)

**Architecture:**
```
User → Web App → API Gateway → Account Service
                     ↓
                Aggregation Service → Bank APIs
                     ↓
                Categorization Service
                     ↓
                Analytics Service
```

**Security:**
- Encrypt data at rest and in transit
- Token-based authentication with banks
- PCI DSS compliance

**Reference**: @advanced-developer-view/system-design-primer/solutions/system_design/mint/README.md

---

### 5. Design Social Network Data Structures

**Problem:** Data structures for a social network (Facebook).

**Entities:**
- User (profile, settings)
- Post (content, media, timestamp)
- Connection (friend/follow relationships)
- Like, Comment, Share

**Graph Storage:**
- Adjacency list for connections
- SQL for structured data
- Graph database for recommendations

**Feed Generation:**
- Pre-compute for active users
- On-demand for less active
- Cache popular posts

**Friend Recommendations:**
- Mutual friends count
- Graph traversal (BFS)
- Collaborative filtering

**Reference**: @advanced-developer-view/system-design-primer/solutions/system_design/social_graph/README.md

---

### 6. Design Query Cache for Search Engine

**Problem:** Cache for search query results.

**Why Cache?**
- 20% of queries account for 80% of traffic
- Expensive to compute results
- Improves latency

**Cache Strategy:**
- Query → Hash → Cache key
- TTL based on query type
- LRU eviction

**Challenges:**
- Cache invalidation when index updates
- Personalized results (different per user)
- Miss Storm: Cache miss causes DB overload

**Solutions:**
- Separate caches for popular vs long-tail
- Cache warming for popular queries
- Circuit breaker for cache failures

**Reference**: @advanced-developer-view/system-design-primer/solutions/system_design/query_cache/README.md

---

### 7. Design Amazon Sales Rank

**Problem:** Real-time sales ranking by category.

**Requirements:**
- Top N products per category
- Update in near real-time
- Handle flash sales traffic

**Approach 1: MapReduce (Batch)**
- Hourly/daily aggregation
- Good for historical ranks
- Not real-time

**Approach 2: Stream Processing (Real-time)**
- Kafka/Kinesis for event stream
- Apache Flink/Spark Streaming
- Incremental updates

**Data Structures:**
- Priority queue per category
- Count-Min Sketch for approximations
- Time-decay for trending

**Reference**: @advanced-developer-view/system-design-primer/solutions/system_design/sales_rank/README.md

---

### 8. Design System for Millions of Users on AWS

**Problem:** Scale from single server to millions of users.

**Evolution Phases:**

**Phase 1: Single Server**
- Web + App + DB on one machine
- Good for: <1000 users

**Phase 2: Separate Database**
- Web/App server + Database server
- Good for: <10,000 users

**Phase 3: Load Balancer + Multiple Servers**
- ELB + Auto Scaling Group
- Stateless application servers
- Good for: <100,000 users

**Phase 4: Caching + CDN**
- ElastiCache (Redis/Memcached)
- CloudFront CDN
- Good for: <1M users

**Phase 5: Database Scaling**
- RDS Read Replicas
- Database sharding
- Good for: <10M users

**Phase 6: Microservices**
- Service decomposition
- Container orchestration (ECS/EKS)
- Good for: 10M+ users

**Phase 7: Global Scale**
- Multi-region deployment
- Global databases (DynamoDB Global)
- Good for: 100M+ users

**Reference**: @advanced-developer-view/system-design-primer/solutions/system_design/scaling_aws/README.md

## 📊 Common Patterns Summary

| Question | Key Concepts | Data Store |
|----------|--------------|------------|
| Pastebin | URL generation, Object storage | SQL + S3 |
| Twitter | Fan-out, Timeline, Search | NoSQL + Search |
| Web Crawler | Queue, Deduplication, Politeness | Distributed FS |
| Mint | Security, Aggregation, Categorization | SQL + ML |
| Social Network | Graph, Feed, Recommendations | Graph DB |
| Query Cache | LRU, Invalidation, Warming | Redis |
| Sales Rank | Stream processing, Top-K | Stream + Cache |
| AWS Scaling | Evolution, Auto-scaling, Multi-region | Various |

## 💡 Interview Tips

**Do's:**
✅ Ask clarifying questions
✅ Think out loud
✅ Start simple, then scale
✅ Discuss trade-offs
✅ Calculate back-of-envelope numbers
✅ Mention real-world examples

**Don'ts:**
❌ Jump to complex solutions immediately
❌ Ignore requirements
❌ Forget about failure scenarios
❌ Skip the high-level design
❌ Be silent for long periods

## 🎯 Practice Strategy

**Week 1-2: Learn Patterns**
- Study all 8 questions
- Understand the solutions
- Draw the architectures

**Week 3-4: Practice Out Loud**
- Pick a question
- Set timer for 45 minutes
- Talk through the design
- Record yourself

**Week 5-6: Mock Interviews**
- Practice with a friend
- Get feedback
- Iterate on approach

**Week 7+: Refine**
- Focus on weak areas
- Study company-specific architectures
- Stay updated on new technologies

## 🔗 Quick Access

```bash
# View specific solutions
kimi-sd-pastebin      # Pastebin/Bit.ly design
kimi-sd-twitter       # Twitter timeline design
kimi-sd-crawler       # Web crawler design
kimi-sd-mint          # Mint.com design
kimi-sd-social        # Social network design
kimi-sd-search        # Search cache design
kimi-sd-ranking       # Sales ranking design
kimi-sd-scaling       # AWS scaling design

# General interview help
kimi-sd-interview     # Interview framework
kimi-sd-questions     # All 8 questions
```

---

**Remember**: System design interviews are about demonstrating your thought process, not getting the "perfect" answer!
