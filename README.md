# Complex Analysis

> Complex analysis lecture notes and 25 weeks of fully worked homework, bilingual (Chinese/English), written in Markdown with inline LaTeX.

The course covers the standard single-variable complex analysis sequence through Riemann surfaces-adjacent material (normal families, Picard theorems, the Riemann zeta function). `textbooks/` contains the original Chinese chapter lecture notes (Beijing Institute of Technology) as scanned PDFs.

## Repository structure

```
complex-analysis/
├── cn/
│   ├── notes.md              # Chinese lecture notes (single file, 575 lines)
│   └── homework/
│       └── week1.md … week25.md
├── en/
│   ├── notes.md              # Complete English translation (575 lines, aligned)
│   └── homework/
│       └── week1.md … week25.md
└── textbooks/
    ├── 1-4.pdf … 21-24.pdf   # Scanned chapter lecture notes (6 volumes)
    └── *_ocr.pdf             # OCR (searchable) copies of each
```

## The notes

`notes.md` is a single reference file organized as **22 sections** with `##` headings:

- The complex plane and the extended complex plane
- Paths, curves and domains
- Holomorphy and differentiability
- Conformal mappings and Möbius transformations
- Cauchy's theorem and the integral formula
- The maximum modulus principle and Schwarz's lemma
- Normal convergence and the Riemann mapping theorem
- Laurent series and isolated singularities
- Residues and the residue theorem
- Harmonic functions and the Dirichlet problem
- The Gamma function · The Riemann zeta function · Picard's theorems · Normal families

Every statement is a bold-tagged entry (**Definition**, **Theorem**, **Proposition**, **Example**) with mathematics in `$…$` / `$$…$$`.

## The homework

Each `homework/weekN.md` follows a fixed three-part format:

1. **Toolbox** — a blockquote restating the definitions and theorems needed;
2. **Problems** — the assigned exercises;
3. **Solutions** — complete worked proofs ending with `$\blacksquare$`.

There are **25 weeks** of problem sets in each language.

## Bilingual layout

- `cn/` — authoritative Chinese version.
- `en/` — complete parallel English translation; `cn/` and `en/` files share identical names and line counts, so they correspond section by section.

## The `textbooks/` folder

The twelve PDFs are **external reference material** — six scanned volumes of the original Chinese chapter lecture notes (44–52 pages each) and their OCR copies for text search. Nothing here is compiled from the notes, and there is no build system.

## Related repositories

Other course-notes repositories in the same series: [mathematical-analysis](https://github.com/wenje-ma/mathematical-analysis), [real-analysis](https://github.com/wenje-ma/real-analysis), [ordinary-differential-equations](https://github.com/wenje-ma/ordinary-differential-equations), and the full list on the [profile page](https://github.com/wenje-ma).
