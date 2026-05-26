# MAP2302 Study Hub

A modular study site for Differential Equations (MAP2302). It collects chapter
recaps, self-grading quizzes, and exam reviews behind one homepage. Everything is
static HTML/CSS/JS, so it hosts free on GitHub Pages with no build step.

Textbook: Nagle, Saff & Snider, *Fundamentals of Differential Equations*, 9th ed.
The chapter recaps are original summaries written in my own words; they do not
reproduce textbook text.

## What's inside

```
map2302-site/
├── index.html                     ← homepage / dashboard
├── .nojekyll                      ← tells GitHub Pages to skip Jekyll
├── data/
│   └── content.js                 ← the registry you edit to add content
├── assets/
│   └── style.css                  ← shared stylesheet for all pages
├── chapters/
│   ├── ch1-introduction.html      ← recap: 1.1, 1.2
│   └── ch2-first-order.html       ← recap: 2.1, 2.3, 2.4, 2.5, 2.6
├── quizzes/
│   └── quiz2.html                 ← self-grading Quiz 2
└── reviews/                       ← (empty; exam reviews go here)
```

## How the modular system works

The homepage does **not** hard-code any links. It reads `data/content.js`, a single
registry listing every chapter, quiz, and review, and builds the dashboard cards
automatically.

**To add new material:**

1. Create the new HTML file in the right folder (`chapters/`, `quizzes/`, or `reviews/`).
   The easiest start is to copy an existing chapter recap or `quizzes/quiz2.html`
   and edit the content.
2. Open `data/content.js` and add one entry to the matching array:

   ```js
   {
     title: "Chapter 3 — Modeling",
     desc: "Compartmental analysis and Newtonian mechanics.",
     href: "chapters/ch3-modeling.html",
     tag: "3.1–3.4",
     status: "ready"     // or "soon" for a greyed-out placeholder
   }
   ```
3. That's it. The card appears on the homepage automatically.

All pages link to `assets/style.css`, so changing the look in one place updates the
whole site. (The quiz keeps its own embedded styles because it is self-contained, but
it matches the same palette.)

## Run locally

Open `index.html` in a browser. The fonts and the KaTeX math renderer load from a CDN,
so you need an internet connection for math and custom fonts to appear. Everything else
works offline.

## Host on GitHub Pages

1. Create a repository, e.g. `map2302`.
2. Upload the **contents** of this folder to the repository root (so `index.html` is at
   the top level, not inside a subfolder).

   ```bash
   git init
   git add .
   git commit -m "MAP2302 study hub"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/map2302.git
   git push -u origin main
   ```
3. On GitHub: **Settings → Pages**.
4. **Source:** Deploy from a branch. **Branch:** `main`, folder `/ (root)`. Save.
5. After about a minute the site is live at
   `https://YOUR_USERNAME.github.io/map2302/`.

The `.nojekyll` file prevents GitHub's Jekyll processor from interfering with the
folders and files.

## Notes on the quiz answer keys

- **Problem 3** is ill-posed: `y(0)=1` lands where `ln x` and `1/(x ln x)` are
  undefined. The quiz shows the general solution and flags it.
- **Problem 6 (c)/(d)** terminal velocities use `g = 9.8 m/s²`.
- **Problem 11**: Barry wins by about 0.19 s.

Keys live in the `QUESTIONS` array near the top of the `<script>` block in
`quizzes/quiz2.html` if you want to edit them.
