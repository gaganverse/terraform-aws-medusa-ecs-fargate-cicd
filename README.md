# terraform-aws-medusa-ecs-fargate-cicd
Deploy Medusa.js backend on AWS ECS Fargate using Terraform with CI/CD powered by GitHub Actions. This repo automates infrastructure provisioning, Docker image builds, and ECS deployments for a scalable, production-ready headless commerce setup.

1️⃣ Developer Commit (Source Code Push)
   - 🧑‍💻 Developer pushes code to `dev` or `main` branch on GitHub.
   - 🔄 Triggers GitHub Actions workflow for CI/CD.

      |
      v

2️⃣ GitHub Actions CI/CD Pipeline
   - ✅ Step 1: Checkout source code.
   - 🛠️ Step 2: Set up Terraform CLI (v1.6.0).
   - 🔐 Step 3: Configure AWS credentials securely via GitHub Secrets.
   - 🌍 Step 4: Detect environment (`dev` or `prod`) based on the branch.
   - ⚙️ Step 5: Initialize, validate, plan, and apply Terraform configs from the appropriate env dir.

      |
      v

3️⃣ Docker Image Build & Push to ECR
   - 🐳 Dockerfile (Multi-stage) builds the Medusa.js backend.
   - 🏷️ `npm run build` in builder stage.
   - 📦 Final lightweight runtime image created.
   - 🚀 Docker image pushed to Amazon ECR.

      |
      v

4️⃣ Terraform Infra Provisioning on AWS
   - 📦 `aws_iam_role` created for ECS task execution.
   - 🔄 `aws_ecs_task_definition` uses the ECR image.
   - 🌐 Resources like VPC, Subnets, Security Groups, and ECS Cluster are provisioned.
   - 🧩 ECS Fargate service starts the Medusa container in a serverless, scalable way.

      |
      v

5️⃣ Application Running on AWS ECS Fargate
   - 🛠️ Medusa.js backend runs inside ECS task.
   - 🌍 App listens on port 9000.
   - ⚖️ Auto-scalable, no server management needed.
   - 🔁 Future commits trigger repeat pipeline, ensuring continuous delivery.

