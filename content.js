/* ============================================================
   CONTENT REGISTRY
   ------------------------------------------------------------
   This is the ONLY file you edit to add new material to the site.
   The homepage reads this list and builds the dashboard cards
   automatically. Add a new HTML file under chapters/, quizzes/,
   or reviews/, then add one entry to the matching array below.

   Fields:
     title  - shown as the card heading
     desc   - one-line description
     href   - path to the HTML file (relative to the site root)
     tag    - small label (e.g. sections covered, # of problems)
     status - "ready" (default) or "soon" (greyed-out placeholder)
   ============================================================ */

window.SITE_CONTENT = {

  chapters: [
    {
      title: "Chapter 1 — Introduction",
      desc: "Background, terminology, and what it means to be a solution. Sections 1.1 and 1.2.",
      href: "chapters/ch1-introduction.html",
      tag: "1.1, 1.2",
      status: "ready"
    },
    {
      title: "Chapter 2 — First-Order Equations",
      desc: "Falling-body model, separable & linear equations, exact equations, integrating factors, and substitutions.",
      href: "chapters/ch2-first-order.html",
      tag: "2.1–2.6",
      status: "ready"
    }
  ],

  quizzes: [
    {
      title: "Quiz 1 — Classification & Solutions",
      desc: "Type/order/linearity, verifying solutions, and the existence-uniqueness theorem. Self-grading with hints.",
      href: "quizzes/quiz1.html",
      tag: "9 problems",
      status: "ready"
    },
    {
      title: "Quiz 2 — First-Order ODEs",
      desc: "Separable & linear equations, integrating factors, and applied modeling. Self-grading with hints.",
      href: "quizzes/quiz2.html",
      tag: "11 problems",
      status: "ready"
    }
  ],

  reviews: [
    // Example placeholder so you can see how a "coming soon" card looks.
    {
      title: "Exam 1 Review",
      desc: "Mixed practice across Chapters 1–2. Add the file to reviews/ when ready.",
      href: "#",
      tag: "Planned",
      status: "soon"
    }
  ]

};
