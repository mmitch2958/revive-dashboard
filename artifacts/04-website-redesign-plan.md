# Revive Roof Repair — Website Redesign Plan

**Prepared for:** Revive Roof Repair  
**Location:** Harrisburg, PA Area  
**Date:** April 2026  
**Prepared by:** Steel City AI — Design & UX Team  
**Platform:** Next.js (React Framework)

---

## 1. Current Site Audit Summary

### Platform & Technology
- **Current platform:** GoDaddy Website Builder 8.0
- **Limitations:** Outdated builder with restricted customization, limited SEO controls, slow page load times, minimal e-commerce or lead-capture integrations
- **Mobile responsiveness:** Inadequate — layout breaks on smaller viewports

### Visual & Brand Issues
- **Primary brand color:** Grey (#dcdcdc) — lacks energy, trust, and industry relevance
- **Logo color:** Slate Blue-Gray (#4C6971) — present in the logo but underutilized on the current site
- **Imagery:** Predominantly stock photos; no authentic crew, job-site, or project photos
- **Typography:** Default system fonts; no brand-consistent type hierarchy
- **Logo usage:** Inconsistent placement and sizing across pages

### Content & SEO Deficiencies
- **Page structure:** Single-page or minimal page count; no dedicated service pages
- **Meta data:** Missing or auto-generated title tags and meta descriptions
- **Local SEO:** No Google Business Profile integration, no location-specific content, no service-area pages
- **Content depth:** Thin content — insufficient copy to rank for roofing keywords
- **Schema markup:** Completely absent (no LocalBusiness, Service, or Review schema)

### Conversion & Trust Gaps
- **Lead capture:** No visible contact forms, no quote request flow
- **Click-to-call:** Not prominent on mobile
- **Social proof:** No testimonials, reviews, or project galleries
- **Trust signals:** Missing license numbers, insurance info, certifications, BBB rating

---

## 2. Proposed Architecture & Sitemap

### Technology Stack
| Layer | Choice | Rationale |
|-------|--------|-----------|
| Framework | Next.js 14+ (App Router) | SSR/SSG, image optimization, API routes |
| Styling | Tailwind CSS | Rapid prototyping, consistent design tokens |
| CMS | Contentful or Sanity | Client-editable testimonials, blog posts, FAQs |
| Hosting | Vercel | Zero-config Next.js hosting, edge functions |
| Forms | Next.js API Routes + Resend | Server-side form handling, email delivery |
| Analytics | Google Analytics 4 + Plausible | Privacy-friendly + detailed funnel tracking |

### Sitemap

```
/
├── / (Home — primary conversion page)
├── /services
│   ├── /services/roof-repair
│   ├── /services/roof-replacement
│   ├── /services/emergency-repair
│   ├── /services/roof-inspection
│   └── /services/storm-damage
├── /service-areas
│   ├── /service-areas/harrisburg
│   ├── /service-areas/mechanicsburg
│   ├── /service-areas/carlisle
│   ├── /service-areas/lancaster
│   └── /service-areas/[dynamic-area]
├── /reviews
├── /gallery
├── /about
├── /blog
│   └── /blog/[slug]
├── /contact
└── /free-inspection (dedicated landing page)
```

### Data Flow
- **Static pages** (Home, About, Contact) → Pre-rendered at build time (SSG)
- **Dynamic pages** (Blog posts, Service Areas) → Generated per path (SSG/ISR)
- **Form submissions** → API Route → Resend email → CRM webhook
- **Reviews** → Fetched from Google Business Profile API or CMS

---

## 3. Design System

### Color Palette

| Token | Hex | Usage |
|-------|-----|-------|
| `primary` | `#4C6971` (Slate Blue-Gray) | Hero backgrounds, primary buttons, headers — derived from the existing Revive logo; conveys professionalism, trust, dependability |
| `secondary` | `#C87941` (Copper) | CTAs, accent highlights, badges — evokes roofing materials (copper flashing, metal roofs), warmth, action |
| `neutral-900` | `#1A1A1A` | Body text, headings |
| `neutral-100` | `#F7F7F5` | Page backgrounds, card surfaces |
| `neutral-200` | `#E8E6E1` | Borders, dividers |
| `white` | `#FFFFFF` | Card backgrounds, overlays |
| `danger` | `#C0392B` | Emergency service alerts, error states |
| `success` | `#27AE60` | Confirmation states, badges |

### Typography

| Token | Font | Size | Weight | Usage |
|-------|------|------|--------|-------|
| `display-lg` | Inter | 56px / 3.5rem | 800 | Hero headline |
| `display-sm` | Inter | 36px / 2.25rem | 700 | Section headings |
| `heading-md` | Inter | 24px / 1.5rem | 600 | Card titles, subheads |
| `body-lg` | Inter | 18px / 1.75rem | 400 | Intro paragraphs |
| `body-md` | Inter | 16px / 1rem | 400 | Body copy |
| `body-sm` | Inter | 14px / 0.875rem | 400 | Captions, meta text |
| `label` | Inter | 14px / 0.875rem | 600 | Buttons, form labels |

### Spacing Scale
| Token | Value |
|-------|-------|
| `space-1` | 4px |
| `space-2` | 8px |
| `space-3` | 12px |
| `space-4` | 16px |
| `space-6` | 24px |
| `space-8` | 32px |
| `space-12` | 48px |
| `space-16` | 64px |
| `space-24` | 96px |

### Hero / CTA Concepts

**Hero Section — Home Page**
- Full-viewport background: high-quality, authentic photo of completed roof (crew on job site)
- Dark slate (`primary`) gradient overlay at 60% opacity for text legibility
- Large white display headline: *"Protecting Harrisburg Homes — One Roof at a Time"*
- Subheading in `body-lg`: *"Licensed. Insulated. Insured. Free inspections within 24 hours."*
- Dual CTAs: Primary button in `secondary` (copper): "Get Your Free Inspection" + Ghost button: "View Our Work"

**Sticky Mobile CTA**
- Fixed bottom bar on mobile with phone icon + "Call Now" (click-to-call)
- Secondary button: "Free Quote" linking to form

**Section CTA Banner**
- Full-width `primary` slate background
- Left: bold white text "Storm season is here. Don't wait."
- Right: `secondary` copper button "Schedule Emergency Repair"

---

## 4. Wireframe Descriptions

### 4.1 Home Page

```
┌─────────────────────────────────────────────────┐
│  NAV: Logo (left) | Services ▼ Areas ▼ About   │
│  Reviews ▼ | Phone (right) | [Free Inspection]  │
├─────────────────────────────────────────────────┤
│                                                 │
│  ┌─────────────────────────────────────────┐    │
│  │         HERO IMAGE / VIDEO              │    │
│  │   "Protecting Harrisburg Homes"         │    │
│  │   Subheading + Dual CTAs                │    │
│  │   ⭐ 4.9 stars · 200+ roofs completed   │    │
│  └─────────────────────────────────────────┘    │
│                                                 │
│  ── Trust Bar ──────────────────────────────    │
│  [Licensed] [Insured] [BBB A+] [GAF Cert.]    │
│                                                 │
│  ── Services Grid (3 columns) ──────────────   │
│  [Roof Repair] [Roof Replacement] [Emergency]  │
│  Each card: icon + title + description + arrow  │
│                                                 │
│  ── Why Revive? (2 col: image + bullet list)   │
│  Image: crew at work                           │
│  List: Free inspections, same-day estimates,    │
│  lifetime warranty, 24/7 emergency service      │
│                                                 │
│  ── Project Gallery (carousel) ─────────────   │
│  Before/after slider of completed projects      │
│                                                 │
│  ── Testimonials (carousel, 3 visible) ────    │
│  Star rating + quote + name + neighborhood      │
│                                                 │
│  ── Service Areas Map ─────────────────────    │
│  Interactive map of Harrisburg metro            │
│  with clickable area pins                       │
│                                                 │
│  ── CTA Banner ────────────────────────────    │
│  "Ready for a Free Roof Inspection?"           │
│  [Schedule Now] button                         │
│                                                 │
│  ── Footer ────────────────────────────────    │
│  Logo | Contact info | Quick links | Social    │
│  Service areas | Hours | License #             │
│  © 2026 Revive Roof Repair                     │
└─────────────────────────────────────────────────┘
```

### 4.2 Services Page (`/services`)

- **Header:** Slate (`primary`) banner with "Our Roofing Services" + breadcrumb
- **Service Cards:** Grid of 5 cards (one per service), each with:
  - Icon + Service name
  - 2-line description
  - "Learn More" → links to individual service page
- **Process Section:** 4-step visual flow (1. Call/Contact → 2. Free Inspection → 3. Detailed Estimate → 4. Quality Work)
- **CTA Banner** + **Footer**

### 4.3 Individual Service Page (`/services/[slug]`)

- **Hero:** Service-specific headline + subhead
- **Problem/Solution Layout:** Left: common issues (bullet list), Right: what we do (process)
- **Pricing/Value Section:** Transparent value proposition (not fixed prices, but "what affects cost")
- **Related Projects Gallery:** Filtered before/after photos
- **FAQ Accordion:** 5–8 common questions for that service (great for SEO)
- **CTA + Contact Form:** Inline quote request form
- **Related Services:** Cross-links to other service pages

### 4.4 Service Areas Page (`/service-areas`)

- **Interactive Map:** Google Maps embed with pins for each served area
- **Area Cards:** Grid of service area links, each showing:
  - City name
  - Distance from base
  - "Proudly serving [City] since [Year]"
- **Individual Area Pages (`/service-areas/[city]`):**
  - City-specific hero ("Roof Repair in Mechanicsburg, PA")
  - Local testimonials from that area
  - Area-specific content (weather challenges, common roof types)
  - Embedded local map

### 4.5 Reviews Page (`/reviews`)

- **Aggregate Rating:** Large "4.9 ★★★★★" with "Based on 150+ reviews" at top
- **Review Source Badges:** Google, Yelp, Facebook links
- **Filterable Grid:** Reviews filterable by service type (repair, replacement, emergency)
- **Review Cards:** Star rating + full text + reviewer name + date + service type
- **"Leave a Review" CTA:** Links to Google Business Profile review page
- **Video Testimonials:** 2–3 short customer video clips (if available)

### 4.6 Contact Page (`/contact`)

- **Split Layout:**
  - **Left:** Contact form (Name, Phone, Email, Service Interest dropdown, Message, "Upload Photo" button)
  - **Right:** Contact details (phone, email, hours, service area map, social links)
- **Click-to-Call:** Large phone number with tel: link
- **Trust Reinforcement:** "Licensed & Insured · Free Estimates · Same-Day Response"
- **Emergency Banner:** Red/danger-styled "24/7 Emergency? Call [phone] now."

---

## 5. Conversion Strategy

### Lead Capture Touchpoints

| Touchpoint | Location | Mechanism | Goal |
|-----------|----------|-----------|------|
| Hero CTA | Home hero | "Get Free Inspection" → form | Primary conversion |
| Sticky mobile bar | All pages (mobile) | Click-to-call + quote button | Mobile conversion |
| Inline forms | Service pages | Contextual quote request | Service-specific leads |
| Exit-intent modal | Home, Services | "Before you go — free estimate" | Recover abandoning visitors |
| Blog CTAs | Blog posts | Content-upgrade or service CTA | Nurture → convert |
| Footer form | All pages | Compact email capture | Catch-all |
| Dedicated landing | `/free-inspection` | Focused single-purpose page | Paid traffic destination |

### Trust Signal Placement

| Signal | Placement |
|--------|-----------|
| Star rating (Google) | Homepage hero, sticky header, reviews page |
| "Licensed & Insured" | Trust bar, footer, every service page |
| BBB badge | Footer, About page |
| GAF/manufacturer certs | Trust bar, About page |
| "200+ Roofs Completed" | Hero, Why Revive section |
| Before/After gallery | Home carousel, individual service pages |
| Customer photos | Reviews page, project gallery |
| Service area list | Footer, dedicated page |

### Lead Nurture Flow
1. **Immediate:** Auto-reply email confirming inquiry received + expected response time
2. **Within 1 hour:** Personal follow-up call or text from Revive team
3. **Day 3:** If no response, automated SMS: "Still need that free inspection?"
4. **Post-service:** Review request email with direct Google review link

---

## 6. Next.js SEO Advantages

### Technical SEO Benefits

| Next.js Feature | SEO Benefit | Impact |
|----------------|-------------|--------|
| **Static Site Generation (SSG)** | Pre-rendered HTML served instantly; Googlebot indexes complete content | ⬆️ Crawlability |
| **Server-Side Rendering (SSR)** | Dynamic pages (blog, areas) rendered server-side with full content | ⬆️ Content visibility |
| **Incremental Static Regeneration (ISR)** | Update static pages without full rebuild; keep content fresh | ⬆️ Freshness signals |
| **Image Optimization (`next/image`)** | Auto WebP/AVIF conversion, lazy loading, responsive srcset | ⬆️ Core Web Vitals (LCP) |
| **Built-in Head Management (`next/head`)** | Per-page `<title>`, `<meta>`, Open Graph, Twitter cards | ⬆️ CTR from SERPs |
| **Automatic Code Splitting** | Only load JS needed per page; smaller bundles | ⬆️ Core Web Vitals (FID/INP) |
| **Edge Runtime (Vercel)** | Pages served from edge nodes closest to Harrisburg | ⬆️ TTFB |
| **Structured Data (JSON-LD)** | Inject LocalBusiness, Service, FAQ, Review schema per page | ⬆️ Rich snippets in search |

### On-Page SEO Implementation

**Per-Page Meta Strategy:**

| Page | Title Tag | Meta Description |
|------|-----------|-----------------|
| Home | "Revive Roof Repair — Harrisburg PA's Trusted Roofers" | "Licensed roofing contractors serving Harrisburg, Mechanicsburg & Lancaster. Free inspections, 24/7 emergency repair. ⭐ 4.9 stars. Call (XXX) XXX-XXXX." |
| Roof Repair | "Expert Roof Repair in Harrisburg PA | Revive Roof Repair" | "Leaking roof? Cracked shingles? Revive Roof Repair provides fast, reliable roof repair in the Harrisburg area. Free inspection — call today." |
| Service Areas | "Roofing Services in Central PA | Revive Roof Repair" | "Serving Harrisburg, Mechanicsburg, Carlisle, Lancaster & surrounding areas. Local roofers you can trust. Get your free estimate." |

**Structured Data (JSON-LD) Per Page Type:**

```json
// Homepage — LocalBusiness
{
  "@context": "https://schema.org",
  "@type": "RoofingContractor",
  "name": "Revive Roof Repair",
  "image": "https://reviveroofrepair.com/og-image.jpg",
  "address": {
    "@type": "PostalAddress",
    "addressLocality": "Harrisburg",
    "addressRegion": "PA"
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.9",
    "reviewCount": "150"
  }
}
```

```json
// Service Page — Service
{
  "@context": "https://schema.org",
  "@type": "Service",
  "serviceType": "Roof Repair",
  "areaServed": ["Harrisburg", "Mechanicsburg", "Carlisle"],
  "provider": {
    "@type": "RoofingContractor",
    "name": "Revive Roof Repair"
  }
}
```

```json
// FAQ Section — FAQPage
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "How much does a roof replacement cost?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "..."
      }
    }
  ]
}
```

### Core Web Vitals Targets

| Metric | Target | How We Achieve It |
|--------|--------|-------------------|
| **LCP** (Largest Contentful Paint) | < 2.5s | SSG hero, optimized images, preloaded fonts |
| **INP** (Interaction to Next Paint) | < 200ms | Code splitting, minimal client JS, lazy-loaded components |
| **CLS** (Cumulative Layout Shift) | < 0.1 | Defined image dimensions, font-display: swap with fallbacks |
| **TTFB** (Time to First Byte) | < 200ms | Vercel Edge Network, SSG |

---

## 7. Project Implementation Timeline

### Phase 1: Discovery & Design (Weeks 1–2)

| Week | Deliverable | Owner |
|------|-------------|-------|
| Week 1 | Kickoff call, brand questionnaire, content audit, competitor analysis | Design + Client |
| Week 1 | Photography session (crew, jobsite, completed projects) | Client / Photographer |
| Week 2 | Design system (colors, typography, tokens) finalized | Design |
| Week 2 | High-fidelity mockups: Home, Services, Contact | Design |
| Week 2 | Client review & approval | Client |

### Phase 2: Development (Weeks 3–5)

| Week | Deliverable | Owner |
|------|-------------|-------|
| Week 3 | Next.js project setup, Tailwind config, design tokens coded | Dev |
| Week 3 | Component library (Navbar, Footer, CTA, Card, Form, Testimonial) | Dev |
| Week 4 | Page development: Home, Services, Service Areas, Reviews | Dev |
| Week 4 | CMS setup (Contentful/Sanity) + content migration | Dev + Client |
| Week 5 | Contact form with API routes + email delivery | Dev |
| Week 5 | SEO: meta tags, JSON-LD, sitemap.xml, robots.txt | Dev |

### Phase 3: Content & Optimization (Week 6)

| Task | Owner |
|------|-------|
| Final copy for all pages (or AI-assisted drafts → client review) | Design + Client |
| Image optimization (WebP/AVIF, alt text, lazy loading) | Dev |
| Accessibility audit (WCAG 2.1 AA) — keyboard nav, contrast, ARIA | QA |
| Performance audit (Lighthouse 90+ all categories) | Dev + QA |
| Mobile testing across iOS + Android devices | QA |

### Phase 4: Launch & Handoff (Week 7)

| Task | Owner |
|------|-------|
| DNS migration to Vercel | Dev + Client |
| SSL verification | Dev |
| Google Search Console setup + sitemap submission | Dev |
| Google Analytics 4 + Plausible setup | Dev |
| 301 redirects from old GoDaddy URLs | Dev |
| Client training session (CMS usage, form management) | Dev |
| **Go Live** 🚀 | All |

### Phase 5: Post-Launch (Weeks 8–10)

| Task | Owner |
|------|-------|
| Monitor Core Web Vitals + fix regressions | Dev |
| Review search indexing status | Dev |
| A/B test hero headlines + CTA copy | Design + Client |
| Collect real testimonials + integrate | Client + Dev |
| Optional: Blog launch (2 posts/month for SEO) | Content Strategy |

---

## Investment Summary

| Phase | Estimated Effort |
|-------|-----------------|
| Discovery & Design | 2 weeks |
| Development | 3 weeks |
| Content & Optimization | 1 week |
| Launch & Handoff | 1 week |
| Post-Launch Support | 2–3 weeks (included) |
| **Total Timeline** | **~7–10 weeks** |

---

## Appendix: Competitor Benchmarking Notes

When benchmarking against other Harrisburg-area roofing companies, prioritize:
- **Authentic photography** over stock images (immediate trust differentiator)
- **Service-area depth** — more area pages = more local search visibility
- **Review prominence** — display reviews more aggressively than competitors
- **Page speed** — outperform competitors on Core Web Vitals (most roofing sites are slow)
- **Content depth** — detailed FAQ sections and blog posts establish authority

---

*This plan is a living document. Updates and revisions will be tracked through the Steel City AI project management system.*
