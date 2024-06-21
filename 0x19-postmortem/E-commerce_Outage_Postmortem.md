Postmortem: E-commerce Website Outage
Issue Summary
On Friday, June 21, 2024, our e-commerce website experienced a critical outage lasting approximately two hours. The outage began at 1:00 PM PST and was fully resolved by 3:00 PM PST. During this downtime, users were unable to access the website, browse products, or complete purchases. This impacted 100% of our user base, resulting in an estimated loss of $10,000 in potential revenue. The root cause of the outage was traced back to a configuration error introduced during a scheduled database server update.
Timeline
•	1:00 PM PST: Monitoring alerts indicated a significant drop in website traffic and a surge in database connection errors.
•	1:05 PM PST: The on-call engineer was immediately notified and began investigating the issue. They confirmed that the website was unreachable and initiated troubleshooting procedures.
•	1:10 PM PST - 1:30 PM PST: Initial troubleshooting focused on potential network issues or hardware failures. These were quickly ruled out as the source of the problem.
•	1:30 PM PST - 1:45 PM PST: The investigation shifted towards the database server. The database team reviewed server logs and discovered errors related to connection failures.
•	1:45 PM PST - 2:00 PM PST: Suspecting a database configuration issue, the team reviewed recent changes made to the server, including the scheduled update that occurred just before the outage began.
•	2:00 PM PST - 2:15 PM PST: A configuration error introduced during the database update was identified as the root cause. The incorrect setting specifically affected connection pooling, leading to database connection failures and ultimately website downtime.
•	2:15 PM PST - 2:30 PM PST: The database team implemented a fix by reverting the incorrect configuration to its previous, functional state.
•	2:30 PM PST - 2:45 PM PST: Database functionality recovered, and website services began to come back online.
•	2:45 PM PST - 3:00 PM PST: The website was fully operational, and all user functionalities were restored. The on-call engineer monitored the system for stability before officially declaring the incident resolved.
Root Cause and Resolution
The root cause of the outage was a configuration error introduced during a routine database server update. Specifically, an incorrect setting related to connection pooling was accidentally implemented, leading to database connection failures and ultimately website downtime. The issue was resolved by reverting the mistaken configuration to its previous, functional state.
Corrective and Preventative Measures
To prevent similar incidents from occurring in the future, we will be implementing several corrective and preventative measures:
Figure 3: The importance of an incident postmortem process | Atlassian
Enhanced Change Management: We will implement a more rigorous change management process for all system updates. This will include:
o	Mandatory code reviews by a second developer to identify potential issues before deployment.
o	Pre-production testing environments that mirror the live environment as closely as possible to catch configuration errors early.
o	A rollback plan clearly defined for each update, ensuring a swift response if problems arise.
•	Automated Testing: We will explore the integration of automated testing procedures specifically focused on database configurations. These tests will be integrated into the CI/CD pipeline to automatically identify and prevent configuration errors before updates reach production.
•	Improved Monitoring: We will enhance our monitoring capabilities to include more granular metrics related to database health and connection pooling. This will allow for:
o	Earlier detection of potential issues by monitoring for abnormal connection pool behavior.
o	Faster response times in the event of an incident by pinpointing the problem area more quickly.
•	Post-Mortem Review: We will conduct a comprehensive post-mortem review with all involved teams to analyze the incident in detail and identify any additional areas for improvement. This will help to ensure that we learn from this experience and prevent similar outages in the future.
Communication
We understand that outages can be frustrating for our users. In the future, we will strive to improve our communication during incidents. This includes:
•	Developing a communication plan: This plan will outline how and when we will communicate with users during outages. It will ensure timely updates on the status and resolution of any issues.
•	Implementing alert notifications: We will explore options for implementing automated alert notifications to inform users about outages and their estimated resolution times.

