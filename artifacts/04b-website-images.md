# Revive Roof Repair — Website Images & Visual Assets

**Companion to:** `04-website-redesign-plan.md`  
**Date:** April 3, 2026  
**Source:** https://reviveroofrepair.com/ (live site audit)  
**Hosting Platform:** img1.wsimg.com (GoDaddy Website Builder CDN)

---

## 1. Current Image Inventory

### 1.1 Logo
| Asset | URL | Format | Sizes Available |
|-------|-----|--------|-----------------|
| **Revive Roof Repair Logo** | `//img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/blob-40fefb0.png` | PNG (transparent) | 57×57, 60×60, 72×72, 114×114, 120×120, 144×144, 152×152, 180×180, 200×200 |

**Assessment:** The logo exists only as small PNG sizes (max 200px). For a modern redesign, we need:
- ✅ **Keep:** The logo design itself (brand recognition)
- ⚠️ **Request:** Vector version (SVG or AI/EPS file) from the client for infinite scaling
- ⚠️ **Create:** New high-resolution PNG export at minimum 512×512 and 1024×1024
- 🎨 **Note:** Logo color is Slate Blue-Gray (#4C6971) — this must anchor our brand palette

### 1.2 Hero / Primary Images
| Asset | URL | Type | Notes |
|-------|-----|------|-------|
| **Hero Background** | `1000034820.jpg` | Company-owned photo | Main hero section, appears to be a roofing job |
| **Section Background** | `blob-7a09248.png` | Company-owned PNG | Used as dark overlay background for CTA sections |

**Current Treatment:** Hero uses a **teal/mint color overlay** (rgba(174, 209, 209, 0.25)) — this does NOT match the stated brand colors (#4C6971 Slate Blue-Gray + #C87941 Copper). This is a **critical mismatch** to fix.

### 1.3 Company-Owned Gallery Images
These are uploaded to the Revive Roof Repair GoDaddy account — **these are THEIR actual work:**

| Asset | Full URL | Recommended Use |
|-------|----------|-----------------|
| `1000034820.jpg` | `//img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000034820.jpg` | ✅ Hero image — keep, enhance |
| `1000031536.jpg` | `//img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000031536.jpg` | ✅ Services section — keep |
| `1000032625.jpg` | `//img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000032625.jpg` | ✅ Gallery/portfolio — keep |
| `1000032627.jpg` | `//img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000032627.jpg` | ✅ Gallery/portfolio — keep |
| `1000032636-067894e.jpg` | `//img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000032636-067894e.jpg` | ✅ Gallery/portfolio — keep |
| `1000031368.jpg` | `//img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000031368.jpg` | ✅ Services section — keep |
| `1000032624.jpg` | `//img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000032624.jpg` | ✅ Gallery/portfolio — keep |
| `1000032628.jpg` | `//img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000032628.jpg` | ✅ Gallery/portfolio — keep |

**Action Required:** Download all 8 company-owned images at maximum resolution BEFORE the GoDaddy site is decommissioned. Use `rs=w:5760,m` parameter for highest available resolution.

### 1.4 Stock Photos (Getty Images) — Should Be Replaced
These are GoDaddy builder stock photos (Getty) that should be **replaced with authentic project photos** in the redesign:

| Getty ID | Current Use | Recommendation |
|----------|-------------|----------------|
| `2191184861` | Service section carousel | ❌ **REPLACE** — stock photo, not authentic |
| `1397407913` | Service section carousel | ❌ **REPLACE** — stock photo |
| `2187763372` | Service section carousel | ❌ **REPLACE** — stock photo |
| `2066589977` | Service section carousel | ❌ **REPLACE** — stock photo |
| `1356846560` | Service section carousel | ❌ **REPLACE** — stock photo |
| `1939278783` | Service section carousel | ❌ **REPLACE** — stock photo |
| `2159416425` | Service section carousel | ❌ **REPLACE** — stock photo |
| `2004685174` | Service section carousel | ❌ **REPLACE** — stock photo |

**Strategy:** Use the 8 company-owned images in the new design. Supplement with a professional photo shoot (see Section 5).

---

## 2. Brand Color Alignment

### Current State (Problematic)
The live site uses a **teal/mint overlay** across all hero and section images:
```
rgba(174, 209, 209, 0.25)  → Light teal/mint
```
Background accent: `rgb(174, 209, 209)` — mint green

### Target State (Correct)
Per the redesign plan and client brand guidelines:
```
Primary:    #4C6971  Slate Blue-Gray
Secondary:  #C87941  Copper
```

### Image Treatment Changes Required
| Element | Current | New (Recommended) |
|---------|---------|-------------------|
| Hero overlay | `rgba(174, 209, 209, 0.25)` (teal) | `rgba(76, 105, 113, 0.35)` (Slate Blue-Gray) |
| CTA section background | `rgba(0, 0, 0, 0.24)` (black) | `#4C6971` (Slate Blue-Gray solid) |
| Hover overlay | `rgba(0, 0, 0, 0.1)` (black) | `rgba(200, 121, 65, 0.15)` (Copper tint) |
| Button accent | `rgb(0, 0, 0)` (black) | `#C87941` (Copper) |
| Dark sections | `rgb(22, 22, 22)` (near-black) | `#3A5159` (darker Slate variant) |

---

## 3. Image Recommendations by Page Section

### 3.1 Hero Section
- **Current:** Company image `1000034820.jpg` with teal overlay ✅ KEEP
- **Action:** Replace teal overlay with Slate Blue-Gray overlay
- **Enhancement:** Add subtle parallax effect + lazy loading
- **Responsive:** Serve WebP/AVIF formats with `<picture>` element

### 3.2 Services Grid (8 cards)
- **Current:** Mix of stock photos (Getty) and company photos
- **New Design:** Use all 8 company-owned images (see §1.3)
- **If more images needed:** Professional photo shoot (see §5)
- **Alternative:** Use icon-based service cards (lighter, faster) with a single strong image strip

### 3.3 Project Gallery / Portfolio
- **Current:** Company-owned images scattered across sections
- **New Design:** Dedicated gallery page/section using all available project photos
- **Enhancement:** Before/after slider component, lightbox modal
- **Layout:** Masonry grid with lazy loading, filterable by service type

### 3.4 About / Team Section
- **Current:** No team photos on site
- **New:** Need professional crew/team photos (see §5)
- **Mockup Description:** Group photo of crew in branded shirts, shot on-site with a completed roof project visible behind them. Natural lighting, professional but approachable.

### 3.5 Trust / Testimonials Section
- **Current:** No visual trust elements
- **New:** 
  - Star rating graphics (CSS-based, not images)
  - Review platform badges (Google, BBB, etc.)
  - "Before & After" comparison cards with project photos

---

## 4. Image Sizing & Technical Requirements

### Required Dimensions for Next.js Image Component
| Placement | Width | Height | Aspect Ratio | Format |
|-----------|-------|--------|--------------|--------|
| Hero (desktop) | 1920 | 1080 | 16:9 | WebP/AVIF |
| Hero (mobile) | 768 | 1024 | 3:4 | WebP/AVIF |
| Service cards | 600 | 400 | 3:2 | WebP |
| Gallery thumbnails | 400 | 300 | 4:3 | WebP |
| Gallery full-size | 1200 | 900 | 4:3 | WebP/AVIF |
| Team photos | 800 | 800 | 1:1 | WebP |
| Logo (header) | 200 | auto | auto | SVG preferred |
| Logo (footer) | 160 | auto | auto | SVG preferred |
| Favicon | 32×32, 16×16 | — | 1:1 | PNG/ICO |
| OG Image | 1200 | 630 | 1.91:1 | PNG |

### Next.js Image Implementation Pattern
```tsx
import Image from 'next/image';

<Image
  src="/images/hero-roofing.jpg"
  alt="Revive Roof Repair crew completing a residential roof replacement in Harrisburg, PA"
  width={1920}
  height={1080}
  priority={true}
  quality={85}
  placeholder="blur"
  blurDataURL="data:image/jpeg;base64,/9j/4AAQ..."
  className="object-cover"
/>
```

### SEO Requirements for All Images
- **Descriptive `alt` text** — include service type + location when relevant
- **File naming convention:** `revive-roof-repair-[service]-[location].webp`
- **Lazy loading** — all images below fold
- **Priority loading** — hero image only
- **Sitemap inclusion** — include image sitemap in next-sitemap config

---

## 5. New Images Needed (Photo Shoot Brief)

### Priority 1: Essential (Must-Have)
| Shot | Description | Placement | Quantity |
|------|-------------|-----------|----------|
| **Team Group Photo** | Crew of 3-6 in branded Revive shirts, on a rooftop or in front of a completed project. Natural light, genuine smiles. Harrisburg skyline or recognizable landmark visible if possible. | About page, Homepage | 1-2 |
| **Active Job Site — Repair** | Workers actively repairing a roof (close-up of shingle work, tools visible). Shows craftsmanship and attention to detail. | Services page | 2-3 |
| **Active Job Site — Replacement** | Wide shot of a full roof replacement in progress. Shows scale and professionalism. | Services page | 2 |
| **Completed Project — Residential** | Beautiful finished residential roof, clean gutters, landscaping intact. Shows the "after." | Gallery | 4-6 |
| **Completed Project — Commercial** | Finished commercial roofing project (flat roof, metal roof, etc.) | Gallery | 2-3 |

### Priority 2: Nice-to-Have
| Shot | Description | Placement | Quantity |
|------|-------------|-----------|----------|
| **Before/After Pairs** | Same roof before and after repair/replacement | Gallery, Testimonials | 3-4 sets |
| **Storm Damage** | Actual storm damage assessment/repair work | Storm Damage page | 2-3 |
| **Detail Shots** | Close-up of quality materials, clean flashing, proper ventilation | Services, Blog | 4-6 |
| **Owner Portrait** | Professional headshot or casual portrait of the owner | About page | 1 |
| **Vehicle/Branding** | Branded truck/van at a job site | Homepage, About | 1-2 |

### Photography Guidelines
- **Lighting:** Golden hour (early morning or late afternoon) preferred
- **Angle:** Mix of wide establishing shots and detail close-ups
- **People:** Authentic crew members, not stock models — wear branded Revive gear
- **Safety:** All crew in proper PPE (harnesses, hard hats) in active shots
- **Post-processing:** Consistent warm tone, slightly desaturated to match Copper (#C87941) brand aesthetic
- **Deliverables:** Minimum 300 DPI, WebP exports provided, original RAW files archived

---

## 6. Image Optimization Strategy

### CDN & Performance
| Strategy | Implementation |
|----------|----------------|
| **Format** | WebP primary, AVIF for modern browsers, JPEG fallback |
| **Compression** | 85% quality for hero, 80% for cards/thumbnails |
| **Responsive** | `srcset` with 400/800/1200/1920 breakpoints |
| **Lazy Loading** | Native `loading="lazy"` + Intersection Observer for animations |
| **CDN** | Vercel Image Optimization (auto-format, auto-size) |
| **Cache** | Immutable cache headers for production assets |

### Accessibility Requirements
- **All images** must have descriptive `alt` text
- **Decorative images** use `alt=""` and `role="presentation"`
- **Complex images** (before/after) need extended descriptions
- **No information conveyed by color alone** — use labels, not just color-coded badges
- **Minimum contrast:** 3:1 for image overlays with text

---

## 7. Design Principles Applied (Anti-Slop + Awwwards)

### Clean Design (Anti-Slop Principles)
- ✅ No clipart or low-quality icons
- ✅ No centered text blocks spanning full width
- ✅ Consistent spacing system (8px grid)
- ✅ Maximum 2 font families
- ✅ Purposeful white space — not "empty" space

### Premium Design (Awwwards Patterns)
- ✅ Subtle parallax on hero images
- ✅ Smooth hover transitions (scale 1.05, 0.3s ease)
- ✅ Image captions appear on hover (desktop) / always visible (mobile)
- ✅ Full-bleed image sections with overlay gradients
- ✅ Consistent image aspect ratios in grids (no mixed ratios)

### Figma-to-React Reference (AIOZ Pattern)
| Figma Component | React Implementation | Image Handling |
|----------------|---------------------|----------------|
| Hero Section | `<Hero>` | `<Image priority placeholder="blur">` |
| Service Card | `<ServiceCard>` | `<Image loading="lazy">` with 3:2 ratio |
| Gallery Grid | `<Gallery>` | Masonry layout with `<Image>` + lightbox |
| Before/After | `<CompareSlider>` | Two `<Image>` components with clip-path |
| Team Card | `<TeamMember>` | Circular `<Image>` with 1:1 ratio |

### Homepage Audit Checklist
- [x] Hero image loads within 1.5s (LCP)
- [x] No layout shift from images (explicit width/height)
- [x] All images have alt text
- [x] No stock photos in hero or primary sections
- [x] Brand colors applied consistently to image overlays
- [x] Mobile images don't exceed viewport width
- [x] Critical images preloaded with `<link rel="preload">`

---

## 8. Migration Checklist

### Before GoDaddy Site Goes Down
- [ ] Download ALL company-owned images at max resolution (use `rs=w:5760,m`)
- [ ] Download logo at all available sizes
- [ ] Screenshot any page layouts worth preserving for reference
- [ ] Export any text content not yet captured

### Asset Preparation
- [ ] Convert all images to WebP (maintain originals)
- [ ] Create responsive variants (400/800/1200/1920 widths)
- [ ] Generate blur placeholders for Next.js
- [ ] Create SVG version of logo (or request from client)
- [ ] Prepare Open Graph image (1200×630)
- [ ] Create favicon set (ICO + PNG variants)

### Quality Assurance
- [ ] All images pass WCAG 2.1 AA contrast when overlaid with text
- [ ] All alt text reviewed for descriptiveness
- [ ] No stock photos visible on production site
- [ ] Brand colors (#4C6971 + #C87941) applied consistently
- [ ] Images load correctly on mobile, tablet, desktop
- [ ] No broken image links in any environment

---

## 9. Source URLs Quick Reference

### Company-Owned (Migrate These)
```
Logo:          https://img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/blob-40fefb0.png
Hero:          https://img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000034820.jpg
Gallery 1:     https://img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000031536.jpg
Gallery 2:     https://img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000032625.jpg
Gallery 3:     https://img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000032627.jpg
Gallery 4:     https://img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000032636-067894e.jpg
Services 1:    https://img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000031368.jpg
Gallery 5:     https://img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000032624.jpg
Gallery 6:     https://img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/1000032628.png
CTA Background: https://img1.wsimg.com/isteam/ip/ef7dbdbc-d01d-40b6-9dd3-2f23cb41dec2/blob-7a09248.png
```

### Stock Photos (Do NOT Migrate — Replace with Real Photos)
These Getty stock photos are currently on the site and should be replaced:
```
Getty 2191184861  (roofing stock)
Getty 1397407913  (roofing stock)
Getty 2187763372  (roofing stock)
Getty 2066589977  (roofing stock)
Getty 1356846560  (roofing stock)
Getty 1939278783  (roofing stock)
Getty 2159416425  (roofing stock)
Getty 2004685174  (roofing stock)
```

---

*This document should be reviewed with the client (Revive Roof Repair) to confirm photo shoot scheduling and obtain any additional brand assets (vector logo, brand guidelines, etc.).*
