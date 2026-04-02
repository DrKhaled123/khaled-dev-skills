#!/bin/bash
# KIMI CORE ALIASES v4.1 - API-Free, Ready to Use
# Pure expert coding practices - no external APIs or git required
# All commands produce trusted, verified results immediately

# ============================================
# COLOR CODES (with fallback detection)
# ============================================
if [ -t 1 ]; then
    KIMI_RED='\033[0;31m'
    KIMI_GREEN='\033[0;32m'
    KIMI_YELLOW='\033[1;33m'
    KIMI_BLUE='\033[0;34m'
    KIMI_PURPLE='\033[0;35m'
    KIMI_CYAN='\033[0;36m'
    KIMI_NC='\033[0m'
else
    KIMI_RED=''
    KIMI_GREEN=''
    KIMI_YELLOW=''
    KIMI_BLUE=''
    KIMI_PURPLE=''
    KIMI_CYAN=''
    KIMI_NC=''
fi

# ============================================
# HELPER FUNCTIONS
# ============================================
kimi_log() { echo -e "${KIMI_BLUE}[KIMI]${KIMI_NC} $1"; }
kimi_success() { echo -e "${KIMI_GREEN}[✓]${KIMI_NC} $1"; }
kimi_warn() { echo -e "${KIMI_YELLOW}[!]${KIMI_NC} $1"; }
kimi_error() { echo -e "${KIMI_RED}[✗]${KIMI_NC} $1"; }

# ============================================
# 🏆 GOLDEN RULES
# ============================================
kimi_golden() {
    echo ""
    echo "🏆 UNIVERSAL GOLDEN RULES (Always Active)"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "G1 — ROOT CAUSE, NEVER SYMPTOMS"
    echo "   Never patch the surface. Trace to the origin."
    echo "   □ Ask: What assumption is being violated?"
    echo "   □ Ask: Where did this value originate?"
    echo ""
    echo "G2 — TEST BEFORE FIX"
    echo "   Write failing test FIRST. Then fix. Then verify."
    echo "   □ Test proves the bug exists"
    echo "   □ Test becomes regression test after fix"
    echo "   □ If you cant test it, you dont understand it"
    echo ""
    echo "G3 — ONE CHANGE AT A TIME"
    echo "   Isolate each fix. Verify separately."
    echo "   □ One logical change per commit"
    echo "   □ Re-run tests after each change"
    echo "   □ If tests break, you know exactly why"
    echo ""
    echo "G4 — UNDERSTAND BEFORE TOUCHING"
    echo "   Read full code path before editing."
    echo "   □ Trace from entry point to bug location"
    echo "   □ Understand all call sites"
    echo "   □ Know the data flow"
    echo ""
    echo "G5 — NEVER ASSUME — VERIFY"
    echo "   Check every variable, every type, every return."
    echo "   □ Check for null/undefined"
    echo "   □ Verify types match expectations"
    echo "   □ Confirm edge cases handled"
    echo ""
    echo "G6 — EXPLICIT OVER IMPLICIT"
    echo "   All types explicit. No implicit any."
    echo "   □ Explicit return types on functions"
    echo "   □ Explicit error handling"
    echo "   □ No magic numbers"
    echo ""
    echo "G7 — ERROR PATHS ARE FIRST-CLASS"
    echo "   Every failure handled explicitly."
    echo "   □ What if this is null?"
    echo "   □ What if this throws?"
    echo "   □ What if this times out?"
    echo ""
    echo "G8 — STATE MUST BE OWNED"
    echo "   Clear ownership for all state."
    echo "   □ Who creates this?"
    echo "   □ Who mutates this?"
    echo "   □ Who destroys this?"
    echo ""
    echo "G9 — NEVER BREAK ADJACENT CODE"
    echo "   Check all callers and callees."
    echo "   □ Run full test suite"
    echo "   □ Check related functions"
    echo "   □ Verify integration points"
    echo ""
    echo "G10 — LEAVE CODE BETTER THAN FOUND"
    echo "   Refactor as you go."
    echo "   □ Rename unclear variables"
    echo "   □ Extract long functions"
    echo "   □ Add missing tests"
    echo "   □ Fix warnings"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "VIOLATE ANY RULE → CODE QUALITY DEGRADES → TECHNICAL DEBT"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-golden=kimi_golden

# ============================================
# 🧪 SELF-VERIFICATION CHECKLIST
# ============================================
kimi_checklist() {
    echo ""
    echo "📋 PRE-OUTPUT VERIFICATION CHECKLIST"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "Before submitting ANY code, verify ALL of these:"
    echo ""
    echo "□ 1. ALL INPUTS VALIDATED / GUARDED"
    echo "   - Check for null, undefined, empty strings"
    echo "   - Validate types at boundaries"
    echo "   - Sanitize user input"
    echo ""
    echo "□ 2. ALL ERROR PATHS HANDLED EXPLICITLY"
    echo "   - Every try has a catch"
    echo "   - Every Promise has .catch() or await try/catch"
    echo "   - Errors are transformed, not swallowed"
    echo ""
    echo "□ 3. ALL ASYNC OPERATIONS HAVE TRY/CATCH"
    echo "   - await calls wrapped in try/catch"
    echo "   - Promise chains have .catch()"
    echo "   - Async errors propagate correctly"
    echo ""
    echo "□ 4. ALL TYPESCRIPT TYPES EXPLICIT (NO any)"
    echo "   - Function parameters typed"
    echo "   - Return types explicit"
    echo "   - No @ts-ignore without documented reason"
    echo ""
    echo "□ 5. NO FORBIDDEN PATTERNS PRESENT"
    echo "   - No empty catch blocks: catch(e) {}"
    echo "   - No any types: : any"
    echo "   - No var declarations"
    echo "   - No magic numbers (use named constants)"
    echo ""
    echo "□ 6. FUNCTION LENGTH ≤ 40 LINES"
    echo "   - Count lines between { and }"
    echo "   - If longer → extract helper functions"
    echo "   - Single responsibility per function"
    echo ""
    echo "□ 7. ALL IMPORTS PRESENT AND CORRECT"
    echo "   - No unused imports"
    echo "   - No circular dependencies"
    echo "   - All dependencies in package.json/requirements.txt"
    echo ""
    echo "□ 8. ADJACENT/CALLING CODE STILL WORKS"
    echo "   - Run full test suite"
    echo "   - Check callers of modified functions"
    echo "   - Verify no breaking changes"
    echo ""
    echo "□ 9. STATE OWNERSHIP IS CLEAR"
    echo "   - Who creates this state?"
    echo "   - Who can mutate it?"
    echo "   - Is it shared or isolated?"
    echo ""
    echo "□ 10. TEST EXISTS OR IS PROVIDED"
    echo "   - Bug fix → regression test included"
    echo "   - Feature → unit tests included"
    echo "   - Edge cases covered"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "IF ANY UNCHECKED → DO NOT SUBMIT → FIX FIRST"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "Quality Gate: 10/10 required for production code"
    echo "Quality Gate: 8/10 minimum for internal tools"
    echo ""
}
alias kimi-checklist=kimi_checklist

# ============================================
# 🔍 5-PHASE DIAGNOSIS PROTOCOL
# ============================================
kimi_diagnose() {
    echo ""
    echo "🔍 5-PHASE DIAGNOSIS PROTOCOL"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "╔═══════════════════════════════════════════════════════════════╗"
    echo "║  PHASE 0: TRIAGE — Is this actually a bug? (30 seconds)       ║"
    echo "╠═══════════════════════════════════════════════════════════════╣"
    echo "║  □ Is this expected behavior that the reporter misunderstands?║"
    echo "║  □ Has this ever worked? (If no → it is a missing feature)    ║"
    echo "║  □ Is this a local-only issue? (stale cache, wrong branch)    ║"
    echo "║  □ Can I reproduce it in a clean environment?                 ║"
    echo "║  □ Is there a known issue / recent deploy that explains it?   ║"
    echo "╚═══════════════════════════════════════════════════════════════╝"
    echo ""
    echo "╔═══════════════════════════════════════════════════════════════╗"
    echo "║  PHASE 1: REPRODUCE — Confirm the bug exists                  ║"
    echo "╠═══════════════════════════════════════════════════════════════╣"
    echo "║  □ Can you reproduce it consistently?                         ║"
    echo "║  □ What are the EXACT steps to reproduce?                     ║"
    echo "║  □ What is the EXACT input that causes it?                    ║"
    echo "║  □ What is the expected output?                               ║"
    echo "║  □ What is the actual output?                                 ║"
    echo "║  □ Is it environment-specific? (OS, browser, Node version)    ║"
    echo "║  □ Is it data-specific? (only certain users/payloads)         ║"
    echo "║  □ Is it timing-specific? (only under load, after X minutes)  ║"
    echo "║  □ When did it first appear? (check recent changes)           ║"
    echo "╚═══════════════════════════════════════════════════════════════╝"
    echo ""
    echo "╔═══════════════════════════════════════════════════════════════╗"
    echo "║  PHASE 2: ISOLATE — Binary Search Method                      ║"
    echo "╠═══════════════════════════════════════════════════════════════╣"
    echo "║  1. Identify the full code path from input → output           ║"
    echo "║  2. Find the MIDPOINT of that path                            ║"
    echo "║  3. Add a checkpoint assertion at the midpoint                ║"
    echo "║  4. If assertion FAILS → bug is in first half → recurse       ║"
    echo "║  5. If assertion PASSES → bug is in second half → recurse     ║"
    echo "║  6. Continue until you find the EXACT LINE                    ║"
    echo "╚═══════════════════════════════════════════════════════════════╝"
    echo ""
    echo "╔═══════════════════════════════════════════════════════════════╗"
    echo "║  PHASE 3: CATEGORIZE — Match to Bug Taxonomy                  ║"
    echo "╠═══════════════════════════════════════════════════════════════╣"
    echo "║  □ NULL/UNDEFINED — Missing null check at data boundary       ║"
    echo "║  □ TYPE ERROR — Wrong type assumption, missing validation     ║"
    echo "║  □ ASYNC/TIMING — Missing await, race condition               ║"
    echo "║  □ LOGIC — Wrong condition, off-by-one, operator precedence   ║"
    echo "║  □ RESOURCE — Memory leak, connection not closed              ║"
    echo "║  □ CONCURRENCY — Shared mutable state, race condition         ║"
    echo "║  □ INTEGRATION — Interface mismatch, side effects             ║"
    echo "║  □ PERFORMANCE — N+1 queries, O(n²), blocking operations      ║"
    echo "║  □ SECURITY — Unvalidated input, missing auth                 ║"
    echo "║  □ ENVIRONMENT — Config drift, version mismatch               ║"
    echo "╚═══════════════════════════════════════════════════════════════╝"
    echo ""
    echo "╔═══════════════════════════════════════════════════════════════╗"
    echo "║  PHASE 4: ROOT CAUSE — Find the origin                        ║"
    echo "╠═══════════════════════════════════════════════════════════════╣"
    echo "║  □ Do NOT stop at the symptom                                 ║"
    echo "║  □ Trace backward to where the bad state originated           ║"
    echo "║  □ Identify the FIRST place where the invariant was violated  ║"
    echo "║  □ The fix location may be different from the error location  ║"
    echo "╚═══════════════════════════════════════════════════════════════╝"
    echo ""
    echo "╔═══════════════════════════════════════════════════════════════╗"
    echo "║  PHASE 5: DOCUMENT — Write the root cause statement           ║"
    echo "╠═══════════════════════════════════════════════════════════════╣"
    echo "║  Format: [COMPONENT] fails when [CONDITION] because [CAUSE]   ║"
    echo "║  Example: Payment fails when amount > 9999 because            ║"
    echo "║           parseInt() truncates at 4 digits                    ║"
    echo "║                                                               ║"
    echo "║  □ Write regression test that reproduces the bug              ║"
    echo "║  □ Document fix in commit message                             ║"
    echo "║  □ Update runbook if operational issue                        ║"
    echo "╚═══════════════════════════════════════════════════════════════╝"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "80% OF DEBUGGING TIME SHOULD BE SPENT UNDERSTANDING"
    echo "20% ON FIXING. IF REVERSED, YOU'RE PATCHING SYMPTOMS."
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-diagnose=kimi_diagnose

# ============================================
# 🌡️ TEMPERATURE GUIDELINES
# ============================================
kimi_temp() {
    echo ""
    echo "🌡️ OPTIMAL TEMPERATURE BY TASK"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "TASK                    TEMPERATURE    REASON"
    echo "───────────────────────────────────────────────────────────────"
    echo "Bug Fixing              0.0 – 0.2      Minimize hallucination"
    echo "                        [DETERMINISTIC] Precise, factual"
    echo ""
    echo "Code Generation         0.3 – 0.5      Creativity for naming"
    echo "                        [FOCUSED]      Structure, patterns"
    echo ""
    echo "Refactoring             0.2 – 0.4      Preserve semantics"
    echo "                        [CAUTIOUS]     Change only needed"
    echo ""
    echo "Testing                 0.2 – 0.3      Systematic coverage"
    echo "                        [THOROUGH]     Edge cases"
    echo ""
    echo "Documentation           0.3 – 0.5      Clear explanations"
    echo "                        [ACCESSIBLE]   Examples, clarity"
    echo ""
    echo "Architecture            0.5 – 0.7      Explore options"
    echo "                        [EXPLORATORY]  Trade-offs"
    echo ""
    echo "Brainstorming           0.7 – 1.0      Maximum exploration"
    echo "                        [CREATIVE]     Novel approaches"
    echo ""
    echo "Security Review         0.1 – 0.2      Rigorous analysis"
    echo "                        [PARANOID]     Assume vulnerability"
    echo ""
    echo "Performance Analysis    0.1 – 0.3      Data-driven"
    echo "                        [MEASURED]     Facts over speculation"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "RULE: Start low, increase only if output too rigid"
    echo "RULE: Production code ALWAYS use 0.0-0.3"
    echo "RULE: Architecture decisions can use 0.5-0.7"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-temp=kimi_temp

# ============================================
# 📏 SIZE LIMITS
# ============================================
kimi_size_check() {
    echo ""
    echo "📏 SIZE LIMITS CHECK"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "Standards: File ≤300 lines | Function ≤40 lines | Component ≤150"
    echo ""
    
    local files=$(find . -type f \( -name "*.py" -o -name "*.js" -o -name "*.ts" -o -name "*.tsx" \) -not -path "./node_modules/*" -not -path "./venv/*" -not -path "./__pycache__/*" -not -path "./.git/*" 2>/dev/null | head -50)
    
    if [ -z "$files" ]; then
        echo "No Python/JS/TS files found in current directory."
        return
    fi
    
    echo "Checking files..."
    echo ""
    
    echo "$files" | while read -r file; do
        if [ -f "$file" ]; then
            local lines=$(wc -l < "$file" | tr -d ' ')
            if [ "$lines" -gt 300 ]; then
                printf "${KIMI_RED}⚠ %4d lines: %s${KIMI_NC}\n" "$lines" "$file"
            elif [ "$lines" -gt 150 ]; then
                printf "${KIMI_YELLOW}⚡ %4d lines: %s${KIMI_NC}\n" "$lines" "$file"
            else
                printf "${KIMI_GREEN}✓ %4d lines: %s${KIMI_NC}\n" "$lines" "$file"
            fi
        fi
    done
    
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "Legend: ✓ Good | ⚡ Large (consider splitting) | ⚠ Exceeds limit"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-size-check=kimi_size_check

# ============================================
# 🚫 FORBIDDEN PATTERNS
# ============================================
kimi_forbidden_check() {
    echo ""
    echo "🔍 FORBIDDEN PATTERNS DETECTOR"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    
    local found=0
    
    echo "1️⃣  Silent Error Swallowing (empty catch blocks):"
    local silent_catch=$(grep -r "catch\s*(" --include="*.py" --include="*.js" --include="*.ts" --include="*.tsx" . 2>/dev/null | grep -E "catch\s*\([^)]*\)\s*\{\s*\}" | head -5)
    if [ -n "$silent_catch" ]; then
        echo "$silent_catch"
        found=$((found + 1))
    else
        echo "   ✓ None found"
    fi
    echo ""
    
    echo "2️⃣  Using 'any' Type (type escape):"
    local any_types=$(grep -r ":\s*any\b" --include="*.ts" --include="*.tsx" . 2>/dev/null | grep -v "node_modules" | head -5)
    if [ -n "$any_types" ]; then
        echo "$any_types"
        found=$((found + 1))
    else
        echo "   ✓ None found"
    fi
    echo ""
    
    echo "3️⃣  Magic Numbers (2+ digits not in constants):"
    local magic_nums=$(grep -rE "[^a-zA-Z_0-9]([0-9]{2,})([^0-9a-zA-Z]|$)" --include="*.py" --include="*.js" --include="*.ts" . 2>/dev/null | grep -v "node_modules" | grep -v "test" | grep -v "spec" | head -5)
    if [ -n "$magic_nums" ]; then
        echo "$magic_nums"
        found=$((found + 1))
    else
        echo "   ✓ None found"
    fi
    echo ""
    
    echo "4️⃣  'var' Declarations (use const/let):"
    local var_decls=$(grep -r "^\s*var\s\+" --include="*.js" --include="*.ts" . 2>/dev/null | grep -v "node_modules" | head -5)
    if [ -n "$var_decls" ]; then
        echo "$var_decls"
        found=$((found + 1))
    else
        echo "   ✓ None found"
    fi
    echo ""
    
    echo "5️⃣  Loose Equality (use === not ==):"
    local loose_eq=$(grep -rE "[^=!]==[^=]" --include="*.js" --include="*.ts" . 2>/dev/null | grep -v "node_modules" | head -5)
    if [ -n "$loose_eq" ]; then
        echo "$loose_eq"
        found=$((found + 1))
    else
        echo "   ✓ None found"
    fi
    echo ""
    
    echo "═══════════════════════════════════════════════════════════════"
    if [ $found -gt 0 ]; then
        echo "⚠️  Found $found categories of forbidden patterns"
        echo "   Fix these before committing!"
    else
        echo "✅ All checks passed - no forbidden patterns found"
    fi
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-forbidden=kimi_forbidden_check

# ============================================
# 🐛 BUG TAXONOMY
# ============================================
kimi_bugs() {
    echo ""
    echo "🐛 BUG TAXONOMY QUICK REFERENCE"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "TYPE 1: NULL/UNDEFINED ERRORS"
    echo "───────────────────────────────────────────────────────────────"
    echo "Signal:    Cannot read property X of undefined"
    echo "           undefined is not a function"
    echo "           NoneType has no attribute"
    echo "First Fix: Add null check at data boundary"
    echo "           Use optional chaining: obj?.prop?.value"
    echo "           Validate before accessing"
    echo ""
    echo "TYPE 2: TYPE ERRORS"
    echo "───────────────────────────────────────────────────────────────"
    echo "Signal:    Expected X, received Y"
    echo "           is not a function"
    echo "           TypeScript compilation errors"
    echo "First Fix: Add runtime type validation"
    echo "           Use Zod/io-ts for schema validation"
    echo "           Check typeof/instanceof before operations"
    echo ""
    echo "TYPE 3: ASYNC/TIMING ERRORS"
    echo "───────────────────────────────────────────────────────────────"
    echo "Signal:    Promise rejection, undefined in async context"
    echo "           Cannot access X before initialization"
    echo "           Race conditions in test output"
    echo "First Fix: Add await, wrap in try/catch"
    echo "           Check Promise.all usage"
    echo "           Verify initialization order"
    echo ""
    echo "TYPE 4: LOGIC ERRORS"
    echo "───────────────────────────────────────────────────────────────"
    echo "Signal:    Wrong output, off-by-one, wrong branch taken"
    echo "           Test expects X, got Y (but no crash)"
    echo "First Fix: Review condition boundaries"
    echo "           Check operator precedence"
    echo "           Add assertions to verify state"
    echo ""
    echo "TYPE 5: RESOURCE ERRORS"
    echo "───────────────────────────────────────────────────────────────"
    echo "Signal:    Memory leak, connection timeout"
    echo "           Too many open files"
    echo "           Performance degradation over time"
    echo "First Fix: Check for missing cleanup"
    echo "           Verify resources closed in finally blocks"
    echo "           Review event listener cleanup"
    echo ""
    echo "TYPE 6: CONCURRENCY ERRORS"
    echo "───────────────────────────────────────────────────────────────"
    echo "Signal:    Race condition, deadlock, data corruption"
    echo "           Intermittent failures"
    echo "           Works in isolation, fails in parallel"
    echo "First Fix: Identify shared mutable state"
    echo "           Add synchronization mechanisms"
    echo "           Consider immutable data structures"
    echo ""
    echo "TYPE 7: INTEGRATION ERRORS"
    echo "───────────────────────────────────────────────────────────────"
    echo "Signal:    Works in unit test, fails in integration"
    echo "           API contract mismatch"
    echo "           Side effects in unexpected places"
    echo "First Fix: Check interface definitions"
    echo "           Verify data serialization"
    echo "           Review error handling at boundaries"
    echo ""
    echo "TYPE 8: PERFORMANCE ERRORS"
    echo "───────────────────────────────────────────────────────────────"
    echo "Signal:    Slow response, timeout, high memory/CPU"
    echo "           Degrades with data size"
    echo "First Fix: Profile to find hot path"
    echo "           Check algorithmic complexity (Big-O)"
    echo "           Look for N+1 queries, unbounded loops"
    echo ""
    echo "TYPE 9: SECURITY ERRORS"
    echo "───────────────────────────────────────────────────────────────"
    echo "Signal:    Injection attacks, auth bypass, data exposure"
    echo "           Unexpected access to resources"
    echo "First Fix: Validate all inputs"
    echo "           Check authentication/authorization"
    echo "           Review for XSS, CSRF, SQL injection"
    echo ""
    echo "TYPE 10: ENVIRONMENT ERRORS"
    echo "───────────────────────────────────────────────────────────────"
    echo "Signal:    Works on my machine"
    echo "           Fails only in CI/production"
    echo "           Path/permission issues"
    echo "First Fix: Check environment variables"
    echo "           Verify file paths are correct"
    echo "           Review OS-specific code"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "When you see an error, identify the type FIRST."
    echo "Then apply the First Fix pattern."
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-bugs=kimi_bugs

# ============================================
# 🎯 QUALITY SCORING
# ============================================
kimi_quality() {
    echo ""
    echo "🎯 QUALITY SCORING (Target: ≥ 4.0/5.0)"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "CATEGORY           WEIGHT    CHECKPOINTS"
    echo "───────────────────────────────────────────────────────────────"
    echo "Correctness        30%       • All tests pass"
    echo "                              • No runtime errors"
    echo "                              • Edge cases handled"
    echo "                              • Input validation present"
    echo ""
    echo "Type Safety        15%       • No implicit any"
    echo "                              • All functions typed"
    echo "                              • No type assertions without validation"
    echo "                              • Generic types used appropriately"
    echo ""
    echo "Error Handling     15%       • All errors caught and handled"
    echo "                              • Meaningful error messages"
    echo "                              • No silent failures"
    echo "                              • Error boundaries in place"
    echo ""
    echo "Test Coverage      15%       • Unit tests for logic"
    echo "                              • Integration tests for flows"
    echo "                              • Edge cases covered"
    echo "                              • Regression tests for bugs"
    echo ""
    echo "Code Clarity       10%       • Clear naming"
    echo "                              • Functions ≤40 lines"
    echo "                              • Comments explain why, not what"
    echo "                              • No dead code"
    echo ""
    echo "Performance        10%       • No obvious bottlenecks"
    echo "                              • Efficient data structures"
    echo "                              • No unnecessary computations"
    echo "                              • Lazy loading where appropriate"
    echo ""
    echo "Security            5%       • Input validation"
    echo "                              • No secrets in code"
    echo "                              • Proper auth checks"
    echo "                              • Safe dependencies"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "SCORING GUIDE:"
    echo "5.0 = Exceptional (exceeds standards)"
    echo "4.0 = Good (meets all requirements) ← TARGET"
    echo "3.0 = Acceptable (minor issues)"
    echo "2.0 = Poor (major issues)"
    echo "1.0 = Unacceptable (security/performance risks)"
    echo ""
    echo "SELF-ASSESSMENT:"
    echo "□ Score yourself honestly on each category"
    echo "□ If total < 4.0, improve before submitting"
    echo "□ Focus on high-weight categories first"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-quality=kimi_quality

# ============================================
# 🔧 LANGUAGE STANDARDS
# ============================================
kimi_py_standards() {
    echo ""
    echo "🐍 PYTHON STANDARDS"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "✅ ALWAYS DO:"
    echo "─────────────"
    echo "• Type hints on ALL functions (PEP 484)"
    echo "  def process(data: dict[str, Any]) -> ProcessedData:"
    echo ""
    echo "• Use dataclasses or Pydantic for data structures"
    echo "  @dataclass"
    echo "  class UserConfig:"
    echo "      name: str"
    echo "      email: str"
    echo ""
    echo "• Handle exceptions SPECIFICALLY (no bare except:)"
    echo "  try:"
    echo "      process()"
    echo "  except ValueError as e:"
    echo "      handle_value_error(e)"
    echo "  except KeyError as e:"
    echo "      handle_key_error(e)"
    echo ""
    echo "• Use pathlib.Path for file paths"
    echo "  from pathlib import Path"
    echo "  config_path = Path.home() / .config / app.json"
    echo ""
    echo "• Use f-strings for formatting"
    echo "  name = f\"Hello, {user.name}\""
    echo ""
    echo "• Follow PEP 8 naming: snake_case for functions/variables"
    echo ""
    echo "• Maximum function: 40 lines"
    echo "  If longer → extract helper functions"
    echo ""
    echo "❌ NEVER DO:"
    echo "───────────"
    echo "• Mutable default arguments:"
    echo "  WRONG:  def f(items=[]):"
    echo "  RIGHT:  def f(items: Optional[list] = None):"
    echo "              if items is None:"
    echo "                  items = []"
    echo ""
    echo "• Wildcard imports: from module import *"
    echo ""
    echo "• Bare except: or except Exception: (catches KeyboardInterrupt!)"
    echo ""
    echo "• String concatenation for paths: path + / + filename"
    echo ""
    echo "• Mixed quotes inconsistently"
    echo ""
    echo "• Ignore type checker warnings without comment"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-py-standards=kimi_py_standards

kimi_ts_standards() {
    echo ""
    echo "📘 TYPESCRIPT STANDARDS"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "✅ ALWAYS DO:"
    echo "─────────────"
    echo "• Enable strict mode (tsconfig.json)"
    echo "  strict: true"
    echo "  noImplicitAny: true"
    echo "  strictNullChecks: true"
    echo ""
    echo "• Explicit types, never any (use unknown + guards)"
    echo "  WRONG: function process(data: any): any"
    echo "  RIGHT: function process(data: unknown): Result {"
    echo "             if (!isValidData(data)) throw new Error(Invalid);"
    echo "         }"
    echo ""
    echo "• const by default, let only when needed"
    echo "  const x = 5;"
    echo "  let y = 0; // only if reassigned"
    echo ""
    echo "• Strict equality === (never ==)"
    echo "  WRONG: if (x == null)"
    echo "  RIGHT: if (x === null || x === undefined)"
    echo ""
    echo "• Handle Promise rejections"
    echo "  try {"
    echo "      await fetchData();"
    echo "  } catch (error) {"
    echo "      handleError(error);"
    echo "  }"
    echo ""
    echo "• Explicit return types on exported functions"
    echo "  export function calculateTotal(items: Item[]): number {"
    echo "  }"
    echo ""
    echo "• Maximum function: 40 lines"
    echo ""
    echo "❌ NEVER DO:"
    echo "───────────"
    echo "• @ts-ignore without documented reason"
    echo "  // @ts-ignore: Working around library bug #123"
    echo ""
    echo "• as any type assertion"
    echo "  WRONG: const user = data as any as User;"
    echo ""
    echo "• Optional chaining as substitute for null handling"
    echo "  WRONG: user?.profile?.avatar?.url"
    echo ""
    echo "• Implicit returns"
    echo "  WRONG: const fn = () => { console.log(hi); }"
    echo "  RIGHT: const fn = (): void => { console.log(hi); }"
    echo ""
    echo "• console.log in production code"
    echo "  Use proper logging framework instead"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-ts-standards=kimi_ts_standards

kimi_react_standards() {
    echo ""
    echo "⚛️ REACT STANDARDS"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "✅ ALWAYS DO:"
    echo "─────────────"
    echo "• Functional components with hooks (no class components)"
    echo "  export function UserCard({ user }: UserCardProps) {"
    echo "  }"
    echo ""
    echo "• All dependencies in useEffect dependency array"
    echo "  useEffect(() => {"
    echo "      fetchUser(userId);"
    echo "  }, [userId]); // ← include all dependencies"
    echo ""
    echo "• Handle loading, error, empty states"
    echo "  if (loading) return <Spinner />;"
    echo "  if (error) return <ErrorMessage error={error} />;"
    echo "  if (!data) return <EmptyState />;"
    echo ""
    echo "• useMemo for expensive computations"
    echo "  const sortedUsers = useMemo(() => {"
    echo "      return users.sort(...);"
    echo "  }, [users]);"
    echo ""
    echo "• useCallback for stable callbacks passed to children"
    echo "  const handleClick = useCallback(() => {"
    echo "      onSelect(user.id);"
    echo "  }, [onSelect, user.id]);"
    echo ""
    echo "• Cleanup in useEffect when needed"
    echo "  useEffect(() => {"
    echo "      const subscription = subscribe();"
    echo "      return () => subscription.unsubscribe();"
    echo "  }, []);"
    echo ""
    echo "• Maximum component: 150 lines"
    echo "  If longer → extract sub-components"
    echo ""
    echo "❌ NEVER DO:"
    echo "───────────"
    echo "• Hooks inside conditions/loops/nested functions"
    echo "  WRONG: if (condition) { useState(); }"
    echo "  RIGHT: const [state, setState] = useState();"
    echo ""
    echo "• Mutate state directly"
    echo "  WRONG: state.items.push(newItem);"
    echo "  RIGHT: setState({ items: [...state.items, newItem] });"
    echo ""
    echo "• Array index as key for dynamic lists"
    echo "  WRONG: items.map((item, i) => <div key={i}>...</div>)"
    echo "  RIGHT: items.map(item => <div key={item.id}>...</div>)"
    echo ""
    echo "• Inline object/array in render (causes re-render)"
    echo "  WRONG: <Child style={{ color: red }} />"
    echo "  RIGHT: const style = useMemo(() => ({ color: red }), []);"
    echo ""
    echo "• Logic in JSX (extract to useMemo or handler)"
    echo "  WRONG: {users.filter(u => u.active).map(...)}"
    echo "  RIGHT: const activeUsers = useMemo(() => users.filter(...), [users]);"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-react-standards=kimi_react_standards

# ============================================
# 🎨 PROMPTING STRATEGIES
# ============================================
kimi_prompt_strategies() {
    echo ""
    echo "🎨 5 EXPERT PROMPTING STRATEGIES"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "1️⃣  DIAGNOSTIC PROMPT (For Bug Fixing)"
    echo "───────────────────────────────────────────────────────────────"
    echo "Context:"
    echo "[Describe the codebase, tech stack, relevant files]"
    echo ""
    echo "Problem:"
    echo "We have a bug where [SYMPTOM]."
    echo ""
    echo "Expected behavior:"
    echo "[WHAT_SHOULD_HAPPEN]"
    echo ""
    echo "Actual behavior:"
    echo "[WHAT_HAPPENS]"
    echo ""
    echo "Steps to reproduce:"
    echo "1. [STEP_ONE]"
    echo "2. [STEP_TWO]"
    echo "3. [STEP_THREE]"
    echo ""
    echo "Error message:"
    echo "[PASTE_FULL_ERROR_STACK]"
    echo ""
    echo "Task:"
    echo "Use the 5-Phase Diagnosis Protocol."
    echo "Provide: root cause analysis, minimal fix, regression test."
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "2️⃣  SCAFFOLD PROMPT (For New Features)"
    echo "───────────────────────────────────────────────────────────────"
    echo "Context:"
    echo "[Describe existing architecture, patterns used]"
    echo ""
    echo "Feature:"
    echo "Build [FEATURE_NAME] that [DESCRIBE_BEHAVIOR]."
    echo ""
    echo "Requirements:"
    echo "1. [SPECIFIC_REQUIREMENT_1]"
    echo "2. [SPECIFIC_REQUIREMENT_2]"
    echo "3. [SPECIFIC_REQUIREMENT_3]"
    echo ""
    echo "Constraints:"
    echo "- Use [TECH_STACK]"
    echo "- Follow [ARCHITECTURAL_PATTERN]"
    echo "- Maximum function size: 40 lines"
    echo "- Include error handling"
    echo "- Include tests"
    echo ""
    echo "Output:"
    echo "Complete implementation with:"
    echo "- Main implementation file(s)"
    echo "- Unit tests"
    echo "- Integration tests"
    echo "- Documentation"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "3️⃣  REVIEW PROMPT (For Code Review)"
    echo "───────────────────────────────────────────────────────────────"
    echo "Context:"
    echo "[PR description, related tickets]"
    echo ""
    echo "Code to review:"
    echo "[PASTE_CODE_OR_FILE_PATHS]"
    echo ""
    echo "Review for:"
    echo "1. Bugs (null safety, race conditions, off-by-one, type errors)"
    echo "2. Security (injection, exposure, bypass, secrets)"
    echo "3. Performance (N+1, blocking, memory leaks, complexity)"
    echo "4. Code quality (naming, structure, error handling, tests)"
    echo "5. Maintainability (complexity, duplication, documentation)"
    echo ""
    echo "Output format:"
    echo "For each issue found:"
    echo "- Severity: [CRITICAL/HIGH/MEDIUM/LOW]"
    echo "- Location: [file:line]"
    echo "- Description: [what is wrong]"
    echo "- Fix: [suggested code]"
    echo "- Test: [how to verify fix]"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "4️⃣  ITERATIVE REFINEMENT"
    echo "───────────────────────────────────────────────────────────────"
    echo "Context:"
    echo "Here is my implementation of [COMPONENT/FEATURE]:"
    echo "[PASTE_CODE]"
    echo ""
    echo "Task:"
    echo "Step 1: Identify the 3 highest-impact improvements"
    echo "Step 2: Show before/after code for each"
    echo "Step 3: Explain why each matters"
    echo ""
    echo "Constraints:"
    echo "- Do NOT rewrite entire file"
    echo "- Only modify what needs improvement"
    echo "- Preserve existing working code"
    echo "- Follow project conventions"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "5️⃣  ARCHITECTURE PROMPT"
    echo "───────────────────────────────────────────────────────────────"
    echo "Context:"
    echo "We need to design [SYSTEM_NAME] for [PURPOSE]."
    echo ""
    echo "Requirements:"
    echo "1. [FUNCTIONAL_REQUIREMENT_1]"
    echo "2. [FUNCTIONAL_REQUIREMENT_2]"
    echo "3. Scale: [EXPECTED_SCALE]"
    echo "4. Constraints: [TECHNICAL_CONSTRAINTS]"
    echo ""
    echo "Provide:"
    echo "1. Component diagram (ASCII art acceptable)"
    echo "2. Data flow description"
    echo "3. API contracts (interfaces/types)"
    echo "4. Error handling strategy"
    echo "5. Test strategy (what to test, where)"
    echo "6. Deployment considerations"
    echo ""
    echo "Follow:"
    echo "- SOLID principles"
    echo "- Clear dependency direction"
    echo "- Explicit interfaces"
    echo "- State ownership rules"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-prompt-strategies=kimi_prompt_strategies

# ============================================
# 📊 PROJECT HEALTH
# ============================================
kimi_health_check() {
    echo ""
    echo "📊 PROJECT HEALTH DASHBOARD"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "Location: $(pwd)"
    echo ""
    
    echo "📁 File Counts:"
    local py_count=$(find . -type f -name "*.py" -not -path "./node_modules/*" -not -path "./venv/*" -not -path "./__pycache__/*" 2>/dev/null | wc -l)
    local js_count=$(find . -type f \( -name "*.js" -o -name "*.ts" -o -name "*.tsx" \) -not -path "./node_modules/*" -not -path "./.git/*" 2>/dev/null | wc -l)
    echo "  Python files: $py_count"
    echo "  JS/TS files:  $js_count"
    
    local total_lines=$(find . -type f \( -name "*.py" -o -name "*.js" -o -name "*.ts" \) -not -path "./node_modules/*" -not -path "./venv/*" -exec cat {} + 2>/dev/null | wc -l)
    echo "  Total lines:  $total_lines"
    echo ""
    
    echo "🧪 Test Files:"
    local test_count=$(find . -type f \( -name "*test*.py" -o -name "*.test.js" -o -name "*.test.ts" -o -name "*.spec.js" -o -name "*.spec.ts" \) -not -path "./node_modules/*" 2>/dev/null | wc -l)
    echo "  Found: $test_count"
    echo ""
    
    echo "📝 Open TODOs/FIXMEs:"
    local todo_count=$(grep -r "TODO\|FIXME\|XXX\|HACK" --include="*.py" --include="*.js" --include="*.ts" . 2>/dev/null | wc -l | tr -d ' ')
    echo "  Total: $todo_count"
    echo ""
    
    echo "🔒 Security:"
    if [ -f ".env" ]; then
        echo "  ⚠️  .env file exists (should NOT be committed)"
    else
        echo "  ✓ No .env file in repo"
    fi
    
    local secrets=$(grep -r "password\|secret\|key\|token" --include="*.py" --include="*.js" --include="*.ts" . 2>/dev/null | grep -E "(=\s*[\"'][^\"']{8,}[\"'])" | grep -v "example\|placeholder\|test" | head -3)
    if [ -n "$secrets" ]; then
        echo "  ⚠️  Potential hardcoded secrets found"
    else
        echo "  ✓ No obvious hardcoded secrets"
    fi
    echo ""
    
    echo "📦 Dependencies:"
    if [ -f "requirements.txt" ]; then
        local req_count=$(grep -v "^#" requirements.txt | grep -v "^$" | wc -l)
        echo "  Python: $req_count packages"
    fi
    if [ -f "package.json" ]; then
        echo "  Node: package.json present"
    fi
    echo ""
    
    echo "═══════════════════════════════════════════════════════════════"
    echo "✅ Health check complete"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-health=kimi_health_check
alias kimi-start=kimi_health_check

# ============================================
# 🐛 DEBUGGING
# ============================================
kimi_debug() {
    echo ""
    echo "🐛 DEBUGGING MODES"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "QUICK START:"
    echo "  kimi-diagnose      → Follow 5-Phase Diagnosis Protocol"
    echo "  kimi-bugs          → Bug Taxonomy Reference"
    echo "  kimi-checklist     → Self-Verification Checklist"
    echo ""
    echo "DEBUG MODES:"
    echo "  kimi-debug-strict  → Rigorous scientific method"
    echo "  kimi-debug-trace   → Stack trace decoder"
    echo "  kimi-debug-silent  → Hidden bug hunter"
    echo "  kimi-debug-flaky   → Race conditions"
    echo "  kimi-debug-perf    → Performance diagnosis"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-debug=kimi_debug

kimi_debug_strict() {
    echo ""
    echo "🔬 BUGFIX_STRICT MODE"
    echo "═══════════════════════════════════════════════════════════════"
    echo "Follow the 5-Phase Diagnosis Protocol:"
    echo ""
    echo "PHASE 0: TRIAGE      → Is this really a bug?"
    echo "PHASE 1: REPRODUCE   → Create failing test"
    echo "PHASE 2: ISOLATE     → Binary search to exact line"
    echo "PHASE 3: CATEGORIZE  → Match to bug taxonomy"
    echo "PHASE 4: ROOT CAUSE  → Find origin (not symptom)"
    echo "PHASE 5: DOCUMENT    → Write root cause statement"
    echo ""
    echo "Then apply the 10 Golden Rules."
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-debug-strict=kimi_debug_strict

kimi_debug_trace() {
    echo ""
    echo "📚 STACK TRACE DECODER"
    echo "═══════════════════════════════════════════════════════════════"
    echo "Analyze the stack trace:"
    echo ""
    echo "1. READ top-to-bottom, explain each frame"
    echo "2. IDENTIFY root cause frame (not where caught)"
    echo "3. EXPLAIN error type and runtime behavior"
    echo "4. LIST all scenarios that produce this error"
    echo "5. WRITE minimal reproduction script"
    echo "6. CHECK for related issues in codebase"
    echo ""
    echo "Look for:"
    echo "- First user code in stack (not library)"
    echo "- Error transformation points"
    echo "- Missing error context"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-debug-trace=kimi_debug_trace

kimi_debug_silent() {
    echo ""
    echo "👻 SILENT BUG HUNTER"
    echo "═══════════════════════════════════════════════════════════════"
    echo "Bugs that do NOT throw errors:"
    echo ""
    echo "□ DATA CORRUPTION"
    echo "  • Off-by-one errors"
    echo "  • Floating point precision issues"
    echo "  • Encoding problems"
    echo ""
    echo "□ PERFORMANCE BOMBS"
    echo "  • N+1 queries"
    echo "  • Unbounded memory growth"
    echo "  • Accidental O(n²) algorithms"
    echo ""
    echo "□ SECURITY FAILURES"
    echo "  • Validation bypasses"
    echo "  • Authorization holes"
    echo "  • Timing attacks"
    echo ""
    echo "□ ASYNC FAILURES"
    echo "  • Missing catches"
    echo "  • Race conditions"
    echo "  • State inconsistency"
    echo ""
    echo "Run: kimi-forbidden to check common patterns"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-debug-silent=kimi_debug_silent

kimi_debug_flaky() {
    echo ""
    echo "🔄 INTERMITTENT BUG ANALYSIS"
    echo "═══════════════════════════════════════════════════════════════"
    echo "Check for these race condition signals:"
    echo ""
    echo "□ Shared mutable state"
    echo "  • Global variables"
    echo "  • Class properties accessed by multiple async ops"
    echo "  • Cache without synchronization"
    echo ""
    echo "□ Timing dependencies"
    echo "  • setTimeout/setInterval"
    echo "  • Network latency assumptions"
    echo "  • DOM ready timing"
    echo ""
    echo "□ Order dependencies"
    echo "  • Array iteration order"
    echo "  • Event firing order"
    echo "  • Promise resolution order"
    echo ""
    echo "□ Environment variations"
    echo "  • OS differences"
    echo "  • CPU core count"
    echo "  • Memory pressure"
    echo ""
    echo "□ Heisenbugs"
    echo "  • Observation changes behavior"
    echo "  • Logging fixes the bug"
    echo "  • Debugger changes timing"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-debug-flaky=kimi_debug_flaky

kimi_debug_perf() {
    echo ""
    echo "⚡ PERFORMANCE DIAGNOSIS"
    echo "═══════════════════════════════════════════════════════════════"
    echo "Profile FIRST, then optimize:"
    echo ""
    echo "STEP 1: MEASURE"
    echo "  • Identify hot paths with profiler"
    echo "  • Generate flame graphs"
    echo "  • Measure baseline"
    echo ""
    echo "STEP 2: ANALYZE"
    echo "  • Check algorithmic complexity (Big-O)"
    echo "  • Look for N+1 patterns"
    echo "  • Check for blocking operations"
    echo ""
    echo "STEP 3: HYPOTHESIZE"
    echo "  • Form theory about bottleneck"
    echo "  • Predict improvement magnitude"
    echo ""
    echo "STEP 4: OPTIMIZE"
    echo "  • Make ONE change"
    echo "  • Measure improvement"
    echo "  • Verify correctness maintained"
    echo ""
    echo "STEP 5: VERIFY"
    echo "  • Compare before/after"
    echo "  • Check for regressions"
    echo "  • Document the change"
    echo ""
    echo "Tools: py-spy, cProfile, Chrome DevTools, Clinic.js"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-debug-perf=kimi_debug_perf

# ============================================
# 🏗️ BUILDING
# ============================================
kimi_build() {
    echo ""
    echo "🏗️ BUILD FEATURE"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "STEP 1: DEFINE"
    echo "  • SCOPE: What exactly to build?"
    echo "  • CONSTRAINTS: What must we avoid?"
    echo "  • ARCHITECTURE: How does it fit?"
    echo ""
    echo "STEP 2: DESIGN"
    echo "  • Interface first (API/contracts)"
    echo "  • Data flow"
    echo "  • Error handling strategy"
    echo ""
    echo "STEP 3: IMPLEMENT"
    echo "  • Follow language standards (kimi-py-standards, etc.)"
    echo "  • Maximum function: 40 lines"
    echo "  • All types explicit"
    echo ""
    echo "STEP 4: VALIDATE"
    echo "  • Run kimi-checklist (10 points)"
    echo "  • Run kimi-size-check"
    echo "  • Run kimi-forbidden"
    echo ""
    echo "STEP 5: TEST"
    echo "  • Unit tests for logic"
    echo "  • Integration tests for flows"
    echo "  • Edge cases covered"
    echo ""
    echo "STEP 6: QUALITY CHECK"
    echo "  • Score ≥ 4.0/5.0 on kimi-quality"
    echo "  • All 10 checklist items verified"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-build=kimi_build

# ============================================
# 🧪 TESTING
# ============================================
kimi_test() {
    echo ""
    echo "🧪 TESTING STRATEGY"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "ADVERSARIAL TEST DISTRIBUTION:"
    echo "───────────────────────────────────────────────────────────────"
    echo "Tier 1 (20%): Happy path"
    echo "  • Normal inputs"
    echo "  • Expected flow"
    echo "  • Success cases"
    echo ""
    echo "Tier 2 (40%): Boundaries"
    echo "  • Empty collections"
    echo "  • Null/undefined inputs"
    echo "  • Maximum values"
    echo "  • Unicode/emoji strings"
    echo "  • Whitespace variations"
    echo ""
    echo "Tier 3 (25%): Errors"
    echo "  • Wrong types"
    echo "  • Malformed data"
    echo "  • Injection attempts"
    echo "  • Resource exhaustion"
    echo ""
    echo "Tier 4 (15%): Contracts"
    echo "  • Return type verification"
    echo "  • Side effect verification"
    echo "  • State change verification"
    echo "  • Error message verification"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "GOLDEN RULE G2: TEST BEFORE FIX"
    echo "───────────────────────────────────────────────────────────────"
    echo "1. Write failing test FIRST"
    echo "2. Apply the fix"
    echo "3. Verify test PASSES"
    echo "4. Check no regressions"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-test=kimi_test

# ============================================
# ✅ VALIDATION
# ============================================
kimi_validate() {
    echo ""
    echo "🔍 VALIDATION PIPELINE"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "Step 1: Size Check"
    kimi_size_check
    echo ""
    echo "Step 2: Forbidden Patterns"
    kimi_forbidden_check
    echo ""
    echo "Step 3: Self-Verification"
    echo "   Run: kimi-checklist"
    echo ""
    echo "Step 4: Lint & Type Check (if tools available)"
    if command -v ruff &> /dev/null; then
        echo "   ruff check ."
    else
        echo "   ruff not installed (pip install ruff)"
    fi
    if command -v mypy &> /dev/null; then
        echo "   mypy src/"
    else
        echo "   mypy not installed (pip install mypy)"
    fi
    echo ""
    echo "Step 5: Test (if available)"
    if [ -f "pytest.ini" ] || [ -f "pyproject.toml" ]; then
        echo "   pytest -xvs"
    elif [ -f "package.json" ]; then
        echo "   npm test"
    else
        echo "   No test configuration found"
    fi
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "Complete all steps before committing"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-validate=kimi_validate

# ============================================
# 🔒 SECURITY
# ============================================
kimi_security() {
    echo ""
    echo "🔒 SECURITY CHECKLIST"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "INPUT VALIDATION:"
    echo "□ Sanitize all user inputs"
    echo "□ Validate types at boundaries"
    echo "□ Check file path traversal"
    echo "□ Verify URL protocols"
    echo ""
    echo "AUTHENTICATION/AUTHORIZATION:"
    echo "□ Verify auth on all protected routes"
    echo "□ Check ownership before operations"
    echo "□ Validate tokens/signatures"
    echo "□ Use constant-time comparison"
    echo ""
    echo "DATA PROTECTION:"
    echo "□ No secrets in code"
    echo "□ Encrypt sensitive data at rest"
    echo "□ Use HTTPS for all communications"
    echo "□ Hash passwords (bcrypt/Argon2)"
    echo ""
    echo "INJECTION PREVENTION:"
    echo "□ Use parameterized queries"
    echo "□ Escape output in templates"
    echo "□ Validate file uploads"
    echo "□ Sanitize HTML (if allowing)"
    echo ""
    echo "DEPENDENCIES:"
    echo "□ Check for known vulnerabilities"
    echo "□ Keep dependencies updated"
    echo "□ Minimize dependency count"
    echo "□ Pin versions in production"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "QUICK CHECKS:"
    echo "  kimi-forbidden     → Check anti-patterns"
    echo "  grep -r \"password\|secret\|key\" --include=\"*.py\" ."
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-security=kimi_security

# ============================================
# 🔍 SEARCH
# ============================================
kimi_find_files() {
    if command -v fzf &> /dev/null && command -v bat &> /dev/null; then
        find . -type f -not -path "./node_modules/*" -not -path "./.git/*" | fzf --preview "bat --color=always {}"
    else
        echo "Install for better experience: brew install fzf bat"
        find . -type f -not -path "./node_modules/*" -not -path "./.git/*" | head -20
    fi
}
alias kimi-find=kimi_find_files

alias kimi-todos='grep -r "TODO\|FIXME\|XXX\|HACK" --include="*.py" --include="*.js" --include="*.ts" . 2>/dev/null | head -20'

# ============================================
# 🧠 MEMORY
# ============================================
alias kimi-remember='read -p "What to remember: " MEM && echo "[$(date +%Y-%m-%d)] $MEM" >> ~/.kimi/memory.log && echo "✓ Stored"'
alias kimi-recall='if [ -f ~/.kimi/memory.log ]; then tail -20 ~/.kimi/memory.log; else echo "No memories yet"; fi'

# ============================================
# 🔄 PRE-COMMIT CHECK
# ============================================
alias kimi-check='kimi_size_check && echo "" && kimi_forbidden_check'

# ============================================
# ℹ️ HELP
# ============================================
kimi_help() {
    echo ""
    echo "🏆 KIMI CORE ALIASES v4.1 - API-Free, Ready to Use"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "EXPERT STANDARDS:"
    echo "  kimi-golden         → 10 Universal Golden Rules"
    echo "  kimi-diagnose       → 5-Phase Diagnosis Protocol"
    echo "  kimi-checklist      → 10-Point Verification Checklist"
    echo "  kimi-temp           → Temperature Guidelines"
    echo ""
    echo "CODE QUALITY:"
    echo "  kimi-size-check     → Check file/function sizes"
    echo "  kimi-forbidden      → Scan for anti-patterns"
    echo "  kimi-bugs           → Bug Taxonomy Reference"
    echo "  kimi-quality        → Quality Scoring (4.0/5.0 target)"
    echo ""
    echo "LANGUAGE STANDARDS:"
    echo "  kimi-py-standards   → Python coding standards"
    echo "  kimi-ts-standards   → TypeScript coding standards"
    echo "  kimi-react-standards → React coding standards"
    echo ""
    echo "PROMPTING:"
    echo "  kimi-prompt-strategies → 5 expert prompting templates"
    echo ""
    echo "WORKFLOW:"
    echo "  kimi-start          → Begin coding session"
    echo "  kimi-health         → Project health dashboard"
    echo "  kimi-check          → Pre-commit checks"
    echo ""
    echo "DEBUGGING:"
    echo "  kimi-debug          → Debug modes overview"
    echo "  kimi-debug-strict   → BUGFIX_STRICT mode"
    echo "  kimi-debug-trace    → Stack trace decoder"
    echo "  kimi-debug-silent   → Hidden bug hunter"
    echo "  kimi-debug-flaky    → Race conditions"
    echo "  kimi-debug-perf     → Performance diagnosis"
    echo ""
    echo "BUILDING:"
    echo "  kimi-build          → Feature building guide"
    echo "  kimi-test           → Testing strategy"
    echo ""
    echo "VALIDATION:"
    echo "  kimi-validate       → Full validation pipeline"
    echo "  kimi-security       → Security checklist"
    echo ""
    echo "NAVIGATION:"
    echo "  kimi-find           → Find files (uses fzf if available)"
    echo "  kimi-todos          → Find open TODOs"
    echo ""
    echo "MEMORY:"
    echo "  kimi-remember       → Store context"
    echo "  kimi-recall         → Recall context"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "Type any command to see detailed guidance."
    echo "No API keys required. No configuration needed."
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-help=kimi_help

kimi_version() {
    echo ""
    echo "🏆 KIMI CORE ALIASES v4.1"
    echo "═══════════════════════════════════════════════════════════════"
    echo "Status: API-Free, Ready to Use"
    echo ""
    echo "Standards loaded:"
    echo "  ✓ Golden Rules (10)"
    echo "  ✓ 5-Phase Diagnosis Protocol"
    echo "  ✓ Self-Verification Checklist (10 points)"
    echo "  ✓ Temperature Guidelines (6 levels)"
    echo "  ✓ Size Limits (300/40/150 lines)"
    echo "  ✓ Forbidden Patterns Detector"
    echo "  ✓ Bug Taxonomy (10 types)"
    echo "  ✓ Quality Scoring (7 categories)"
    echo "  ✓ Language Standards (Python, TypeScript, React)"
    echo "  ✓ Prompt Strategies (5 templates)"
    echo ""
    echo "Dependencies: None required (optional: fzf, ripgrep, bat)"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-version=kimi_version

# ============================================
# INITIALIZATION MESSAGE
# ============================================
echo "✅ KIMI Core Aliases v4.1 Loaded (API-Free)"
echo "   Type: kimi-help for all commands"
