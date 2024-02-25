Make Next.js, Docker, Playwright, and GitHub Actions work together

- Next.js with TypeScript and ESLint
- Docker with Compose for Postgres to develop locally
- Playwright for integration tests against production-built Next.js

Locally,

- Develop with Docker Compose, changes to local files are reflected in the container
- Changes to package.json reuse yarn cache
- Run Playwright tests against development Next.js
- Run Playwright tests against production-built Next.js
- Changes to source files reuse Next.js build cache

In CI,

- Reuse Docker cache
- Reuse yarn cache
- Reuse Next.js build cache
- Run Playwright tests against production-built Next.js
