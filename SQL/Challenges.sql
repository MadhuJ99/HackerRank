
SELECT h.hacker_id, 
       h.name, 
       COUNT(c.challenge_id) AS count_challenges
FROM Hackers h
JOIN Challenges c ON c.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING count_challenges = 
    (SELECT COUNT(c1.challenge_id) AS Maximum_challenges
     FROM Challenges AS c1
     GROUP BY c1.hacker_id 
     ORDER BY Maximum_challenges DESC LIMIT 1)
OR count_challenges IN 
    (SELECT DISTINCT compare_challenge AS unique_challenge
     FROM (SELECT h1.hacker_id, 
                  h1.name, 
                  COUNT(challenge_id) AS compare_challenge
           FROM Hackers h1
           JOIN Challenges c ON c.hacker_id = h1.hacker_id
           GROUP BY h1.hacker_id, h1.name) COUNTS
     GROUP BY compare_challenge
     HAVING COUNT(compare_challenge) = 1)
ORDER BY count_challenges DESC, h.hacker_id;