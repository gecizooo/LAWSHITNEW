# LTG – Lifecycle Tax Graph

**A state- and event-based model for describing taxes on assets.**
Koncepció · Concept · Conceptus

This repository contains the LTG concept in three languages, as XHTML pages and as a printable PDF.

- **Magyar:** [`index.xhtml`](index.xhtml)
- **English:** [`en/index.xhtml`](en/index.xhtml)
- **Latina:** [`la/index.xhtml`](la/index.xhtml)
- **PDF (HU):** [`LTG_koncepcio_v0.2.pdf`](LTG_koncepcio_v0.2.pdf)
- **License page:** [`license.xhtml`](license.xhtml)

## What is LTG?

LTG reduces every tax to two events — possession (**stock**) and movement (**flow**) — and describes every asset as a finite state machine in which each transition carries a tax rule.

```
NEW ──BUY──► IN_CIRCULATION ──SELL──► IN_CIRCULATION
                 │
                 ├── THEFT ─────► STOLEN ──RECOVERY──► IN_CIRCULATION
                 ├── TOTAL_LOSS ► LOSS
                 ├── EXPORT ────► EXPORTED
                 └── SCRAP ─────► SCRAPPED
```

The first case study is the car: buy, sell, theft, recovery, insurance, export, scrap, and the used-car attribute. The concept also sketches how the whole body of law can be layered (Akoma Ntoso XML + JSON-LD + LTG) and how multiple countries fit into one meta-schema.

## Publish on GitHub Pages

1. Create a repository and push this folder.
2. In **Settings → Pages**, choose **Deploy from a branch**, branch `main`, folder `/ (root)`.
3. The site will be served from `index.html`. The XHTML originals remain available at `index.xhtml`, `en/index.xhtml`, `la/index.xhtml`.

`index.html`, `en/index.html` and `la/index.html` are generated copies of the XHTML pages without the XML declaration, so GitHub Pages serves them as directory indexes. Regenerate them after editing an `.xhtml` file:

```bash
./build.sh
```

## Before publishing

Replace the placeholders:

| Placeholder | Where | What to put |
| --- | --- | --- |
| `[AUTHOR NAME]` | `LICENSE` | your name or project name |
| `[EMAIL]` | `LICENSE` | the address that should receive the notification emails |
| `[REPOSITORY URL]` | `LICENSE` | e.g. `https://github.com/USER/ltg` |

The notification text in the pages points to `LICENSE`; no page edit is needed.

## License

**LTG Emailware License 1.0** — canonical text in [`LICENSE`](LICENSE), readable version at [`license.xhtml`](license.xhtml).

You may use, copy, modify and distribute the work freely, **on condition** that you send a short email describing your use. This is a source-available license, not an OSI-approved open-source license, because it adds a notification duty beyond attribution.

The statutes themselves are not copyrightable in Hungary (Act LXXVI of 1999, Section 1(4)); the license covers the concept, the documentation, the diagrams, the schema and the code in this repository.

## Disclaimer

Working draft. Not legal or tax advice. The rates in the examples are illustrative, not calibrated. The model describes rules; legal force comes from the underlying legislation.

## Structure

```
.
├── index.xhtml          # Hungarian
├── index.html           # generated copy for GitHub Pages
├── en/index.xhtml       # English
├── en/index.html
├── la/index.xhtml       # Latin (abridged, Neo-Latin)
├── la/index.html
├── license.xhtml        # readable license
├── license.html
├── assets/style.css
├── favicon.svg / favicon.ico / favicon.png
├── LICENSE              # canonical license
├── build.sh
├── .nojekyll
├── LTG_koncepcio_v0.2.pdf
└── README.md
```
