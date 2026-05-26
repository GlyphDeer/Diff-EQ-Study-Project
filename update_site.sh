#!/bin/bash

# Write the consolidated modern CSS
cat << 'CSSEOF' > assets/style.css
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Fira+Code:wght@400;500&display=swap');

:root {
  --ink: #111827; --paper: #f9fafb; --paper-2: #f3f4f6; --paper-3: #ffffff;
  --line: #e5e7eb; --accent: #2563eb; --accent-dark: #1d4ed8; --accent-soft: #dbeafe;
  --warn: #d97706; --warn-soft: #fef3c7; --good: #059669; --bad: #dc2626; --bad-soft: #fee2e2;
  --shadow: rgba(0, 0, 0, 0.08);
  --mono: "Fira Code", ui-monospace, Menlo, monospace;
  --serif: "Inter", system-ui, -apple-system, sans-serif; 
}

* { box-sizing: border-box; }
html { scroll-behavior: smooth; }
body { margin: 0; background: var(--paper); color: var(--ink); font-family: var(--serif); font-size: 16px; line-height: 1.6; -webkit-font-smoothing: antialiased; }
body::before { display: none; }

.wrap { position: relative; z-index: 1; max-width: 880px; margin: 0 auto; padding: 0 20px 120px; }
.wrap.narrow { max-width: 760px; }
.topnav { position: relative; z-index: 5; display: flex; align-items: center; justify-content: space-between; gap: 16px; max-width: 880px; margin: 0 auto; padding: 18px 20px 0; flex-wrap: wrap; }
.topnav a.home { font-family: var(--mono); font-size: 12px; letter-spacing: .05em; text-transform: uppercase; color: var(--accent); text-decoration: none; display: inline-flex; align-items: center; gap: 8px; font-weight: 500; }
.topnav a.home:hover { color: var(--accent-dark); text-decoration: underline; }
.crumbs { font-family: var(--mono); font-size: 12px; color: #6b7280; }
header.masthead { border-bottom: 1px solid var(--line); padding: 30px 0 22px; margin-bottom: 24px; }
.eyebrow { font-family: var(--mono); font-size: 12px; letter-spacing: .1em; text-transform: uppercase; color: var(--accent); margin: 0 0 10px; font-weight: 500; }
h1.title { font-weight: 700; font-size: clamp(34px, 6.5vw, 56px); line-height: 1.1; margin: 0; letter-spacing: -0.03em; color: #111827; font-family: var(--serif); }
.subtitle { color: #4b5563; margin: 14px 0 0; font-size: 18px; font-weight: 400; }
.meta-row { display: flex; flex-wrap: wrap; gap: 18px; margin-top: 22px; font-family: var(--mono); font-size: 12px; color: #6b7280; }
.meta-row span { display: inline-flex; align-items: center; gap: 6px; }
.dot { width: 6px; height: 6px; border-radius: 50%; background: var(--line); display: inline-block; }

.prose h2 { font-size: 24px; font-weight: 600; letter-spacing: -0.02em; margin: 42px 0 12px; padding-bottom: 8px; border-bottom: 1px solid var(--line); }
.prose h3 { font-family: var(--mono); font-size: 14px; letter-spacing: .05em; text-transform: uppercase; color: var(--accent); margin: 28px 0 8px; font-weight: 600; }
.prose p, .prose ul, .prose ol { margin: 12px 0; color: #374151; }
.prose ul, .prose ol { padding-left: 22px; }
.prose li { margin: 6px 0; }
.lead { font-size: 18px; color: #4b5563; font-weight: 500; }

.box { border: 1px solid var(--line); border-left: 4px solid var(--accent); background: var(--paper-3); border-radius: 6px; padding: 16px 20px; margin: 24px 0; box-shadow: 0 1px 2px var(--shadow); }
.box h4 { font-family: var(--mono); font-size: 12px; letter-spacing: .05em; text-transform: uppercase; margin: 0 0 8px; color: var(--accent); }
.box.method { border-left-color: var(--accent); }
.box.pitfall { border-left-color: var(--bad); }
.box.pitfall h4 { color: var(--bad); }
.box.example { border-left-color: var(--warn); background: #fffbeb; }
.box.example h4 { color: var(--warn); }
.formula { background: var(--paper-2); border: 1px solid var(--line); border-radius: 6px; padding: 12px 16px; margin: 16px 0; overflow-x: auto; }

table { border-collapse: collapse; width: 100%; margin: 18px 0; font-size: 15px; background: var(--paper-3); box-shadow: 0 1px 2px var(--shadow); border-radius: 6px; overflow: hidden; }
th, td { border: 1px solid var(--line); padding: 12px 16px; text-align: left; vertical-align: top; }
th { background: var(--paper-2); font-family: var(--mono); font-size: 12px; font-weight: 600; letter-spacing: .05em; text-transform: uppercase; color: #4b5563; }

.section-label { font-family: var(--mono); font-size: 12px; letter-spacing: .1em; text-transform: uppercase; color: #6b7280; margin: 44px 0 12px; display: flex; align-items: center; gap: 12px; font-weight: 500; }
.section-label::after { content: ""; flex: 1; height: 1px; background: var(--line); }
.card-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(280px, 1fr)); gap: 20px; }
.card { display: block; text-decoration: none; color: inherit; background: var(--paper-3); border: 1px solid var(--line); border-radius: 8px; padding: 20px; position: relative; overflow: hidden; transition: transform 0.2s ease, box-shadow 0.2s ease, border-color 0.2s; }
.card:hover { transform: translateY(-2px); box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05); border-color: #93c5fd; }
.card .ctype { font-family: var(--mono); font-size: 11px; letter-spacing: .05em; text-transform: uppercase; color: var(--accent); font-weight: 500; }
.card .ctitle { font-size: 18px; font-weight: 600; margin: 8px 0 6px; line-height: 1.2; letter-spacing: -0.01em; color: #111827; }
.card .cdesc { font-size: 14px; color: #4b5563; line-height: 1.5; }
.card .ctag { display: inline-block; margin-top: 14px; font-family: var(--mono); font-size: 11px; color: #6b7280; background: var(--paper-2); border-radius: 4px; padding: 4px 8px; }
.card .arrow { position: absolute; top: 20px; right: 20px; color: #9ca3af; transition: 0.2s; font-family: var(--mono); }
.card:hover .arrow { color: var(--accent); transform: translateX(4px); }
.card.soon { opacity: 0.6; pointer-events: none; background: var(--paper-2); }
.card.soon .ctag { color: var(--warn); background: var(--warn-soft); }
.empty { font-family: var(--mono); font-size: 13px; color: #6b7280; padding: 24px; border: 1px dashed #d1d5db; border-radius: 8px; text-align: center; }

footer { margin-top: 80px; padding-top: 32px; border-top: 1px solid var(--line); font-family: var(--mono); font-size: 12px; color: #9ca3af; text-align: center; line-height: 2; }
.kbd { font-family: var(--mono); background: var(--paper-3); border: 1px solid var(--line); border-radius: 4px; padding: 2px 6px; font-size: 11px; box-shadow: 0 1px 1px var(--shadow); color: #4b5563; }
a { color: var(--accent); text-decoration: none; }
a:hover { color: var(--accent-dark); text-decoration: underline; }

.toc { position: sticky; top: 0; background: rgba(249, 250, 251, 0.9); backdrop-filter: blur(8px); border-bottom: 1px solid var(--line); margin: 0 -20px 28px; padding: 12px 20px; font-family: var(--mono); font-size: 13px; z-index: 10; }
.toc a { text-decoration: none; margin-right: 20px; white-space: nowrap; color: #4b5563; }
.toc a:hover { color: var(--accent); }
.toc-scroll { display: flex; gap: 0; overflow-x: auto; -ms-overflow-style: none; scrollbar-width: none; }
.toc-scroll::-webkit-scrollbar { display: none; }

.scoreboard { position: sticky; top: 0; z-index: 20; margin: 0 -20px 36px; padding: 14px 20px; background: rgba(249, 250, 251, 0.9); backdrop-filter: blur(8px); border-bottom: 1px solid var(--line); display: flex; align-items: center; justify-content: space-between; gap: 16px; flex-wrap: wrap; }
.score-stats { font-family: var(--mono); font-size: 13px; letter-spacing: .05em; display: flex; gap: 22px; flex-wrap: wrap; }
.score-stats b { color: var(--accent); font-weight: 600; }
.score-bar { flex: 1; min-width: 120px; height: 6px; background: var(--paper-2); border: 1px solid var(--line); border-radius: 3px; overflow: hidden; }
.score-bar i { display: block; height: 100%; width: 0; background: var(--accent); transition: width .5s ease; }
.btn-reset { font-family: var(--mono); font-size: 11px; letter-spacing: .1em; text-transform: uppercase; background: none; border: 1px solid var(--line); color: var(--ink); padding: 7px 13px; cursor: pointer; border-radius: 4px; transition: .2s; }
.btn-reset:hover { background: var(--paper-2); }

.q { background: var(--paper-3); border: 1px solid var(--line); border-radius: 8px; margin: 0 0 26px; box-shadow: 0 1px 2px var(--shadow); overflow: hidden; }
.q-head { display: flex; gap: 16px; align-items: flex-start; padding: 22px 24px 6px; }
.q-num { font-family: var(--mono); font-weight: 600; font-size: 14px; color: var(--paper-3); background: var(--ink); min-width: 34px; height: 34px; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0; }
.q.correct .q-num { background: var(--good); }
.q.incorrect .q-num { background: var(--bad); }
.q-body { padding: 0 24px 20px; }
.q-prompt { margin: 6px 0 16px; font-size: 17px; }
.q-prompt .sub { display: block; margin: 4px 0 0 18px; color: #4b5563; }
.tag { font-family: var(--mono); font-size: 10px; letter-spacing: .1em; text-transform: uppercase; color: var(--warn); border: 1px solid var(--warn); border-radius: 4px; padding: 2px 6px; margin-left: 8px; vertical-align: middle; }

.tf-group { display: flex; gap: 10px; flex-wrap: wrap; }
.tf-btn, .mc-btn { font-family: var(--mono); font-size: 13px; letter-spacing: .05em; background: var(--paper-3); border: 1px solid var(--line); color: var(--ink); padding: 8px 16px; cursor: pointer; border-radius: 4px; transition: .2s; text-align: left; }
.tf-btn:hover, .mc-btn:hover { border-color: var(--accent); background: var(--accent-soft); }
.tf-btn.sel, .mc-btn.sel { background: var(--ink); color: var(--paper-3); border-color: var(--ink); }
.mc-group { display: flex; flex-direction: column; gap: 8px; }

textarea, input[type=text] { width: 100%; font-family: var(--mono); font-size: 14px; line-height: 1.55; background: var(--paper-3); border: 1px solid var(--line); border-radius: 4px; padding: 11px 13px; color: var(--ink); resize: vertical; }
textarea { min-height: 78px; }
textarea:focus, input:focus { outline: none; border-color: var(--accent); box-shadow: 0 0 0 2px var(--accent-soft); }
.field-label { font-family: var(--mono); font-size: 11px; letter-spacing: .1em; text-transform: uppercase; color: #6b7280; margin: 0 0 6px; }

.q-actions { display: flex; gap: 10px; flex-wrap: wrap; margin-top: 16px; align-items: center; }
.act { font-family: var(--mono); font-size: 11.5px; letter-spacing: .1em; text-transform: uppercase; padding: 9px 16px; cursor: pointer; border-radius: 4px; transition: .2s; border: 1px solid; }
.act-check { background: var(--accent); color: var(--paper-3); border-color: var(--accent); }
.act-check:hover { background: var(--accent-dark); }
.act-hint { background: none; color: var(--warn); border-color: var(--warn); }
.act-hint:hover { background: var(--warn-soft); }
.act-show { background: none; color: var(--ink); border-color: var(--line); }
.act-show:hover { background: var(--paper-2); }
.act:disabled { opacity: .4; cursor: not-allowed; }

.panel { margin-top: 14px; padding: 14px 16px; border-radius: 4px; font-size: 15px; border-left: 4px solid; display: none; animation: fade .3s ease; }
.panel.show { display: block; }
.panel-hint { background: var(--warn-soft); border-color: var(--warn); }
.panel-ans { background: var(--accent-soft); border-color: var(--accent); }
.panel-result { background: var(--paper-3); border-color: var(--line); }
.panel h4 { font-family: var(--mono); font-size: 11px; letter-spacing: .1em; text-transform: uppercase; margin: 0 0 8px; }
.panel-hint h4 { color: var(--warn); }
.panel-ans h4 { color: var(--accent); }
.result-correct { color: var(--good); font-weight: 600; }
.result-incorrect { color: var(--bad); font-weight: 600; }

.selfgrade { margin-top: 12px; font-size: 15px; }
.sg-btn { font-family: var(--mono); font-size: 11.5px; letter-spacing: .05em; padding: 7px 14px; margin-right: 8px; cursor: pointer; border-radius: 4px; border: 1px solid var(--line); background: var(--paper-3); transition: .2s; }
.sg-got { color: var(--good); } .sg-got:hover, .sg-got.sel { background: var(--good); color: var(--paper-3); border-color: var(--good); }
.sg-miss { color: var(--bad); } .sg-miss:hover, .sg-miss.sel { background: var(--bad); color: var(--paper-3); border-color: var(--bad); }
CSSEOF

# Link style.css into index.html
perl -0777 -pi -e 's/<style>.*?<\/style>/<link rel="stylesheet" href="assets\/style.css">/s' index.html

# Link style.css into subdirectories
perl -0777 -pi -e 's/<style>.*?<\/style>/<link rel="stylesheet" href="..\/assets\/style.css">/s' chapters/*.html quizzes/*.html

# Clean up inline quiz nav styles
perl -0777 -pi -e 's/<nav style="[^"]*">/<nav class="topnav">/s' quizzes/*.html
perl -0777 -pi -e 's/<a href="\.\.\/index\.html" style="[^"]*">/<a class="home" href="..\/index.html">/s' quizzes/*.html
perl -0777 -pi -e 's/<span style="[^"]*">/<span class="crumbs">/s' quizzes/*.html

echo "Site successfully updated."
