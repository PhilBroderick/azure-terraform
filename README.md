# Introduction

A demo solution to display knowledge of Terraform with Azure, along with GitHub Actions for CI/CD. There is a simple Angular UI 
with an Azure Function backend/API layer, which allows basic CRUD operations against an Azure Storage account for persistence.

Once successfully integrated to master, a GitHub Action runs to deploy any resources required via Terraform, and then deploy the code. 