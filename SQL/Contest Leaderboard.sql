SELECT h1.hacker_id, 
(SELECT h.name FROM Hackers h
                      WHERE h.hacker_id = h1.hacker_id) name, 
sum(h1.score) Total_Score FROM 
  (SELECT hacker_id, max(score) score FROM Submissions s
   GROUP BY 1, s.challenge_id) h1
GROUP BY 1
HAVING Total_Score > 0
ORDER BY Total_Score DESC, hacker_id;