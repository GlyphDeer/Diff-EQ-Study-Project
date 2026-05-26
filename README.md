# MAP2302 Study Hub

A modular study site for Differential Equations (MAP2302): chapter recaps,
self-grading quizzes, and exam reviews behind one homepage. Static HTML/CSS/JS,
hosts free on GitHub Pages with no build step.

Textbook: Nagle, Saff & Snider, *Fundamentals of Differential Equations*, 9th ed.
Chapter recaps are original summaries; they do not reproduce textbook text.

## IMPORTANT: keep the folder structure intact

The single most common failure is uploading the files in the wrong layout. If the
homepage shows "0 chapters / 0 quizzes" and looks unstyled (plain text, no green
cards), the folders got flattened or renamed during upload. The files MUST sit in
exactly this structure, with index.html at the top level:

```
(repo root)
├── index.html                 ← homepage (self-contained: CSS + content list built in)
├── .nojekyll
├── assets/
│   └── style.css              ← shared styles for chapter pages
├── chapters/
│   ├── ch1-introduction.html  ← recap: 1.1, 1.2
│   └── ch2-first-order.html   ← recap: 2.1–2.6
├── quizzes/
│   ├── quiz1.html             ← Quiz 1 (self-contained)
│   └── quiz2.html             ← Quiz 2 (self-contained)
├── reviews/                   ← exam reviews go here (empty for now)
├── data/
│   └── content.js             ← optional legacy copy of the registry (not required)
└── README.md
```

The homepage (`index.html`) is now **fully self-contained**: its styling and its
content list are built into the file itself, so the dashboard always renders even
if other files are missing. The chapter pages still load `assets/style.css`, so the
`assets/` folder must sit beside `index.html`.

## How to add new material

Open `index.html`, find the `CONTENT` object near the top of the `<script>` block,
and add one entry to the matching array:

```js
{
  title: "Chapter 3 — Modeling",
  desc: "Compartmental analysis and Newtonian mechanics.",
  href: "chapters/ch3-modeling.html",
  tag: "3.1–3.4",
  status: "ready"     // or "soon" for a greyed-out placeholder
}
```

Then create the HTML file in the right folder (copy an existing chapter or quiz as a
starting point). The card appears on the homepage automatically. To match the look,
new chapter pages should link the stylesheet with `<link rel="stylesheet"
href="../assets/style.css">` (note the `../`, since they live one folder down).

## Host on GitHub Pages

1. Create a repository, e.g. `map2302`.
2. Upload so the structure above is preserved. The reliable way is the command line
   from inside the `map2302-site` folder:

   ```bash
   cd map2302-site
   git init
   git add .
   git commit -m "MAP2302 study hub"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/map2302.git
   git push -u origin main
   ```

   If you drag-and-drop in the GitHub web UI instead, drag the **folders**
   (`assets`, `chapters`, `quizzes`, `data`) plus `index.html` and `.nojekyll`
   together, not the files one by one, so the folder paths are kept.
3. GitHub repo → **Settings → Pages**.
4. **Source:** Deploy from a branch. **Branch:** `main`, folder `/ (root)`. Save.
5. After ~1 minute the site is live at
   `https://YOUR_USERNAME.github.io/map2302/`.

`.nojekyll` stops GitHub's Jekyll processor from interfering.

## Troubleshooting

- **Homepage shows 0 items and is unstyled:** files were flattened on upload. Re-upload
  keeping the folder structure above. (The homepage itself no longer needs other files,
  so if even it is broken, the upload definitely lost the structure.)
- **Homepage looks fine but chapter pages are unstyled:** the `assets/` folder is not
  sitting beside `index.html`. Move it to the repo root.
- **Math symbols show as raw `$...$`:** the KaTeX CDN was blocked. It needs an internet
  connection; it works on the live GitHub Pages site.
- **Custom fonts not showing:** Google Fonts CDN blocked / offline. Falls back to a
  serif; loads normally online.

## Notes on quiz answer keys

- **Quiz 2, Problem 3** is ill-posed: `y(0)=1` lands where `ln x` and `1/(x ln x)` are
  undefined. The quiz shows the general solution and flags it.
- **Quiz 2, Problem 6 (c)/(d)** terminal velocities use `g = 9.8 m/s²`.
- **Quiz 2, Problem 11**: Barry wins by about 0.19 s.
- **Quiz 1, Problem 9** depends on the constant `c`: unique solution is guaranteed only
  where the initial point avoids `y² + c = 0`.

Keys live in the `QUESTIONS` array near the top of the `<script>` block in each quiz file.
