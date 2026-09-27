# Portfolio copy

## Upwork title

AI Revenue Recovery Agent for Recruitment Agencies — n8n, Supabase and OpenAI

## Short description

I designed and built an AI-assisted revenue recovery system for recruitment agencies. The system monitors active candidate applications, identifies stalled placements and operational risks, calculates the potential placement revenue exposed, creates recovery tasks, and alerts the appropriate team before the opportunity is lost.

## Full case study

Recruitment teams manage client feedback, candidate communication, interviews, and internal follow-up across many live vacancies. A missed reminder or overdue task can quietly place a valuable placement at risk.

I built a system that runs automatically each morning and reviews the complete recruitment pipeline stored in Supabase. JavaScript calculates exact operational metrics, including inactivity, overdue tasks, interview proximity, and estimated placement value. A rule-based filter sends only credible risks to an OpenAI agent for contextual analysis.

The agent returns a structured decision containing the risk category, supporting evidence, priority, confidence score, revenue exposure, and recommended human action. The workflow checks for an existing unresolved recommendation before creating anything, preventing duplicate alerts and tasks.

When intervention is justified, the system saves an auditable recommendation, creates and links a recovery task, sends individual high-priority alerts to recruiters, and delivers a combined revenue-risk summary to management.

### My contribution

- Designed the relational recruitment database and API data model.
- Built the n8n orchestration and branching logic.
- Separated deterministic calculations from AI judgment.
- Created a structured AI output contract and evidence-based prompt.
- Implemented duplicate protection, database writes, task creation, and record linking.
- Built recruiter alerts and aggregated management reporting.
- Added scheduling, synthetic test data, and production safety boundaries.

### Tools

n8n, Supabase, PostgreSQL, REST APIs, OpenAI, JavaScript, Telegram

### Result

The prototype turns scattered warning signs into prioritized, accountable recovery actions. It demonstrates how an agency can surface placement revenue at risk before delayed follow-up becomes a lost fee.

## GitHub description

AI-assisted recruitment revenue-recovery workflow built with n8n, Supabase, OpenAI, and Telegram.

## Suggested skills/tags

n8n · AI Agents · Workflow Automation · Supabase · PostgreSQL · REST API · OpenAI API · JavaScript · Telegram API · Recruitment Automation

## Thumbnail headline

AI Agent That Detects Recruitment Revenue at Risk

## Suggested screenshot order

1. Full n8n workflow canvas.
2. Synthetic recruitment records in Supabase.
3. Structured AI risk decision.
4. Created recommendation and linked recovery task.
5. Recruiter urgent Telegram alert.
6. Management recovery summary.

