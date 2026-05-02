# font-matchmaker

A Claude Code skill that reads your project and recommends fonts that match its personality — with actual reasoning, not "just use Inter."

## Install

```
/plugin marketplace add https://github.com/josharsh/font-matchmaker
```

**Manual:** Copy `skills/font-matchmaker/SKILL.md` to `~/.claude/skills/font-matchmaker/`.

## Why I Built This

Every project I start, I spend an hour on Google Fonts scrolling through 1,500 options. I pick something that "looks nice." But "looks nice" isn't a strategy. Fonts communicate personality before a single word is read — research shows people form typographic impressions in under 50 milliseconds.

A Kubernetes monitoring tool shouldn't use the same font as a meditation app. A fintech dashboard shouldn't feel like a children's game. But most developers pick fonts arbitrarily or default to whatever's popular. Inter is great, but it's not great for everything.

`/font-matchmaker` reads your project — the README, the tech stack, the domain, the audience, the tone — and recommends fonts based on what your product actually IS. Not what's trending. What matches.

## How It Works

The skill maps fonts to personality using five axes from typography research:

| Axis | What it measures | Low end | High end |
|---|---|---|---|
| **Warmth** | Human vs. mechanical | Geometric precision | Organic curves |
| **Formality** | Casual vs. serious | Rounded, loose | Structured, tight |
| **Authority** | Light vs. commanding | Thin, delicate | Heavy, bold |
| **Innovation** | Traditional vs. modern | Serif, classical | Geometric, minimal |
| **Clarity** | Expressive vs. functional | Display, decorative | Readable, even |

It profiles your project on these axes, then matches to fonts whose design characteristics (x-height, aperture, stroke contrast, terminals) align.

### Example

```
You: /font-matchmaker

Claude: Let me read your project...

  Project Personality:
    Warmth: 2/5 — technical CLI tool, not consumer-facing
    Formality: 3/5 — professional but not corporate
    Authority: 4/5 — infrastructure tool, needs to feel solid
    Innovation: 5/5 — cutting-edge developer tool
    Clarity: 5/5 — documentation-heavy, must be readable

    Archetype: Precision DevTool

  Font System:
    Headings: Geist Sans (600-700 weight)
    Body: Geist Sans (400 weight)
    Code: Geist Mono (400 weight)

  Why Geist:
    Geometric construction signals precision. High x-height and open
    apertures maximize readability at all sizes. Monolinear strokes
    feel modern without being cold. Built by Vercel specifically for
    developer interfaces — the intent matches your domain exactly.

  Alternatives:
    - More warmth: Inter (slightly rounder, more humanist)
    - More authority: IBM Plex Sans (heavier, more institutional)
    - More personality: Space Grotesk (distinctive 'a' and 'g')

  Implementation:
    font-family: 'Geist', -apple-system, BlinkMacSystemFont, sans-serif;
    Available via: npm install geist, or Google Fonts CDN
```

## Commands

| Command | What it does |
|---|---|
| `/font-matchmaker` | Analyze project and recommend fonts |
| `/font-matchmaker check` | Evaluate current font choices against project personality |
| `/font-matchmaker why <font>` | Explain why a specific font does or doesn't fit |

## What It Considers

- **README and docs** — the language and tone your project uses
- **Tech stack** — library? app? CLI? dashboard?
- **Target audience** — developers? designers? enterprise? consumers?
- **Domain** — fintech, healthcare, devtools, creative, education
- **Existing brand** — current colors, logos, design system
- **Communication style** — formal or casual? technical or accessible?

## Testing

Tested with [skillmother](https://github.com/josharsh/skillmother):

```bash
skillmother test skills/font-matchmaker/
```

## Uninstalling

```bash
rm -rf ~/.claude/skills/font-matchmaker
```

## License

MIT
