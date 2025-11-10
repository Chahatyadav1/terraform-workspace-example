# Terraform Workspaces Example (dev / staging / prod)

This repository demonstrates how to use **Terraform Workspaces** to manage multiple environments (**dev**, **staging**, and **prod**) using the same Terraform configuration.

---

## 📁 Project Structure

```
.
├── compute-instance.tf
├── module
│   └── testing-tf
│       ├── main.tf
│       ├── provider.tf
│       └── variable.tf
├── README.md
├── terraform.tfstate.d
│   ├── dev
│   ├── prod
│   └── staging
├── terraform.tfvars
└── variable.tf
```

The environments (`dev`, `staging`, `prod`) are automatically handled by Terraform inside the `terraform.tfstate.d` directory.

---

## ✅ How to Use Workspaces

### 1️⃣ Initialize Terraform

Run initialization so Terraform can download providers and set up the project.

### 2️⃣ Create Workspaces

Create separate environments to isolate state.

### 3️⃣ Select an Environment

Switch to the desired workspace before applying changes.

### 4️⃣ Apply Environment-Specific Infrastructure

Once a workspace is selected, Terraform will create resources specific to that environment (e.g., naming patterns, isolated state).

Switching between workspaces (like staging or prod) creates separate sets of infrastructure.

---

## 🎯 Why Workspaces?

* ✅ Single codebase → multiple environments
* ✅ Easily switch context
* ✅ Prevent accidental deployments to production
* ✅ Environment name automatically appended in resource names

---

## 📘 Notes

* Best suited for **small projects** or **personal testing**.
* For production-level teams, prefer **directory-based environments**, **Terragrunt**, or **separate Git repos** for each environment.



