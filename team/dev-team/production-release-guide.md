# Shadowbane.gg RP - Produciton Release Guide

In order to maintain developer and server admin resources and keep everything running in a sane and order fasion, the following procedures have been established around releasing code changes into the production server. Please read, understand, and follow these procedures. If you need clarification, reach out to the development team lead for clarification.

## Procedure Overview

Generally code changes should be deployed only on a preestablished schedule. The cycle for this schedule may change from time to time, but generally new "releases" into production should only happen once every two weeks. This is to allow plenty of time to freeze code changes and create a point-in-time release artifact within the GitHub repository and facilitate methodical "roll back" should a bug in production, which may not be possible to fix immediatly, be identified.

### Release Deployment Overview

The release of new "artifacts" to production should will follow the procedure below:

1. The QA team will have created a "tagged release" within the `staging` branch of the GitHub repository. This should trigger an automatic "pull request", or "PR" to the `main` branch of the repository.
2. A member of the "production team" should review the PR for accuracy in the description of changes. All production PRs should follow the guideline example as described in [Production PR Specifications](production-pr-specification.md)





##
