-- Synthetic portfolio records. Run after schema.sql in a fresh project.

insert into public.clients (id, name, company, email, placement_fee_percentage)
values
  (1, 'Northstar Technology', 'Northstar Technology Ltd', 'hiring@northstar.example', 20),
  (2, 'Harbor Financial', 'Harbor Financial Group', 'talent@harbor.example', 18),
  (3, 'Summit Health Systems', 'Summit Health Systems', 'people@summit.example', 16);

insert into public.vacancies
  (id, client_id, title, department, location, employment_type, status, salary_min, salary_max, currency)
values
  (1, 1, 'Senior Backend Engineer', 'Engineering', 'Remote', 'Permanent', 'open', 140000, 160000, 'USD'),
  (2, 2, 'Risk Operations Manager', 'Operations', 'New York', 'Permanent', 'open', 115000, 130000, 'USD'),
  (3, 3, 'Clinical Data Lead', 'Data', 'Boston', 'Permanent', 'open', 125000, 145000, 'USD');

insert into public.candidates (id, name, email, current_title)
values
  (1, 'Avery Morgan', 'avery.morgan@example.com', 'Backend Engineer'),
  (2, 'Jordan Lee', 'jordan.lee@example.com', 'Risk Operations Specialist'),
  (3, 'Taylor Brooks', 'taylor.brooks@example.com', 'Clinical Data Manager');

insert into public.applications
  (id, vacancy_id, candidate_id, status, stage, source, notes, last_activity_at)
values
  (1, 1, 1, 'active', 'client_interview', 'Referral', 'Client interview completed; feedback pending.', now() - interval '4 days'),
  (2, 2, 2, 'active', 'shortlisted', 'LinkedIn', 'Strong candidate awaiting recruiter follow-up.', now() - interval '6 days'),
  (3, 3, 3, 'active', 'interview', 'Careers page', 'Interview confirmed; reminder not yet recorded.', now() - interval '1 day');

insert into public.interviews
  (id, application_id, scheduled_at, interview_type, interviewer, status, notes)
values
  (1, 1, now() - interval '4 days', 'Client interview', 'Hiring panel', 'completed', 'Awaiting client feedback.'),
  (2, 3, now() + interval '24 hours', 'Final interview', 'VP, Data', 'scheduled', 'Video interview.');

insert into public.tasks
  (id, title, description, task_type, priority, status, due_at, assigned_to, client_id, vacancy_id, application_id, source)
values
  (1, 'Request client interview feedback', 'Contact the client and record the decision timeline.', 'client_feedback', 'high', 'pending', now() - interval '2 days', 'Recruiter Team', 1, 1, 1, 'ats'),
  (2, 'Follow up with shortlisted candidate', 'Confirm continued interest and availability.', 'candidate_follow_up', 'medium', 'pending', now() - interval '1 day', 'Recruiter Team', 2, 2, 2, 'ats');

insert into public.activities
  (application_id, candidate_id, vacancy_id, client_id, activity_type, description, created_at)
values
  (1, 1, 1, 1, 'interview_completed', 'Client interview marked as completed.', now() - interval '4 days'),
  (2, 2, 2, 2, 'candidate_shortlisted', 'Candidate added to the client shortlist.', now() - interval '6 days'),
  (3, 3, 3, 3, 'interview_scheduled', 'Final interview added to the calendar.', now() - interval '1 day');

select setval(pg_get_serial_sequence('public.clients', 'id'), 3, true);
select setval(pg_get_serial_sequence('public.vacancies', 'id'), 3, true);
select setval(pg_get_serial_sequence('public.candidates', 'id'), 3, true);
select setval(pg_get_serial_sequence('public.applications', 'id'), 3, true);
select setval(pg_get_serial_sequence('public.interviews', 'id'), 2, true);
select setval(pg_get_serial_sequence('public.tasks', 'id'), 2, true);

