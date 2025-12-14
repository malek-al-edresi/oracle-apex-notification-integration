# Oracle APEX Application with WhatsApp API Integration

## Overview

This project delivers an Oracle APEX application integrated with a WhatsApp messaging API, enabling automated communication and notification workflows directly from the Oracle Database environment.
The solution is designed for enterprise use, combining PL/SQL, Oracle APEX, and Node.js for external API communication.

The repository contains database scripts for application creation and deployment, along with a JavaScript service responsible for WhatsApp API integration.

## Project Structure

```
.
├── scrpit_create_app.sql
├── readme
├── api_whatsapp_inetgration.js
└── App/
    └── f252745.sql
```

## File Description

### scrpit_create_app.sql
SQL script used to create and initialize the Oracle APEX application schema and related database objects.

### App/f252745.sql
Oracle APEX application export file.
Used to import the full APEX application into an existing APEX workspace.

### api_whatsapp_inetgration.js
Node.js service responsible for integrating with the WhatsApp API.
Acts as a middleware between Oracle APEX and the external WhatsApp service.

## Architecture

### High-level flow:
1. Oracle APEX triggers messaging logic (PL/SQL or REST call).
2. APEX communicates with the Node.js service.
3. Node.js service authenticates and sends requests to the WhatsApp API.
4. Delivery status or responses can be logged back into Oracle Database.

## Technologies Used

- Oracle Database
- Oracle APEX
- SQL / PL/SQL
- Node.js
- REST APIs
- WhatsApp API

## Installation & Setup

### 1. Database & APEX Setup
- Ensure Oracle APEX is installed and configured.
- Connect to your Oracle Database schema.
- Run:
```sql
@scrpit_create_app.sql
```

- Import the APEX application:
  - Go to APEX → App Builder → Import
  - Upload App/f252745.sql
  - Follow the import wizard

### 2. WhatsApp API Service Setup
- Install Node.js (v16+ recommended).
- Navigate to the service directory.
- Install dependencies:
```bash
npm install
```

- Configure WhatsApp API credentials inside api_whatsapp_inetgration.js.
- Start the service:
```bash
node api_whatsapp_inetgration.js
```

## Configuration

- Update API endpoints and credentials in:
  - api_whatsapp_inetgration.js
- Configure APEX REST calls or Web Service references to point to the Node.js service.
- Secure credentials using environment variables in production.

## Usage

- Trigger WhatsApp messages from:
  - APEX processes
  - PL/SQL procedures
  - Button actions or automated jobs
- Messages can include alerts, notifications, or system updates.

## Security Considerations

- Do not hardcode API tokens in production.
- Use HTTPS for all external communication.
- Restrict database network access using ACLs.
- Apply authentication between APEX and Node.js services.

## Deployment Recommendations

- Deploy Node.js service behind a reverse proxy (Nginx).
- Use Docker for containerized deployments.
- Monitor logs and message delivery failures.
- Apply rate limiting where applicable.

## Troubleshooting

- Verify APEX network ACL permissions.
- Check Node.js service logs for API errors.
- Validate WhatsApp API credentials and webhook configuration.
- Ensure correct REST endpoint URLs in APEX.

## Author

Malek Mohammed Al-Edresi
+967-778888730
