# 🧠 KIMI MASTER SYSTEM CONFIGURATION
## Version: 5.0 - POWER MERGED CODING PRACTICE
## Created: 2026-04-03
## Status: ACTIVE REFERENCE

---

## 🎯 TRIGGER COMMANDS

### PRIMARY TRIGGER (Use this to activate full system):
```
USE MASTER SYSTEM
or
USE KIMI MASTER
or
ACTIVATE MERGED SKILLS
```

### SECONDARY TRIGGERS:
```
POWER MERGE
FULL STACK
ULTIMATE MODE
MASTER CODING
```

---

## 📚 SYSTEM COMPONENTS

### 1. CORE ALIASES (kimi-aliases-core.sh)
**Purpose:** API-Free expert coding practices
**Path:** ~/.kimi/aliases/kimi-aliases-core.sh

**Golden Rules (10):**
- G1: Root Cause, Never Symptoms
- G2: Test Before Fix
- G3: One Change at a Time
- G4: Understand Before Touching
- G5: Never Assume — Verify
- G6: Explicit Over Implicit
- G7: Error Paths Are First-Class
- G8: State Must Be Owned
- G9: Never Break Adjacent Code
- G10: Leave Code Better Than Found

**Commands:**
- `kimi-golden` - Show 10 Golden Rules
- `kimi-diagnose` - 5-Phase Diagnosis Protocol
- `kimi-checklist` - 10-Point Verification
- `kimi-temp` - Temperature Guidelines
- `kimi-size-check` - Check file sizes (300/40/150)
- `kimi-forbidden` - Scan 20+ anti-patterns
- `kimi-bugs` - Bug Taxonomy (10 types)
- `kimi-quality` - Quality Scoring (7 categories)
- `kimi-py-standards` - Python standards
- `kimi-ts-standards` - TypeScript standards
- `kimi-react-standards` - React standards
- `kimi-prompt-strategies` - 5 prompt templates
- `kimi-start` - Begin session
- `kimi-health` - Project dashboard
- `kimi-debug-strict/trace/silent/flaky/perf` - Debug modes
- `kimi-build` - Building guide
- `kimi-test` - Testing strategy
- `kimi-validate` - Validation pipeline
- `kimi-security` - Security checklist

**Size Limits:**
- File ≤ 300 lines
- Function ≤ 40 lines
- Component ≤ 150 lines

**Forbidden Patterns:**
- Empty catch blocks: catch(e) {}
- any type: : any
- var declarations
- Magic numbers
- Loose equality (==)

---

### 2. GIT ALIASES (kimi-aliases-git.sh)
**Purpose:** Local git operations
**Path:** ~/.kimi/aliases/kimi-aliases-git.sh

**Commands:**
- `kimi-git-standards` - Commit message format
- `kimi-git-branches` - Branch naming conventions
- `kimi-git-workflow` - Daily workflow guide
- `kimi-git-status/log/recent/today/files/diff` - Status & info
- `kimi-git-feature <name>` - Create feature branch
- `kimi-git-bugfix <name>` - Create bugfix branch
- `kimi-git-main` - Switch to main/master
- `kimi-git-stage` - Interactive staging
- `kimi-git-commit` - Commit with prompt
- `kimi-git-feat/fix/docs/test` - Quick commits
- `kimi-git-update` - Fetch and rebase
- `kimi-git-cleanup` - Remove merged branches
- `kimi-git-health` - Repository health

**Commit Format:** `<type>(<scope>): <subject>`
- Types: feat, fix, refactor, test, docs, chore, perf, security

**Branch Format:** `<type>/<description>`
- Types: feature, bugfix, hotfix, refactor, test, docs, chore

---

### 3. GITHUB ALIASES (kimi-aliases-github.sh)
**Purpose:** GitHub CLI integration
**Path:** ~/.kimi/aliases/kimi-aliases-github.sh

**Commands:**
- `kimi-github-config` - Configure API token
- `kimi-github-user` - Show profile
- `kimi-github-repos` - List repositories
- `kimi-github-repo` - View current repo
- `kimi-github-issues` - List issues
- `kimi-github-issue-create` - Create issue
- `kimi-github-prs` - List PRs
- `kimi-github-pr-create` - Create PR
- `kimi-github-pr-checkout <n>` - Checkout PR
- `kimi-github-pr-merge` - Merge PR
- `kimi-github-sync` - Sync with remote
- `kimi-github-activity` - Recent activity
- `kimi-github-releases` - List releases
- `kimi-github-release-create` - Create release
- `kimi-github-file <path>` - View file
- `kimi-github-history` - Repository activity

**Token Location:** ~/.kimi/github.config

---

### 4. Z.AI UPGRADED TOOLS (5 Prompts)
**Purpose:** AI-powered development workflows
**Path:** ~/Desktop/prompting/kimi-upgrading prompts:tools/Z.ai prompts general/

**Prompts:**
- **UPGRADED-1** - Bug Fixation System
  - 5-Layer Detection: Static, Deep Static, Dynamic, Fuzzing, Mutation
  - 5-Hypothesis Scientific Method
  - Root cause analysis

- **UPGRADED-2** - Code Quality Excellence
  - 8 Pillars: Readability, Simplicity, Maintainability, Efficiency, Robustness, Security, Documentation, Observability

- **UPGRADED-3** - Testing Strategies
  - 5-Tier Adversarial Pyramid: Standard (20%), Edge (40%), Adversarial (25%), Chaos (15%), Exploratory (5%)

- **UPGRADED-4** - Free Tools DevOps
  - PM2, Caddy, Docker, Netdata
  - Deployment strategies
  - Cost optimization

- **UPGRADED-5** - Changes Overview
  - Complete changelog
  - Migration guide

**Quick Access:**
- `kimi-z1` - Bug fixation
- `kimi-z2` - Code quality
- `kimi-z3` - Testing
- `kimi-z4` - DevOps
- `kimi-z5` - Changes overview

---

### 5. AWESOME-MERGED-SKILLS (9 Skills)
**Purpose:** Document processing, automation, research
**Path:** awesome-merged-skills/

#### Document Processing (3 skills)
**PDF:**
- `kimi-awesome-pdf` or @awesome-merged-skills/document-processing/pdf/SKILL.md
- Scripts: fill_forms, extract_fields, convert_to_images, check_bounding_boxes

**DOCX:**
- `kimi-awesome-docx` or @awesome-merged-skills/document-processing/docx/SKILL.md
- Scripts: pack, unpack, validate, document creation

**XLSX:**
- `kimi-awesome-xlsx` or @awesome-merged-skills/document-processing/xlsx/SKILL.md
- Scripts: recalc

#### Development Tools (3 skills)
**MCP Builder:**
- `kimi-awesome-mcp` or @awesome-merged-skills/development-tools/mcp-builder/SKILL.md
- Build API servers for Claude
- Python (FastMCP) or Node.js (MCP SDK)
- Scripts: connections.py, evaluation.py

**Skill Creator:**
- `kimi-awesome-skill` or @awesome-merged-skills/development-tools/skill-creator/SKILL.md
- Create custom Claude skills
- Scripts: init_skill.py, validate.py, package_skill.py

**Webapp Testing:**
- `kimi-awesome-webtest` or @awesome-merged-skills/development-tools/webapp-testing/SKILL.md
- Playwright-based testing
- Scripts: with_server.py

#### Automation Framework (1 skill)
**File Organizer:**
- `kimi-awesome-organize` or @awesome-merged-skills/automation-framework/file-organizer/SKILL.md
- Intelligent file organization
- Duplicate detection

#### Research Assistants (2 skills)
**Content Research Writer:**
- `kimi-awesome-content` or @awesome-merged-skills/research-assistants/content-research-writer/SKILL.md

**Lead Research Assistant:**
- `kimi-awesome-leads` or @awesome-merged-skills/research-assistants/lead-research-assistant/SKILL.md

---

### 6. ENHANCED EXTRAS (40+ Aliases)
**Purpose:** Quick helpers for all skills
**Path:** kimi-aliases-enhanced-extras.sh

**Document Processing:**
- `kimi-pdf-fill`, `kimi-pdf-extract`, `kimi-pdf-convert`
- `kimi-docx-create`, `kimi-docx-validate`
- `kimi-xlsx-recalc`

**Development:**
- `kimi-mcp-init`, `kimi-mcp-evaluate`
- `kimi-test-webapp`
- `kimi-skill-init`, `kimi-skill-validate`, `kimi-skill-package`

**Research:**
- `kimi-research-content`, `kimi-research-leads`
- `kimi-meeting-analyze`

**Organization:**
- `kimi-organize-files`, `kimi-organize-downloads`
- `kimi-find-duplicates`

**Creative:**
- `kimi-brand-guidelines`, `kimi-canvas-design`, `kimi-image-enhance`

**Business:**
- `kimi-resume-tailor`, `kimi-invoice-organize`
- `kimi-domain-brainstorm`, `kimi-raffle-pick`, `kimi-changelog`

**Marketing:**
- `kimi-twitter-optimize`, `kimi-ads-extract`, `kimi-dev-growth`

**Communication:**
- `kimi-internal-comms`, `kimi-slack-gif`, `kimi-connect-apps`

---

### 7. INTEGRATED WORKFLOWS (10 Guides)
**Purpose:** Complete workflow integration
**Path:** kimi-aliases-integrated.sh

**Commands:**
- `kimi-workflow-full` - Complete development workflow
- `kimi-skills` - Tool selector by task
- `kimi-devtools` - Development tools guide
- `kimi-docs` - Document processing guide
- `kimi-research` - Research tools guide
- `kimi-creative` - Creative tools guide
- `kimi-business` - Business tools guide
- `kimi-connect` - 1000+ apps connection
- `kimi-index` - Complete tool index
- `kimi-integrated-help` - Integration help

---

## 🔄 COMPLETE WORKFLOWS

### Workflow 1: Bug Fixation (BEST PRACTICE)
```
TRIGGER: Found a bug

1. TRIAGE (30 seconds)
   - Is this expected behavior?
   - Has this ever worked?
   - Is it local-only?

2. USE Z.AI TOOL
   @UPGRADED-1-COMPREHENSIVE-BUG-FIXATION-SYSTEM.md
   OR
   @kimi-z1

3. FOLLOW 5-PHASE DIAGNOSIS
   kimi-diagnose
   - Phase 1: Reproduce
   - Phase 2: Isolate (Binary Search)
   - Phase 3: Categorize (Bug Taxonomy)
   - Phase 4: Root Cause
   - Phase 5: Document

4. CHECK GOLDEN RULES
   kimi-golden
   - G1: Root cause, not symptoms
   - G2: Test before fix
   - G3: One change at a time

5. APPLY FIX
   - Write failing test FIRST
   - Apply minimal fix
   - Verify test passes

6. VERIFY QUALITY
   kimi-checklist (10 points)
   kimi-forbidden (anti-patterns)
   kimi-size-check (limits)

7. COMMIT
   kimi-git-fix
   - Commit message: fix(scope): description
```

### Workflow 2: Feature Development (BEST PRACTICE)
```
TRIGGER: Building new feature

1. RESEARCH (if needed)
   @awesome-merged-skills/research-assistants/content-research-writer/SKILL.md

2. START SESSION
   kimi-start

3. DESIGN
   @UPGRADED-2-CODE-QUALITY-EXCELLENCE.md (8 pillars)
   OR
   @kimi-z2

4. IMPLEMENT
   - Follow language standards:
     * kimi-py-standards (Python)
     * kimi-ts-standards (TypeScript)
     * kimi-react-standards (React)

5. BUILD
   kimi-build
   - Define scope
   - Design interface
   - Implement
   - Validate
   - Test
   - Quality check

6. TEST
   @UPGRADED-3-TESTING-STRATEGIES.md
   OR
   @kimi-z3
   - 5-Tier Pyramid
   - Adversarial testing

7. WEBAPP TEST (if applicable)
   @awesome-merged-skills/development-tools/webapp-testing/SKILL.md
   OR
   kimi-test-webapp

8. VALIDATE
   kimi-validate
   - Size check
   - Forbidden patterns
   - Self-verification
   - Lint & type check
   - Tests
   - Security

9. COMMIT
   kimi-git-feat
   - Commit message: feat(scope): description

10. PUSH & PR
    kimi-github-sync
    kimi-github-pr-create
```

### Workflow 3: DevOps Deployment (BEST PRACTICE)
```
TRIGGER: Deploying to production

1. USE Z.AI TOOL
   @UPGRADED-4-FREE-TOOLS-DEVOPS.md
   OR
   @kimi-z4

2. CHOOSE STACK
   - PM2: Process management
   - Caddy: Reverse proxy + HTTPS
   - Docker: Containerization
   - Netdata: Monitoring

3. CONFIGURE
   - Copy configs from tools/devops/
   - ecosystem.config.js (PM2)
   - Caddyfile (Caddy)
   - docker-compose.yml (Docker)

4. SECURITY CHECK
   kimi-security
   - Input validation
   - Auth/authorization
   - Data protection
   - Injection prevention

5. DEPLOY
   - Deploy app
   - Setup monitoring
   - Configure alerts

6. VERIFY
   - Health checks
   - Logs monitoring
   - Performance metrics

7. CREATE RELEASE
   kimi-github-release-create
   - Tag: vX.Y.Z
   - Generate changelog
```

### Workflow 4: Document Processing (BEST PRACTICE)
```
TRIGGER: Working with documents

1. PDF OPERATIONS
   @awesome-merged-skills/document-processing/pdf/SKILL.md
   OR
   kimi-pdf-fill/extract/convert

   Scripts:
   python3 awesome-merged-skills/document-processing/pdf/scripts/fill_fillable_fields.py form.pdf data.json
   python3 awesome-merged-skills/document-processing/pdf/scripts/extract_form_field_info.pdf document.pdf
   python3 awesome-merged-skills/document-processing/pdf/scripts/convert_pdf_to_images.py document.pdf

2. DOCX OPERATIONS
   @awesome-merged-skills/document-processing/docx/SKILL.md
   OR
   kimi-docx-create/validate

   Scripts:
   python3 awesome-merged-skills/document-processing/docx/scripts/document.py
   python3 awesome-merged-skills/document-processing/docx/ooxml/scripts/validate.py document.docx

3. XLSX OPERATIONS
   @awesome-merged-skills/document-processing/xlsx/SKILL.md
   OR
   kimi-xlsx-recalc

   Scripts:
   python3 awesome-merged-skills/document-processing/xlsx/recalc.py spreadsheet.xlsx
```

### Workflow 5: MCP Server Creation (BEST PRACTICE)
```
TRIGGER: Building API integration for Claude

1. INITIALIZE
   @awesome-merged-skills/development-tools/mcp-builder/SKILL.md
   OR
   kimi-mcp-init

2. CHOOSE FRAMEWORK
   - Python: FastMCP
   - Node.js: MCP SDK

3. DESIGN TOOLS
   - Build for workflows, not just endpoints
   - Consolidate related operations
   - Focus on complete tasks

4. IMPLEMENT
   - Follow skill guide
   - Create tools
   - Handle errors

5. EVALUATE
   kimi-mcp-evaluate
   OR
   python3 awesome-merged-skills/development-tools/mcp-builder/scripts/evaluation.py

6. TEST
   - Test with Claude
   - Verify functionality
   - Document usage

7. PACKAGE
   - Create documentation
   - Add examples
   - Share/deploy
```

### Workflow 6: Skill Creation (BEST PRACTICE)
```
TRIGGER: Creating reusable Claude skill

1. INITIALIZE
   @awesome-merged-skills/development-tools/skill-creator/SKILL.md
   OR
   kimi-skill-init my-skill

2. STRUCTURE
   my-skill/
   ├── SKILL.md (required)
   ├── scripts/ (optional)
   ├── references/ (optional)
   └── assets/ (optional)

3. WRITE SKILL.md
   - YAML frontmatter (name, description)
   - Markdown instructions
   - Progressive disclosure design

4. ADD RESOURCES
   - scripts/ - Executable code
   - references/ - Documentation
   - assets/ - Templates

5. VALIDATE
   kimi-skill-validate my-skill/
   OR
   python3 awesome-merged-skills/development-tools/skill-creator/scripts/quick_validate.py my-skill/

6. PACKAGE
   kimi-skill-package my-skill/
   OR
   python3 awesome-merged-skills/development-tools/skill-creator/scripts/package_skill.py my-skill/

7. DISTRIBUTE
   - Share with team
   - Add to repository
   - Document usage
```

---

## 🎯 WHEN TO USE WHAT

### For Bug Fixing:
1. `kimi-diagnose` - Follow 5-phase protocol
2. `@UPGRADED-1` - Bug fixation system
3. `kimi-golden` - Apply 10 Golden Rules
4. `kimi-checklist` - Verify 10 points

### For Code Review:
1. `@UPGRADED-2` - Code quality excellence
2. `kimi-forbidden` - Check anti-patterns
3. `kimi-size-check` - Verify size limits
4. `kimi-quality` - Score quality

### For Testing:
1. `@UPGRADED-3` - Testing strategies
2. `kimi-test-webapp` - Playwright testing
3. `kimi-test` - Testing strategy guide
4. `kimi-validate` - Full validation

### For Deployment:
1. `@UPGRADED-4` - DevOps tools
2. `kimi-github-release-create` - Create release
3. `kimi-security` - Security checklist
4. `kimi-deploy` - Deployment guide

### For Documents:
1. `@awesome-merged-skills/document-processing/*` - Process PDF/DOCX/XLSX
2. `kimi-pdf-*`, `kimi-docx-*`, `kimi-xlsx-*` - Quick helpers

### For Research:
1. `@awesome-merged-skills/research-assistants/*` - Content/lead research
2. `kimi-research-*` - Quick helpers

### For Organization:
1. `@awesome-merged-skills/automation-framework/file-organizer` - Organize files
2. `kimi-organize-*` - Quick helpers

---

## 📊 QUALITY GATES

### Before Committing (MANDATORY):
```
1. kimi-size-check (300/40/150 limits)
2. kimi-forbidden (no anti-patterns)
3. kimi-checklist (10-point verification)
4. git status (all changes staged)
```

### Before Pushing (MANDATORY):
```
1. Tests pass
2. Type checking passes
3. Security scan passes
4. Quality score ≥ 4.0/5.0
```

### Before Deploying (MANDATORY):
```
1. kimi-security (security checklist)
2. All tests pass
3. Performance verified
4. Documentation updated
```

---

## 🔗 QUICK REFERENCE

### All Commands by Category:

**Core (40+):**
`kimi-golden`, `kimi-diagnose`, `kimi-checklist`, `kimi-temp`, `kimi-size-check`, `kimi-forbidden`, `kimi-bugs`, `kimi-quality`, `kimi-py-standards`, `kimi-ts-standards`, `kimi-react-standards`, `kimi-prompt-strategies`, `kimi-start`, `kimi-health`, `kimi-check`, `kimi-done`, `kimi-debug`, `kimi-debug-strict`, `kimi-debug-trace`, `kimi-debug-silent`, `kimi-debug-flaky`, `kimi-debug-perf`, `kimi-build`, `kimi-test`, `kimi-validate`, `kimi-security`, `kimi-find`, `kimi-todos`, `kimi-remember`, `kimi-recall`, `kimi-help`, `kimi-version`

**Git (20+):**
`kimi-git-standards`, `kimi-git-branches`, `kimi-git-workflow`, `kimi-git-status`, `kimi-git-log`, `kimi-git-recent`, `kimi-git-today`, `kimi-git-files`, `kimi-git-diff`, `kimi-git-health`, `kimi-git-feature`, `kimi-git-bugfix`, `kimi-git-main`, `kimi-git-branch`, `kimi-git-branches`, `kimi-git-update`, `kimi-git-cleanup`, `kimi-git-stage`, `kimi-git-commit`, `kimi-git-feat`, `kimi-git-fix`, `kimi-git-docs`, `kimi-git-test`, `kimi-git-preview`, `kimi-git-undo`, `kimi-git-discard`, `kimi-git-stash`, `kimi-git-stash-list`, `kimi-git-stash-pop`, `kimi-git-stash-drop`, `kimi-git-help`, `kimi-git-version`

**GitHub (30+):**
`kimi-github-config`, `kimi-github-user`, `kimi-github-help`, `kimi-github-version`, `kimi-github-repos`, `kimi-github-repo`, `kimi-github-issues`, `kimi-github-issue`, `kimi-github-issue-create`, `kimi-github-issue-close`, `kimi-github-prs`, `kimi-github-pr`, `kimi-github-pr-create`, `kimi-github-pr-checkout`, `kimi-github-pr-merge`, `kimi-github-pr-diff`, `kimi-github-pr-review`, `kimi-github-branches`, `kimi-github-branch-delete`, `kimi-github-insights`, `kimi-github-contributors`, `kimi-github-actions`, `kimi-github-trigger`, `kimi-github-protect`, `kimi-github-search`, `kimi-github-releases`, `kimi-github-release-create`, `kimi-github-file`, `kimi-github-history`, `kimi-github-sync`, `kimi-github-activity`, `kimi-github-notifications`, `kimi-github-cleanup`

**Enhanced Extras (40+):**
`kimi-pdf-fill`, `kimi-pdf-extract`, `kimi-pdf-convert`, `kimi-docx-create`, `kimi-docx-validate`, `kimi-xlsx-recalc`, `kimi-mcp-init`, `kimi-mcp-evaluate`, `kimi-test-webapp`, `kimi-skill-init`, `kimi-skill-validate`, `kimi-skill-package`, `kimi-changelog`, `kimi-research-content`, `kimi-research-leads`, `kimi-meeting-analyze`, `kimi-organize-files`, `kimi-organize-downloads`, `kimi-find-duplicates`, `kimi-brand-guidelines`, `kimi-canvas-design`, `kimi-image-enhance`, `kimi-resume-tailor`, `kimi-invoice-organize`, `kimi-domain-brainstorm`, `kimi-raffle-pick`, `kimi-twitter-optimize`, `kimi-ads-extract`, `kimi-dev-growth`, `kimi-internal-comms`, `kimi-slack-gif`, `kimi-connect-apps`, `kimi-awesome-help`, `kimi-workflow-full`

**Integrated Workflows (10):**
`kimi-workflow-full`, `kimi-skills`, `kimi-devtools`, `kimi-docs`, `kimi-research`, `kimi-creative`, `kimi-business`, `kimi-connect`, `kimi-index`, `kimi-integrated-help`

**Z.AI Quick Access (5):**
`kimi-z1`, `kimi-z2`, `kimi-z3`, `kimi-z4`, `kimi-z5`

**Awesome Quick Access (9):**
`kimi-awesome-pdf`, `kimi-awesome-docx`, `kimi-awesome-xlsx`, `kimi-awesome-mcp`, `kimi-awesome-skill`, `kimi-awesome-webtest`, `kimi-awesome-organize`, `kimi-awesome-content`, `kimi-awesome-leads`

---

## 🆘 HELP SYSTEM

### General Help:
```bash
kimi-help              # Core aliases
kimi-git-help          # Git aliases
kimi-github-help       # GitHub aliases
kimi-integrated-help   # Integration guide
kimi-awesome-help      # Awesome skills
```

### Workflow Help:
```bash
kimi-workflow-full     # Complete workflow
kimi-skills            # Tool selector
kimi-index             # Tool index
```

---

## 📈 STATISTICS

- **Total Aliases:** 150+
- **Core Skills:** 5 Z.AI + 9 Awesome = 14
- **Workflow Guides:** 10
- **Python Scripts:** 25+
- **Golden Rules:** 10
- **Anti-patterns:** 20+
- **Quality Points:** 10
- **App Integrations:** 1000+ (via Composio)

---

## 🎓 BEST PRACTICES SUMMARY

### Coding:
1. Follow 10 Golden Rules
2. Use explicit types
3. Handle all errors
4. Write tests first
5. One change at a time

### Debugging:
1. 5-Phase Diagnosis
2. Root cause, not symptoms
3. Binary search isolation
4. Regression tests

### Quality:
1. 10-Point Checklist
2. No forbidden patterns
3. Size limits (300/40/150)
4. Quality score ≥ 4.0

### Git:
1. Conventional commits
2. Feature branches
3. Pull requests
4. Clean history

### Documentation:
1. Document why, not what
2. Keep SKILL.md lean
3. Use references/ for details
4. Progressive disclosure

---

## 🔒 SECURITY CHECKLIST

### Input Validation:
- [ ] Sanitize all inputs
- [ ] Validate types at boundaries
- [ ] Check file path traversal

### Authentication:
- [ ] Verify auth on protected routes
- [ ] Check ownership
- [ ] Validate tokens

### Data Protection:
- [ ] No secrets in code
- [ ] Encrypt sensitive data
- [ ] Use HTTPS

### Dependencies:
- [ ] Check vulnerabilities
- [ ] Keep updated
- [ ] Minimize count

---

## 🚀 VERSION HISTORY

- **v4.0** - Initial aliases
- **v4.1** - Separated modules, GitHub integration
- **v4.2** - Integrated awesome-claude-skills
- **v5.0** - POWER MERGED SYSTEM (this configuration)

---

## 📞 TRIGGER REMINDER

**To activate this full system, say:**
```
USE MASTER SYSTEM
```

**I will then:**
1. Load all aliases
2. Reference this configuration
3. Apply best practices
4. Use appropriate tools for the task

---

**Status:** ACTIVE
**Last Updated:** 2026-04-03
**Repository:** https://github.com/DrKhaled123/khaled-dev-skills

🎯 **READY FOR POWER MERGED CODING!**

---

## 🚀 VERSION 2 ADDITIONS (v5.1)

### Additional 15 Skills Merged (No CI/CD):

#### Productivity Tools (3):
- **changelog-generator** - Auto-generate changelogs from git
- **meeting-insights-analyzer** - Analyze meeting transcripts
- **slack-gif-creator** - Create Slack-optimized GIFs

#### Marketing Tools (2):
- **competitive-ads-extractor** - Analyze competitor ads
- **twitter-algorithm-optimizer** - Optimize tweets for reach

#### Creative Tools (4):
- **brand-guidelines** - Create brand guidelines
- **canvas-design** - Visual design assistant
- **image-enhancer** - Image quality improvement
- **artifacts-builder** - Multi-component builds

#### Business Tools (3):
- **invoice-organizer** - Invoice management
- **tailored-resume-generator** - Job-specific resumes
- **developer-growth-analysis** - Track skill growth

#### Utility Tools (3):
- **domain-name-brainstormer** - Generate domain ideas
- **raffle-winner-picker** - Fair random selection
- **video-downloader** - YouTube video downloads

**Total Skills:** 9 (v1) + 15 (v2) = 24

**New Aliases:**
- kimi-changelog-gen
- kimi-meeting-analyze
- kimi-slack-gif
- kimi-ads-extract
- kimi-twitter-optimize
- kimi-brand-guide
- kimi-canvas-design
- kimi-image-enhance
- kimi-artifacts
- kimi-invoice-organize
- kimi-resume-tailor
- kimi-dev-growth
- kimi-domain-brainstorm
- kimi-raffle-pick
- kimi-video-download

**Quick Commands:**
- kimi-v2-help - Show v2 skills
- kimi-all-awesome - Show all 24 skills

---

## 📊 UPDATED STATISTICS (v5.1)

- Total Aliases: 165+ (was 150+)
- Core Skills: 5 Z.AI + 24 Awesome = 29
- Workflow Guides: 10
- Python Scripts: 25+
- Categories: 9 (Core, Git, GitHub, Docs, Dev, Productivity, Marketing, Creative, Business, Utility)

---

Updated: 2026-04-03
Version: 5.1

---

## 🚀 VERSION 5.2 ADDITIONS

### Project-Based Learning Skills (NEW!)

Added 200+ programming projects from practical-tutorials/project-based-learning:

#### Project Categories (8):
1. **Python Projects** (40+) - Web, ML, Automation, Games
2. **JavaScript Projects** (50+) - React, Node, Vue, Angular, Vanilla
3. **Go Projects** (15+) - Web, Blockchain, Systems
4. **Rust Projects** (15+) - OS, Emulators, WASM
5. **C/C++ Projects** (30+) - Compilers, OS, Games, Tools
6. **Web Projects** (25+) - MERN, MEAN, MEVN, Full-Stack
7. **ML Projects** (35+) - Deep Learning, NLP, Computer Vision
8. **Mobile Projects** (45+) - React Native, Flutter, iOS, Android

#### New Aliases (18):
- `kimi-python-projects` - Show Python projects
- `kimi-js-projects` - Show JavaScript projects
- `kimi-go-projects` - Show Go projects
- `kimi-rust-projects` - Show Rust projects
- `kimi-cpp-projects` - Show C/C++ projects
- `kimi-web-projects` - Show full-stack projects
- `kimi-ml-projects` - Show ML/AI projects
- `kimi-mobile-projects` - Show mobile projects
- `kimi-project-beginner` - Show beginner projects
- `kimi-project-intermediate` - Show intermediate projects
- `kimi-project-advanced` - Show advanced projects
- `kimi-project-expert` - Show expert projects
- `kimi-project-help` - Show all project categories
- `kimi-project-stats` - Show project statistics

#### Learning Paths:
1. **Web Developer** (16 weeks) - JS → React/Node → Full-Stack
2. **Python Developer** (16 weeks) - Python → Flask/Django → ML
3. **Systems Programmer** (20 weeks) - C/C++ → OS → Compilers
4. **Mobile Developer** (16 weeks) - React Native/Flutter → Production
5. **ML Engineer** (20 weeks) - Python → ML → Deep Learning

#### Statistics:
- Total Projects: 200+
- Programming Languages: 22
- Beginner Projects: 80+
- Intermediate Projects: 90+
- Advanced Projects: 50+
- Expert Projects: 20+

---

## 📈 UPDATED STATISTICS (v5.2)

                    v5.1           v5.2            CHANGE
                    ─────          ─────           ──────
Core Aliases:       90+            90+             ─
Git Aliases:        20+            20+             ─
GitHub Aliases:     30+            30+             ─
Enhanced Extras:    55+            55+             ─
Project Learning:   0              18              +18 NEW
Z.AI Tools:         5              5               ─
Awesome Skills v1:  9              9               ─
Awesome Skills v2:  15             15              ─
─────────────────────────────────────────────────────────────────
TOTAL SKILLS:       29             30              +1 (category)
TOTAL ALIASES:      ~165           ~183            +18
WORKFLOW GUIDES:    10             10              ─
PYTHON SCRIPTS:     40+            40+             ─
PROJECTS:           0              200+            +200+

---

Updated: 2026-04-03
Version: 5.2
