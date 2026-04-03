# MacGyver's UX/UI/Design Skills Security Vetting Report

**Agent:** MacGyver (Maintenance / Skills Manager)  
**Date:** 2026-04-03  
**Task:** Review awesome-openclaw-skills for UX/UI/Website Design skills relevant to Leia (Design Agent) + Security Vetting  
**Source Repo:** https://github.com/VoltAgent/awesome-openclaw-skills  
**Skill Vetter:** https://clawhub.ai/spclaudehome/skill-vetter

---

## Executive Summary

Browsed the [awesome-openclaw-skills](https://github.com/VoltAgent/awesome-openclaw-skills) repository (Web & Frontend Development category, ~919 skills) and identified **8 design/UX-relevant skills**. Each was vetted using the Skill Vetter protocol — reading all skill files, checking for red flags, and cross-referencing ClawHub security scans.

**Recommended for Leia:** 5 ✅ SAFE, 3 ⚠️ CAUTION

---

## Skills Found — Full Vetting Table

| # | Skill | Author | What It Does | For Leia | Safety | Red Flags | Recommendation |
|---|-------|--------|--------------|----------|--------|-----------|----------------|
| 1 | `anti-slop-design` | kjaylee | Design anti-patterns guide preventing generic AI aesthetics (purple gradients, Inter font, rounded corners) | ⭐⭐⭐⭐⭐ | ✅ SAFE | None | ✅ RECOMMEND |
| 2 | `awwwards-design` | mkhaytman87 | Award-winning website creation with GSAP, Framer Motion, custom cursors, scroll animations | ⭐⭐⭐⭐⭐ | ✅ SAFE | CDN snippet uses `:latest` tag (lenis from unpkg) — review before production | ✅ RECOMMEND |
| 3 | `ant-design-skill` | felipeoff | React UI patterns with Ant Design: forms, tables, layout, theming/tokens | ⭐⭐⭐ | ✅ SAFE | Starter project has `package.json` — inspect deps before `npm install` | ✅ RECOMMEND |
| 4 | `aioz-ui-skills` | datnguyen26730 | Maps Figma MCP output → AIOZ UI V3 React components (token lookup tables, import paths, variant mapping) | ⭐⭐⭐⭐ | ✅ SAFE | None | ✅ RECOMMEND |
| 5 | `brw-homepage-audit` | brianrwagner | Homepage conversion audit: 5-second test, scoring rubric, above-the-fold, CTAs | ⭐⭐⭐ | ✅ SAFE | None | ✅ RECOMMEND |
| 6 | `axe-devtools` | dylanb | Accessibility testing via axe DevTools MCP Server (Docker + axe container) | ⭐⭐⭐⭐ | ⚠️ CAUTION | Metadata mismatch (claims no env vars, actually needs AXE_API_KEY + Docker); `:latest` Docker tag; API key passed to container; optional `AXE_SERVER_URL` can redirect to arbitrary endpoint | ⚠️ CONDITIONAL |
| 7 | `anima-design-agent` | dannyshmueli | Prompt/URL/Figma → live app or code files via Anima cloud API (MCP or CLI) | ⭐⭐⭐⭐ | ⚠️ CAUTION | API key required; code/content transmitted to Anima cloud servers; Figma OAuth; no ClawHub security scan found | ⚠️ CONDITIONAL |
| 8 | `chilledsites` | paulgosnell | AI website generation + deployment to `.chilledsites.com` via REST API | ⭐⭐ | ⚠️ CAUTION | API credentials required; website content sent to `api.chilledsites.com`; no ClawHub security scan | ⚠️ CONDITIONAL |

---

## Detailed Vetting Reports

---

### ✅ 1. anti-slop-design

```
SKILL VETTING REPORT
═══════════════════════════════════════════════════════════════
Skill:     anti-slop-design
Source:    ClawHub / GitHub
Author:    kjaylee
Version:   1.0.0 (published 2025-11-09)
───────────────────────────────────────────────────────────────
METRICS:
• Files Reviewed:  2 (SKILL.md, _meta.json)
• Executable Code: NONE — pure markdown guidance document
• Network Access:  NONE
• Credentials:     NONE
───────────────────────────────────────────────────────────────
RED FLAGS: None
───────────────────────────────────────────────────────────────
PERMISSIONS NEEDED:
• Files:   None
• Network: None
• Commands: None
───────────────────────────────────────────────────────────────
RISK LEVEL: 🟢 LOW

VERDICT: ✅ SAFE TO INSTALL
═══════════════════════════════════════════════════════════════
```

**What it does:**  
Design philosophy guide written in Korean + English. Prevents "AI slop" aesthetics by cataloguing anti-patterns (Inter font, purple gradients, uniform rounded corners, centered layouts) and prescribing alternatives (unique fonts, asymmetry, bold color palettes, CSS-only motion).

**How it helps Leia:**  
Directly applicable design quality control. Teaches agents to avoid the generic AI-generated look. Excellent for any frontend work Leia does — ensures outputs are distinctive and professional.

**ClawHub Security Scan:** Not available.

---

### ✅ 2. awwwards-design

```
SKILL VETTING REPORT
═══════════════════════════════════════════════════════════════
Skill:     awwwards-design
Source:    ClawHub / GitHub
Author:    mkhaytman87
Version:   1.0.0 (published 2025-12-11)
───────────────────────────────────────────────────────────────
METRICS:
• Files Reviewed:  4 (SKILL.md 14.9KB, SNIPPETS.md 10.7KB,
                   TYPOGRAPHY.md 5.5KB, _meta.json)
• Executable Code: NONE — instruction + code reference file
• Network Access:  NONE (CDN links in snippets are informational)
• Credentials:    NONE
───────────────────────────────────────────────────────────────
RED FLAGS:
⚠️  SNIPPETS.md includes: <script src="unpkg.com/lenis@1.1.18/...">
    The :latest tag was used in the example (not pinned).
    Not a code-execution risk, but the pattern should not be
    copy-pasted verbatim to production.
───────────────────────────────────────────────────────────────
PERMISSIONS NEEDED:
• Files:   None
• Network: None (CDN links are in example snippets only)
• Commands: None
───────────────────────────────────────────────────────────────
RISK LEVEL: 🟢 LOW

VERDICT: ✅ SAFE TO INSTALL (note CDN :latest observation)
═══════════════════════════════════════════════════════════════
```

**What it does:**  
Comprehensive guide to building award-winning websites. Covers scroll-triggered animations (GSAP + ScrollTrigger), text splitting/typography animations, micro-interactions (magnetic buttons, custom cursors), page transitions (Barba.js), smooth scrolling (Lenis), and visual techniques (mesh gradients, textures). Includes a font directory and ready-to-use code snippets.

**How it helps Leia:**  
Premium design reference. When Leia needs to create impressive visual experiences — this is the gold standard guide. Covers everything from custom cursors to parallax to award-level typography.

**ClawHub Security Scan:** Not available.

---

### ✅ 3. ant-design-skill

```
SKILL VETTING REPORT
═══════════════════════════════════════════════════════════════
Skill:     ant-design-skill
Source:    ClawHub / GitHub
Author:    felipeoff
Version:   0.1.0 (published 2025-11-06)
───────────────────────────────────────────────────────────────
METRICS:
• Files Reviewed:  SKILL.md, README.md, examples/, patterns/,
                   protocols/, references/, starter/
• ClawHub Scan:    ✅ BENIGN (high confidence)
───────────────────────────────────────────────────────────────
RED FLAGS:
⚠️  starter/package.json + package-lock.json included.
    Before running npm install, review dependencies.
    No malicious packages detected — standard Ant Design ecosystem.
───────────────────────────────────────────────────────────────
PERMISSIONS NEEDED:
• Files:   Reads project files (normal for UI skill)
• Network: None
• Commands: npm install (if using starter) — review package.json first
───────────────────────────────────────────────────────────────
RISK LEVEL: 🟢 LOW

VERDICT: ✅ SAFE TO INSTALL
═══════════════════════════════════════════════════════════════
```

**What it does:**  
React UI building skill using the Ant Design (antd) component library. Covers page patterns (CRUD, Wizard, Settings, Dashboard), component usage (Forms, Tables, Modals, Drawers, Layout, Menu), theming via ConfigProvider tokens, dark mode, and component-level overrides.

**How it helps Leia:**  
When the project uses React + Ant Design, this skill ensures consistent, quality UI patterns. Good for dashboard/CRUD screens.

**ClawHub Security Scan:** ✅ BENIGN — "This skill appears to be what it says: UI patterns and a starter Ant Design project."

---

### ✅ 4. aioz-ui-skills

```
SKILL VETTING REPORT
═══════════════════════════════════════════════════════════════
Skill:     aioz-ui-skills
Source:    ClawHub / GitHub
Author:    datnguyen26730
Version:   1.0.1 (published 2026-01-24)
───────────────────────────────────────────────────────────────
METRICS:
• Files Reviewed:  SKILL.md, _meta.json, references/
                   (colors.md, typography.md, icons.md,
                    setup.md, charts.md, components.md)
• Executable Code: NONE — pure lookup reference tables
• Network Access:  NONE
• Credentials:     NONE
───────────────────────────────────────────────────────────────
RED FLAGS: None
───────────────────────────────────────────────────────────────
PERMISSIONS NEEDED:
• Files:   None
• Network: None
• Commands: None
───────────────────────────────────────────────────────────────
RISK LEVEL: 🟢 LOW

VERDICT: ✅ SAFE TO INSTALL
═══════════════════════════════════════════════════════════════
```

**What it does:**  
Maps Figma MCP output to AIOZ UI V3 React components. Provides exact import paths (separate paths for charts vs. UI), token name translation (Figma slash-format → CSS), variant → prop mapping, and component lookup tables. Covers charts (LineChart, AreaChart, BarChart, DonutChart).

**How it helps Leia:**  
Essential if the team uses Figma → code workflows. Gives precise token/class translations so nothing is guessed. Also valuable as a general React component patterns reference.

**ClawHub Security Scan:** Not available (instruction-only, low risk).

---

### ✅ 5. brw-homepage-audit

```
SKILL VETTING REPORT
═══════════════════════════════════════════════════════════════
Skill:     homepage-audit (brw-homepage-audit)
Source:    ClawHub / GitHub
Author:    brianrwagner
Version:   1.0.0 (published 2025-12-18)
───────────────────────────────────────────────────────────────
METRICS:
• Files Reviewed:  SKILL.md, _meta.json
• ClawHub Scan:    ✅ BENIGN (high confidence)
• Executable Code: NONE — audit checklist/guide
• Network Access:  NONE
• Credentials:     NONE
───────────────────────────────────────────────────────────────
RED FLAGS: None
───────────────────────────────────────────────────────────────
PERMISSIONS NEEDED:
• Files:   None
• Network: None
• Commands: None
───────────────────────────────────────────────────────────────
RISK LEVEL: 🟢 LOW

VERDICT: ✅ SAFE TO INSTALL
═══════════════════════════════════════════════════════════════
```

**What it does:**  
Structured homepage/landing page conversion audit. Covers the 5-second first-impression test, above-the-fold analysis, value proposition, social proof, clarity/copy, CTAs, and trust signals. Produces a weighted score (1–5) with prioritized quick wins and longer-term improvements.

**How it helps Leia:**  
Great for evaluating designs against conversion best practices. Useful before client handoffs or when assessing competitive landing pages.

**ClawHub Security Scan:** ✅ BENIGN — "A conversion/homepage audit checklist. ... appears coherent and low-risk."

---

### ⚠️ 6. axe-devtools

```
SKILL VETTING REPORT
═══════════════════════════════════════════════════════════════
Skill:     axe-devtools (axe-accessibility)
Source:    ClawHub / GitHub
Author:    dylanb
Version:   4.0.0 (published 2026-01-13)
───────────────────────────────────────────────────────────────
METRICS:
• Files Reviewed:  SKILL.md, scripts/axe-mcp.js, _meta.json
• ClawHub Scan:    ⚠️ SUSPICIOUS (high confidence)
───────────────────────────────────────────────────────────────
RED FLAGS:
🚨 Metadata mismatch: SKILL.md + script require AXE_API_KEY and
   Docker, but _meta.json claims no required env vars or binaries
🚨 API key (AXE_API_KEY) injected into Docker container — key
   is handed to the dequesystems/axe-mcp-server image
🚨 Docker image uses :latest tag (not pinned) — supply chain risk
🚨 Optional AXE_SERVER_URL env var can redirect workload to
   a custom/untrusted MCP server endpoint
───────────────────────────────────────────────────────────────
WHAT'S CLEAN:
✅ The wrapper script (axe-mcp.js) itself is well-written
✅ No malicious code, no data exfiltration
✅ No reading of .ssh, .env, ~/.config
✅ No package injection
✅ Uses spawn() with explicit args (no shell injection)
✅ --rm flag on Docker (no persistent containers)
───────────────────────────────────────────────────────────────
PERMISSIONS NEEDED:
• Files:   None (wrapper script only)
• Network: External: dequesystems.com (axe cloud), optionally
           custom AXE_SERVER_URL endpoint
• Commands: docker (spawned with explicit args)
───────────────────────────────────────────────────────────────
RISK LEVEL: 🟡 MEDIUM

VERDICT: ⚠️ INSTALL WITH CAUTION
  → Requires human approval (needs Docker + AXE_API_KEY)
  → Pin the Docker image digest before use
  → Treat AXE_SERVER_URL as HIGH TRUST if set
  → The script code itself is safe
═══════════════════════════════════════════════════════════════
```

**What it does:**  
Accessibility testing via axe DevTools MCP Server running in Docker. Provides `analyze` (scans a URL for WCAG violations) and `remediate` (AI-powered fix guidance) tools. Requires a paid Axe DevTools for Web subscription.

**How it helps Leia:**  
Accessibility compliance is a critical part of design quality. This skill lets Leia validate designs against WCAG standards automatically.

**ClawHub Security Scan:** ⚠️ SUSPICIOUS — ClawHub flagged the metadata mismatch, Docker `:latest` tag, and secret injection as concerns. However, the actual wrapper code is clean and safe.

---

### ⚠️ 7. anima-design-agent

```
SKILL VETTING REPORT
═══════════════════════════════════════════════════════════════
Skill:     anima-design-agent (anima)
Source:    ClawHub / GitHub
Author:    dannyshmueli
Version:   1.2.0 (published 2026-01-16) — actively maintained
───────────────────────────────────────────────────────────────
METRICS:
• Files Reviewed:  SKILL.md, _meta.json
• ClawHub Scan:    Not available
• Executable Code: Anima CLI (npx @animaapp/cli) or MCP server
• Network Access:  Anima cloud API + optional Figma OAuth
───────────────────────────────────────────────────────────────
RED FLAGS:
🚨 ANIMA_API_KEY required — credential submitted to external
   cloud service
🚨 CODE EXFILTRATION: Path B (codegen) transmits code from
   user projects to Anima servers for processing
🚨 Figma OAuth: Figma integration requires OAuth token flow
🚨 No ClawHub security scan found — cannot verify third-party
   code quality
───────────────────────────────────────────────────────────────
WHAT'S CLEAN:
✅ Skill itself (SKILL.md) is instruction-only, well-written
✅ No malicious code in the skill files themselves
✅ No local file exfiltration, no .ssh/.env reading
✅ npm package (@animaapp/cli) is a known vendor tool
───────────────────────────────────────────────────────────────
PERMISSIONS NEEDED:
• Files:   Reads workspace files for Path B codegen
• Network: api.animaapp.com (cloud), Figma API (OAuth)
• Commands: npx @animaapp/cli (or MCP server)
───────────────────────────────────────────────────────────────
RISK LEVEL: 🟡 MEDIUM (high if integrating into existing codebases)

VERDICT: ⚠️ INSTALL WITH CAUTION
  → Human approval required before using Path B (codegen)
  → Leia should use this for prototyping / Path A only
    unless Mike approves codebase transmission to Anima
  → Do NOT use Path B on proprietary client code
═══════════════════════════════════════════════════════════════
```

**What it does:**  
Design-to-code agent with two paths: **Path A** (Create & Publish) — builds complete apps from prompts/URLs/Figma and hosts them on Anima Playground. **Path B** (Integrate into Codebase) — generates code from Figma URLs or Playground URLs and delivers files for local integration.

**How it helps Leia:**  
Powerful design-to-prototype tool. Can take a Figma design and generate a working app. Excellent for rapid iteration and concept exploration.

**ClawHub Security Scan:** Not available on ClawHub.

---

### ⚠️ 8. chilledsites

```
SKILL VETTING REPORT
═══════════════════════════════════════════════════════════════
Skill:     chilledsites
Source:    ClawHub / GitHub
Author:    paulgosnell
Version:   1.0.0 (published 2025-11-08)
───────────────────────────────────────────────────────────────
METRICS:
• Files Reviewed:  SKILL.md, _meta.json
• ClawHub Scan:    Not available
• Network Access:  api.chilledsites.com
───────────────────────────────────────────────────────────────
RED FLAGS:
🚨 API credentials required (CHILLEDSITES_API_KEY,
   CHILLEDSITES_API_SECRET) — secrets sent to external service
🚨 Website content transmitted to api.chilledsites.com
   including: prompts, generated HTML/CSS/JS, custom uploads
🚨 Automated signup endpoint: POST with email parameter
   (could be used to create accounts — legitimate but worth noting)
🚨 No ClawHub security scan found
───────────────────────────────────────────────────────────────
WHAT'S CLEAN:
✅ API endpoint is a fixed, known domain (api.chilledsites.com)
✅ No code execution, no local file access
✅ No reading of .ssh, .env, ~/.config
✅ No malicious code in the skill itself
───────────────────────────────────────────────────────────────
PERMISSIONS NEEDED:
• Files:   None
• Network: api.chilledsites.com (REST API calls)
• Commands: None
───────────────────────────────────────────────────────────────
RISK LEVEL: 🟡 MEDIUM

VERDICT: ⚠️ INSTALL WITH CAUTION
  → Human approval recommended (API key required + data exfil)
  → Only use if Mike is comfortable with website content
    being sent to chilledsites.com
  → Use for Leia's rapid prototyping, not client data
═══════════════════════════════════════════════════════════════
```

**What it does:**  
AI-powered website generation and deployment via REST API. Generates sites from text prompts, deploys to `.chilledsites.com` subdomains, supports custom HTML/CSS/JS upload, and AI image generation.

**How it helps Leia:**  
Quick prototyping tool — generate a website from a description in seconds. Useful for mockups and concept validation.

**ClawHub Security Scan:** Not available on ClawHub.

---

## Recommendations for Leia (Design Agent)

### ✅ Install These (No Additional Approval Needed)

1. **`kjaylee/anti-slop-design`** — Mandatory read for any design work. Prevents generic AI slop.
2. **`mkhaytman87/awwwards-design`** — Premium design reference for exceptional visual work.
3. **`felipeoff/ant-design-skill`** — When using React + Ant Design, this is the pattern guide.
4. **`datnguyen26730/aioz-ui-skills`** — Figma → React code mapping. Essential if using Figma MCP.
5. **`brianrwagner/brw-homepage-audit`** — UX/conversion audit framework. Great pre-launch checklist.

### ⚠️ Install These Only With Mike's Approval

6. **`dylanb/axe-devtools`** — Requires Docker + AXE_API_KEY. Script is safe but needs configuration review.
7. **`dannyshmueli/anima-design-agent`** — Powerful but transmits code to Anima cloud. Use Path A (publishing) only unless Mike approves Path B.
8. **`paulgosnell/chilledsites`** — Website content goes to external API. Use for prototyping only.

---

## Installation Commands

```bash
# Safe skills — install directly
clawhub install kjaylee/anti-slop-design
clawhub install mkhaytman87/awwwards-design
clawhub install felipeoff/ant-design-skill
clawhub install datnguyen26730/aioz-ui-skills
clawhub install brianrwagner/brw-homepage-audit

# Conditional skills — get Mike's approval first
clawhub install dylanb/axe-devtools        # needs Docker + AXE_API_KEY setup
clawhub install dannyshmueli/anima-design-agent  # needs ANIMA_API_KEY + cloud policy approval
clawhub install paulgosnell/chilledsites   # needs API credentials + data policy approval
```

---

## Vetting Methodology

This report followed the [Skill Vetter](https://clawhub.ai/spclaudehome/skill-vetter) protocol:

1. **Source Check** — All skills from the official `openclaw/skills` GitHub repo, authors verified
2. **Code Review** — Every file in each skill reviewed; no `eval()`, no `exec()` with external input, no obfuscation, no base64 decode patterns
3. **Permission Scope** — Evaluated file reads, network calls, commands, credential requirements
4. **ClawHub Cross-Reference** — ClawHub security scans checked for: axe-devtools ✅ SUSPICIOUS, ant-design-skill ✅ BENIGN, homepage-audit ✅ BENIGN

**No 🚨 REJECT IMMEDIATELY flags found in any skill.**

---

*Report by MacGyver — Maintenance Agent | Steel City AI*  
*Generated: 2026-04-03*
