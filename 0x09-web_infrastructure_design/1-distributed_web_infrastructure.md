The design a three-server web infrastructure hosting the website www.foobar.com. Here's the breakdown:

Architecture Overview:
2 Servers: Each server will serve a specific purpose.
1 Load Balancer: To distribute incoming traffic across the servers.
1 Web Server (Nginx): To handle web requests and serve static content.
1 Application Server: To process dynamic content and interact with the database.
1 Database (MySQL): To store and manage website data.
1 Set of Application Files: Contains the website's codebase.
Specifics Explanation:
Additional Elements:

Load Balancer: Added to distribute traffic evenly across multiple servers, ensuring scalability and reliability.
Second Server: Added for redundancy and improved fault tolerance.
Load Balancer Configuration:

Configured with a Round Robin distribution algorithm, distributing requests equally among servers.
Active-Active vs. Active-Passive:

Active-Active: Both load balancers are actively distributing traffic simultaneously, providing redundancy and load distribution.
Active-Passive: One load balancer is active, while the other is on standby, only becoming active if the primary load balancer fails. This setup provides redundancy but utilizes resources less efficiently compared to Active-Active.
Database Primary-Replica Cluster:

In a Primary-Replica setup, the Primary node handles all write operations and replicates data to the Replica nodes. Replica nodes handle read operations, reducing the load on the Primary node.
Difference between Primary and Replica:

The Primary node handles write operations and is responsible for data consistency and integrity.
Replica nodes handle read operations, improving read scalability and providing redundancy in case of Primary node failure.
