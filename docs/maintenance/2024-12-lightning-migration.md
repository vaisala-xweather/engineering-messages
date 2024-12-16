---
title: "Maintenance: 2025-01 Lightning"
layout: sub-page
---

# ACTION REQUIRED for Lightning Data Customers

Upcoming planned maintenance will be performed on January 15th, 2025, at one of our data centers. We ask that you take action by that time to ensure minimal service disruption.

Several hours of periodic downtime of this data center is expected. **Users who are connected, or who will fail over, to other data centers/methods will not see an interruption in service.** We ask that you verify your configuration and connection to ensure you are up to date with best practices before the maintenance to ensure you have no downtime.

## SSH Real-Time Feed Users and Falls Client Users

### How do I know if I’m affected?

If you connect to Vaisala Lightning Distribution servers using SSH real-time data tunnel and you connect to:

- 199.33.75.208
- 199.33.75.209

### What should I do?

Update your client to listen to the following IPs primarily:

- 192.101.77.208
- 192.101.77.209

The best practice is to listen to all of the IP addresses provided and either merge or fail over if a connection is lost between you and any of our data centers.

## VPN Real-Time Feed Users

### How do I know if I’m affected?

You connect to Vaisala Lightning Distribution servers using an appliance-managed VPN to the Vaisala Data Center at 199.33.75.246. You may need to discuss with your IT department for specific details.

### What should I do?

These are managed connections. Contact Vaisala to arrange a time to move your connection to 192.101.77.246.

## Batched File Server/Pick Up Users (SCP, SFTP)

### How do I know if I’m affected?

You pick up drops of lightning events from Vaisala Xweather as a file. Typically batched for a given time interval and accessed on a Vaisala file server.

You connect to:

- 199.33.75.210
- 199.33.75.211

### What should I do?

Update your client to connect to the following IPs primarily (if you point to 210, you should point to 210):

- 192.101.77.210
- 192.101.77.211

The best practice is to listen to all of the IP addresses provided and either merge or fail- over if a connection is lost between you and any of our data centers.

## Batched Data Drop-off Users (AWS S3, FTP, etc.)

### How do I know if I’m affected?

You receive drops of lightning events from Vaisala Xweather as a file. Typically batched for a given time interval to an AWS S3 Bucket or FTP server you have provided us access to.

### What should I do?

Your service will be unaffected, and we will continue to manage data distribution to your systems. Stay tuned to updates as we approach the migration if any minor downtime is foreseen.

## Satellite VSAT Users

### How do I know if I’m affected?

If you connect to Vaisala Lightning Distribution servers using a Hughes VSAT modem. Your software will be pointed to one of the following:

- 10.20.100.101
- 10.20.100.102

### What should I do?

To ensure the highest availability, best practices are to have profiles for each connection endpoint. You should duplicate your config and adjust the IP addresses.

Adjust your setting to point to the following 10.30 addresses, just changing the 20 to a 30, basically:

- 10.30.100.101
- 10.30.100.102

We suggest using these IPs as your primary, but in case of any issues you should be able to switch between the IPs by using the previous configs.

## Xweather Insight/Protect and Thunderstorm Manager (TSM)

### How do I know if I’m affected?

You use Xweather Protect (<https://www.xweather.com/xweather-insight> ) or Vaisala Thunderstorm Manager (<https://www.vaisala.com/en/systems/lightning/thunderstorm-manager>) web applications.

### What should I do?

Users of these systems will continue to receive functionality via their respective applications. We will manage any transition required. Stay tuned to updates as we approach the migration if any minor downtime is foreseen.

## Xweather Data API and Webhooks Users

### How do I know if I’m affected?

You query the Xweather Data API endpoints /lightning (or any lightning-related endpoint) from <https://data.api.xweather.com/> or receive webhooks that hit your server from Xweather.

### What should I do?

API and Webhooks users are unaffected by this migration and will continue to receive data. Stay tuned to updates as we approach the migration if any minor downtime is foreseen.

## Going Forward

This service disruption will only affect users connected to a single data center. After the maintenance is completed, you should configure your applications to connect and fail over to any of the addresses provided for your service. The Vaisala Lightning products are distributed and highly available.

Thank you for verifying your configuration and ensuring that upstream data sources are accessible by your systems. If you have any questions, don’t hesitate to reach out, and we can assist you with any questions or changes you may need to make.

<a href="mailto:support@xweather.com">Email: support@xweather.com</a>

[Open a Support Ticket](https://www.xweather.com/support/ticket)





