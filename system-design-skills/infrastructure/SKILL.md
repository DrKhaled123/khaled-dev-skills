# Infrastructure Components

Essential building blocks of scalable distributed systems.

## 🎯 Trigger Phrases
- "How does DNS work?"
- "CDN vs Load balancer"
- "Reverse proxy explained"
- "System components"
- "Infrastructure design"

## 1. Domain Name System (DNS)

### What is DNS?
Translates human-readable domain names (www.example.com) to IP addresses (93.184.216.34).

### How It Works
```
1. User types: www.example.com
2. Browser checks cache → OS cache → Router cache
3. Recursive DNS resolver queries:
   - Root DNS server (.) → TLD server (.com)
   - Authoritative DNS server (example.com)
4. Returns IP address to client
5. Client connects to server
```

### DNS Record Types

| Record | Purpose | Example |
|--------|---------|---------|
| **A** | Maps domain to IPv4 | example.com → 93.184.216.34 |
| **AAAA** | Maps domain to IPv6 | example.com → 2606:2800:220:1:248:1893:25c8:1946 |
| **CNAME** | Domain alias | www.example.com → example.com |
| **MX** | Mail servers | @ → mail.example.com |
| **NS** | Name servers | Points to DNS servers |
| **TXT** | Text records | SPF, DKIM verification |

### Advanced DNS Features

**Weighted Round Robin:**
- Distribute traffic unevenly
- A/B testing
- Gradual rollout

**Latency-based Routing:**
- Route to nearest server
- AWS Route 53 feature
- Improves response time

**Geolocation Routing:**
- Route based on user location
- Content localization
- Compliance requirements

### DNS Caching

**Time To Live (TTL):**
- Browser cache: Set by OS/browser
- OS cache: Uses TTL from DNS response
- Router/ISP cache: Intermediate caching

**Best Practices:**
- Lower TTL before planned changes (300s)
- Higher TTL for stable records (86400s = 1 day)
- Balance between performance and flexibility

### Disadvantages
- DNS propagation delays (TTL-dependent)
- Additional lookup latency (mitigated by caching)
- Management complexity
- Vulnerable to DDoS attacks (e.g., Dyn attack 2016)

## 2. Content Delivery Network (CDN)

### What is a CDN?
Globally distributed network of proxy servers serving content from locations closer to users.

### Benefits
1. **Reduced Latency**: Content from nearest edge server
2. **Reduced Load**: Offloads traffic from origin
3. **Improved Availability**: Distributed across regions
4. **DDoS Protection**: Absorbs attack traffic

### CDN Types

**Push CDN:**
- You upload content to CDN
- Full control over content
- Good for: Small sites, infrequent updates
- Examples: AWS CloudFront with push, KeyCDN

**Pull CDN:**
- CDN fetches content on first request
- Automatic caching
- Good for: Large sites, frequently updated content
- Examples: CloudFlare, AWS CloudFront (default)

### How Pull CDN Works
```
1. First request: User → CDN Edge (miss)
2. CDN fetches from Origin
3. CDN caches content
4. Subsequent requests: User → CDN Edge (hit)
5. TTL expiration → Fetch fresh content
```

### CDN Configuration

**Cache Headers:**
```http
Cache-Control: public, max-age=31536000  # 1 year for static assets
Cache-Control: no-cache                   # Dynamic content
```

**Cache Invalidation:**
- Versioned filenames: `style.v123.css`
- Purge API: Invalidate specific URLs
- Wildcard purges: Invalidate patterns

### When to Use CDN
✅ Static assets (JS, CSS, images, videos)
✅ Downloadable content
✅ High-traffic websites
✅ Global user base

❌ Dynamic personal data
❌ Highly sensitive content
❌ Very frequently changing data

## 3. Load Balancer

### What is a Load Balancer?
Distributes incoming traffic across multiple servers to prevent overload and eliminate single points of failure.

### Types of Load Balancers

**Hardware Load Balancers:**
- F5 BIG-IP, Citrix NetScaler
- High performance, expensive
- Dedicated appliances

**Software Load Balancers:**
- HAProxy, Nginx, Traefik
- Cost-effective, flexible
- Easy to configure

**Cloud Load Balancers:**
- AWS ELB/ALB, Google Cloud LB, Azure Load Balancer
- Managed service, auto-scaling
- Integration with cloud features

### Load Balancing Algorithms

| Algorithm | Description | Best For |
|-----------|-------------|----------|
| **Round Robin** | Sequential distribution | Equal capacity servers |
| **Weighted Round Robin** | Based on server capacity | Unequal capacity |
| **Least Connections** | To server with fewest active | Long connections |
| **Least Response Time** | Fastest responding server | Performance critical |
| **IP Hash** | Same client → same server | Session persistence |
| **Random** | Random distribution | Simple distribution |

### Layer 4 vs Layer 7 Load Balancing

**Layer 4 (Transport Layer):**
- Decisions based on: IP address, Port, TCP/UDP
- Faster, less processing
- Example: Forward TCP port 80 traffic
- Does NOT inspect packet content

**Layer 7 (Application Layer):**
- Decisions based on: HTTP headers, URL, Cookies, Content
- Smarter routing possible
- Example: Route `/api/*` to API servers, `/static/*` to static servers
- Can inspect and modify HTTP requests

### Load Balancer Benefits

1. **Prevents Overload**: Distributes traffic evenly
2. **Health Checks**: Removes failed servers
3. **SSL Termination**: Offloads encryption from backends
4. **Session Persistence**: Sticky sessions via cookies
5. **High Availability**: Active-passive or active-active setup

### Disadvantages
- Single point of failure (mitigated with multiple LB)
- Adds complexity
- Additional latency (usually minimal)
- Cost (hardware or cloud)

## 4. Reverse Proxy

### What is a Reverse Proxy?
A web server that centralizes internal services and provides unified interfaces to the public.

### Reverse Proxy vs Load Balancer

| Aspect | Reverse Proxy | Load Balancer |
|--------|--------------|---------------|
| **Primary Role** | Unified entry point | Traffic distribution |
| **Scope** | Can work with 1 server | Needs 2+ servers |
| **Functions** | Security, caching, SSL | Distribution, health checks |
| **Examples** | Nginx, Apache | HAProxy, AWS ELB |

**Note**: Many solutions do both (Nginx, HAProxy, AWS ALB)

### Reverse Proxy Benefits

**Security:**
- Hides backend server details
- IP blacklist/whitelist
- Rate limiting
- DDoS protection

**Performance:**
- SSL termination
- Compression (gzip)
- Caching static content
- Connection pooling

**Flexibility:**
- Change backends without DNS changes
- A/B testing routes
- Path-based routing
- Easy maintenance (drain connections)

### Common Reverse Proxy Patterns

**API Gateway:**
```
Client → Reverse Proxy → Auth Service → API Servers
              ↓
         Rate Limiting
```

**Static + Dynamic Separation:**
```
Client → Reverse Proxy → /static/* → Static Server (Nginx)
                    ↳ /api/* → Application Server
```

## 5. Application Layer

### Microservices Architecture

**Definition:** Suite of independently deployable, small, modular services.

**Characteristics:**
- Single responsibility per service
- Independent deployment
- Own database (database per service)
- Inter-service communication via APIs
- Polyglot programming possible

**Benefits:**
- Independent scaling
- Technology flexibility
- Team autonomy
- Easier maintenance
- Fault isolation

**Challenges:**
- Distributed system complexity
- Network latency
- Data consistency
- Testing complexity
- Operational overhead

### Service Discovery

**Problem:** How do services find each other in dynamic environments?

**Solutions:**
- **Consul**: Service mesh with health checks
- **etcd**: Distributed key-value store (Kubernetes uses it)
- **Zookeeper**: Centralized coordination
- **Eureka**: Netflix service registry

**Pattern:**
```
1. Service starts → Registers with Service Registry
2. Client needs service → Queries Registry
3. Registry returns healthy instance locations
4. Client connects directly
```

## 6. Infrastructure Decision Matrix

| Component | When to Use | Alternatives |
|-----------|-------------|--------------|
| **DNS** | Always needed | hosts file (local only) |
| **CDN** | Global users, static content | Single origin server |
| **Load Balancer** | Multiple servers | DNS round-robin (crude) |
| **Reverse Proxy** | Security, SSL, routing | Direct client access |
| **Microservices** | Large teams, scale independently | Monolith |

## 7. Common Architecture Patterns

**3-Tier Architecture:**
```
Client → Load Balancer → Web Servers → Application Servers → Database
              ↓
         CDN (static assets)
```

**Microservices Architecture:**
```
Client → API Gateway → Service Mesh → Services (Auth, User, Order, etc.)
              ↓
         Service Discovery
```

**Serverless Architecture:**
```
Client → CDN → API Gateway → Lambda Functions → Database
                    ↓
              Event Triggers
```

## 📚 Related Topics

- **Caching**: How to cache at each layer
- **Databases**: Scaling data layer
- **Scalability**: Horizontal scaling strategies
- **Security**: Authentication, authorization

## 🔗 Quick Reference

```bash
kimi-sd-dns         # DNS deep dive
kimi-sd-cdn         # CDN patterns
kimi-sd-lb          # Load balancer guide
kimi-sd-proxy       # Reverse proxy explained
kimi-sd-micro       # Microservices patterns
```

---

**Next**: Study `databases/SKILL.md` for data layer scaling!
