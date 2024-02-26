The design a three-server web infrastructure hosting www.foobar.com. This infrastructure will be secured, serve encrypted traffic, and be monitored. Here's the breakdown:

Architecture Overview:
3 Servers: Each server will have specific roles.
3 Firewalls: To control and secure traffic flow.
1 SSL Certificate: To enable HTTPS encryption for www.foobar.com.
3 Monitoring Clients: To collect data for monitoring purposes.
Specifics Explanation:
Additional Elements:

Firewalls: Added to control incoming and outgoing traffic, providing an additional layer of security.
SSL Certificate: Implemented to encrypt data transmitted between the server and clients, enhancing security and protecting sensitive information.
Monitoring Clients: Installed to collect data on system performance, resource usage, and potential security threats.
Purpose of Firewalls:

Firewalls are essential for controlling network traffic, filtering out malicious or unauthorized access attempts, and enforcing security policies to protect the infrastructure from cyber threats.
HTTPS Traffic:

Serving traffic over HTTPS ensures data confidentiality, integrity, and authenticity by encrypting communication between the server and clients. It prevents eavesdropping, tampering, and man-in-the-middle attacks.
Monitoring Purpose:

Monitoring is used to track system health, identify performance bottlenecks, detect security breaches, and ensure the availability and reliability of the infrastructure and services.
Data Collection by Monitoring Tool:

The monitoring tool collects data by deploying monitoring agents or clients on each server. These agents collect metrics related to CPU usage, memory usage, disk space, network activity, and application performance.
Monitoring Web Server QPS:

To monitor the web server's QPS (Queries Per Second), you can configure the monitoring tool to track incoming HTTP requests or analyze server access logs to count the number of requests processed per second.
