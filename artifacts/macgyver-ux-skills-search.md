# UX/UI Design Skills Search — MacGyver Report
**Date:** 2026-04-03  
**Searched for:** Mike / Leia (Design Agent) — Revive Roof Repair website redesign  
**Scope:** Installed skills (workspace + npm-global) + ClawHub discoverable skills  

---

## TL;DR

**No dedicated UX/UI design skills are currently installed for Leia.**  
One partially-related skill exists (`accessibility-toolkit`), and several strong candidates are available on ClawHub. Recommend installing 1–2 skills after security scan + Mike approval.

---

## 1. Currently Installed — UX/UI Design Coverage

### ✅ `accessibility-toolkit` (openclaw-workspace — READY)
- **Closest thing to UX work we have.** Covers friction-reduction patterns for agents helping humans with disabilities.
- Includes voice-first workflows, smart home templates, accessibility considerations.
- **Use for Leia:** Accessibility auditing (WCAG alignment) is directly applicable to the Revive Roof Repair site.
- **Does NOT cover:** Wireframing, UI layout, design systems, color theory, responsive design.

### Other Installed Skills (marginally related)
| Skill | Relevance to UX/UI |
|---|---|
| `ad-ready` | Generates ad images — visual output, not UX process |
| `on-page-seo-auditor` | SEO content/structure, not visual design |
| `technical-seo-checker` | Mobile/speed, some overlap with responsive design concerns |
| `competitor-analysis` | Competitive design benchmarking — useful input, not a design tool |
| `content-creator` | Brand voice + SEO content — workflow input, not design |

**No skills provide: wireframing, mockup generation, design system creation, UI layout, or UX research.**

---

## 2. ClawHub — Available UX/UI Design Skills

### 🔹 Wireframe / User Flow
| Skill | Source | Description |
|---|---|---|
| `wireframe` | `clawhub.ai/ckchzh/wireframe` | Create wireframes + user flows. Outputs ASCII/SVG sketches, page layouts, maps user flows, exports to HTML. **Highly recommended for Leia.** |

### 🔹 UI/UX Mockup Generation
| Skill | Source | Description |
|---|---|---|
| `muapi-ui-design-skill` | `clawhub.ai/anil-matcha/muapi-ui-design-skill` | Generates high-fidelity UI/UX mockups for mobile/web using **Atomic Design principles**. Creates wireframes + design systems. **Strong fit.** |
| `ui-ux-dev` | `clawhub.ai/wing8169/ui-ux-dev` | Generates and delivers live HTML/CSS/JS from natural language. ⚠️ Security flags noted — review before install. |
| `ui-ux` | `clawhub.ai/wpank/ui-ux` | Searchable design database: 50+ styles, 97 color palettes, 57 font pairings, 99 UX rules, 25 chart types. CLI-based design system generation. **Low-friction entry point.** |
| `ux` | `clawhub.ai/ivangdavila/ux` | Text-based UX checklist: flow analysis, mental model alignment, friction reduction, progressive disclosure, feedback design, error prevention, cognitive load. **Excellent for UX research phase.** |

### 🔹 Frontend Design (code-output)
| Skill | Source | Description |
|---|---|---|
| `frontend-design-3` | ClawHub | Production-grade frontend interfaces — web components, landing pages, dashboards. Strong creative output. |
| `frontend-design-pro` | ClawHub | Professional frontend design standards — audit/polish/critique commands. Anti-AI-aesthetic focus. |
| `design-to-code` | ClawHub | Pixel-accurate implementation from Figma/Sketch/image. Best for when designs already exist and need to be coded. |
| `elite-frontend-design` | ClawHub | Full HTML/CSS/JS output for landing pages, dashboards, React components. Creative + polished. |
| `graphic-design` | ClawHub | Design theory and production — visual design output (covers basic to professional). |

---

## 3. Recommendation for Leia — Revive Roof Repair Website Redesign

### Priority Install Order

| Priority | Skill | Why Leia Needs It | Notes |
|---|---|---|---|
| **1 (HIGH)** | `ux` | UX research + friction analysis before any design work begins. Aligns redesign with user mental models. | Security scan required |
| **2 (HIGH)** | `wireframe` | Rapid ASCII/SVG wireframes for homepage, service pages, contact form — fast iteration before code. | Security scan required |
| **3 (MEDIUM)** | `muapi-ui-design-skill` | Atomic Design mockups — professional design system output. Strong for client-facing deliverables. | Security scan required |
| **4 (MEDIUM)** | `frontend-design-3` | Generates polished HTML/CSS for landing pages. Leia can deliver live code, not just specs. | Security scan required |

### Skills to Skip for Now
- **`ui-ux-dev`** — Security flags noted; lower priority vs. cleaner alternatives
- **`graphic-design`** — Broader than needed for a service website redesign
- **`design-to-code`** — Useful after designs exist, not during ideation phase

---

## 4. Suggested Skill Structure for a Custom Leia-Design Skill

If no ClawHub skill fits perfectly, here's the recommended structure for creating a custom `leia-website-design` skill:

```
leia-website-design/
├── SKILL.md                        # Core trigger + usage guide
├── references/
│   ├── ux-checklist.md             # UX review checklist (friction, CTAs, trust signals)
│   ├── design-principles.md        # Steel City brand guidelines + Revive Roof Repair specifics
│   ├── wireframe-templates.md      # ASCII wireframes for common page types
│   └── accessibility-baseline.md   # WCAG 2.1 AA minimum standards
└── scripts/
    └── generate-wireframe.js       # Optional: script-assisted wireframe generation
```

**SKILL.md triggers:**
- "design a landing page"
- "create a wireframe for"
- "website redesign"
- "UX review"
- "design system"

---

## 5. Action Items for Mike

| # | Action | Owner |
|---|---|---|
| 1 | Security scan + approve install: `ux` (ClawHub) | Mike → MacGyver |
| 2 | Security scan + approve install: `wireframe` (ClawHub) | Mike → MacGyver |
| 3 | Security scan + approve install: `muapi-ui-design-skill` (ClawHub) | Mike → MacGyver |
| 4 | (Optional) Task MacGyver to build custom `leia-website-design` skill | Mike |
| 5 | Register approved skills in `memory/skills-registry.json` | MacGyver |

---

*MacGyver — Skills Maintenance Report | 2026-04-03*
