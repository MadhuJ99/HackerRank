select submission_date,
(select count(distinct hacker_id)  
 from Submissions s2  
 where s2.submission_date = s1.submission_date and    
(select count(distinct s3.submission_date) 
 from Submissions s3 where s3.hacker_id = s2.hacker_id and s3.submission_date < s1.submission_date) = DATEDIFF(s1.submission_date , '2016-03-01')),
(select hacker_id from Submissions s2 where s2.submission_date = s1.submission_date 
group by hacker_id order by count(submission_id) desc, hacker_id LIMIT 1) as M,
(select name from hackers where hacker_id = M)
from
(SELECT DISTINCT submission_date from Submissions) S1
group by submission_date;