# Workspeace

Cloud environment for coding

## DNS & Subdomains

| **Name**       | **Type** | **Value**              | **How to access**              |
| -------------- | -------- | ---------------------- | ------------------------------ |
| @              | A        | 127.0.0.1              | workspeace.example.com         |
| pgadmin        | CNAME    | workspeace.example.com | pgadmin.workspeace.example.com |
| vscode         | CNAME    | workspeace.example.com | vscode.workspeace.example.com  |
| redisinsight   | CNAME    | workspeace.example.com | vscode.workspeace.example.com  |

## Environment variables

| **Name**            | **Required**  | **Default value** |
| ------------------- | ------------- | ----------------- |
| SERVER_SSH_HOST     | true          |                   |
| SERVER_SSH_PORT     | true          |                   |
| SERVER_SSH_USER     | true          |                   |
| SERVER_SSH_PASSWORD | true          |                   |
| DOMAIN              | true          |                   |
| ACME_EMAIL          | true          |                   |
| VSCODE_USERNAME     | false         | admin             |
| VSCODE_PASSWORD     | false         | admin             |
| PGADMIN_EMAIL       | false         | admin@admin.com   |
| PGADMIN_PASSWORD    | false         | admin             |
