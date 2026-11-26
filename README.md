# Free Tailwind landing page template

![Simple TailwindCSS template preview](https://github.com/cruip/tailwind-landing-page-template/assets/2683512/f9a98fab-a1bc-4fb5-8572-4de0b6bd932a)

**Simple Light** is a free landing page template built on top of **TailwindCSS** and fully coded in **React** / **Next.js**. Simple light is designed to provide all the basic components a developer need to create a landing page for SaaS products, online services, and more.

**UPDATE 2025-02-04** Added Tailwind v4 support!

Use it for whatever you want, and be sure to reach us out on X if you build anything cool/useful with it.
Created and maintained with ❤️ by [Cruip.com](https://cruip.com/).

_Version 1.3.3 built with Tailwind CSS and React + Vite is available [here](https://github.com/cruip/tailwind-landing-page-template/releases/tag/1.3.3)._

## Live demo

Check the live demo here 👉️ [https://simple.cruip.com/](https://simple.cruip.com/)

## Simple Pro

[![Simple Pro](https://github.com/cruip/tailwind-landing-page-template/assets/2683512/992be2ba-3de7-4838-be41-12e85686c193)](https://cruip.com/)

## Design files

If you need the design files, you can download them from Figma's Community 👉 https://bit.ly/3HOZMpf

## Usage

This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

### Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

[API routes](https://nextjs.org/docs/api-routes/introduction) can be accessed on [http://localhost:3000/api/hello](http://localhost:3000/api/hello). This endpoint can be edited in `pages/api/hello.ts`.

The `pages/api` directory is mapped to `/api/*`. Files in this directory are treated as [API routes](https://nextjs.org/docs/api-routes/introduction) instead of React pages.

This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Inter, a custom Google Font.

### Run locally with Podman Desktop

Start the Podman machine in Podman Desktop, then run these commands from the repository:

```sh
npm run podman:build
npm run podman:run
```

Open [http://localhost:3000](http://localhost:3000). The image appears as `tailwind-landing-page:local` in Podman Desktop, and the container is named `tailwind-landing-page`.

Manage the container directly with the Podman CLI:

```sh
podman ps --all --filter name=tailwind-landing-page
podman logs --follow --tail 100 tailwind-landing-page
podman stop tailwind-landing-page
```

Running `npm run podman:run` again replaces the existing named container. Rebuild the image after changing the app.

### Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

### Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.

### Deploy to AWS ECS

The GitHub Actions workflow in `.github/workflows/terraform.yml` builds the app as a Docker image, pushes it to ECR, and deploys it to ECS Fargate behind an Application Load Balancer. It also packages the Python API for Lambda and uploads the ZIP to S3 when changes are pushed to `main`.

Before deploying, configure:

- The Terraform state bucket named in `infra/terraform/main.tf`; it must already exist.
- A default VPC with at least two subnets in different Availability Zones.
- The `AWS_ROLE_ARN` GitHub Actions secret. Its IAM role must trust this repository's GitHub Actions OIDC identity and allow Terraform to manage the configured AWS resources, push images to ECR, access the Terraform state bucket, and pass the ECS task roles.
- The `LAMBDA_ARTIFACT_BUCKET` GitHub Actions repository variable. The bucket must already exist in `ap-southeast-2`, and the `AWS_ROLE_ARN` role must allow `s3:PutObject` to `arn:aws:s3:::<bucket-name>/python-api/*`.

The initial deployment creates the ECR repository before building and pushing the image. The deployment URL is shown in the GitHub Actions run summary and is available with `terraform -chdir=infra/terraform output -raw app_url`. The load balancer is HTTP-only; configure an ACM certificate and HTTPS listener before using this setup for production traffic. ECS tasks use public subnets to avoid NAT gateway costs.

The Python API ZIP contains `sites.py` and its dependencies at the archive root and is uploaded under `python-api/<commit-sha>/<run-id>-<attempt>.zip`. This packages and stores the Lambda artifact; it does not create or deploy a Lambda function.

### Support notes

This template has been developed with the App Router (`app`) and React Server Components. If you’re unfamiliar with these beta features, you can find more information about them on the Next.js beta documentation page. So, please note that any request dealing with React (e.g. extra features, customisations, et cetera) is to be considered out of the support scope.

For more information about what support covers, please see our (FAQs)[https://cruip.com/faq/].

## Credits

- [Nucleo](https://nucleoapp.com/)

## Terms and License

- Released under the [GPL](https://www.gnu.org/licenses/gpl-3.0.html).
- Copyright 2024 [Cruip](https://cruip.com/).
- Use it for personal and commercial projects, but please don’t republish, redistribute, or resell the template.
- Attribution is not required, although it is really appreciated.

## About Us

We're an Italian developer/designer duo creating high-quality design/code resources for developers, makers, and startups.

## Stay in the loop

If you would like to know when we release new resources, you can follow [@pacovitiello](https://x.com/pacovitiello) and [@DavidePacilio](https://x.com/DavidePacilio) on X, or you can subscribe to our [newsletter](https://cruip.com/newsletter/).

