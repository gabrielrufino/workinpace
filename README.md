<p align="center">
  <img width="80%" src="https://drive.google.com/uc?export=view&id=1PSeuIeyTP6zrdeZXZsYvaYLbp6AokB_W">
</p>

Cloud environment for coding

## DNS & Subdomains

| **Name**       | **Type** | **Value**              | **How to access**              |
| -------------- | -------- | ---------------------- | ------------------------------ |
| @              | A        | 127.0.0.1              | workinpace.example.com         |
| pgadmin        | CNAME    | workinpace.example.com | pgadmin.workinpace.example.com |
| vscode         | CNAME    | workinpace.example.com | vscode.workinpace.example.com  |
| redisinsight   | CNAME    | workinpace.example.com | vscode.workinpace.example.com  |

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
| RABBITMQ_USERNAME   | false         | admin             |
| RABBITMQ_PASSWORD   | false         | admin             |
