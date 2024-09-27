# Shadowbane.gg - FiveM Server Development Team Manifesto

This document is the primary source of truth around dev practices and established procedures. If you are a dev on this team, there are a few expectations placed on you. Here are most of them.

## Overarching Working Expectations of Dev Team Members

1. You know how to use `git`
2. You know how to write a clear and concise commit message
3. You are familiar (or will become familiar) with how to effectively utilize GitHub and the tools which it provides for colaboration and clear, directed communcation amongst the development team members
4. You will keep all conversations about proposed code changes, PR's and developer-centered issue tracking within GitHub.
5. If you are unclear on any dev processes you will reach out to a senior member of the team to clarify your understanding and become a better dev to work with

## `git` Workflow Overview

1. Always start from the `dev` branch when begining any code changes
2. Create a local branch, following the following naming scheme:

    **For Ticketed Issues**

    ```terminal
    t/<ticket-number>/<firstinitiallastname>-<short-descriptive-title>
    ```

    **Non-ticketed Items**

    ```terminal
    u/<firstinitiallastname>/<short-descriptive-title>
    ```

3. Make your changes locally
4. Commit your changes locally using signed commits with full and meaningful commit messages.
5. Once you are ready to submit your code changes for PR into the `staging` branch, `push` your up-to-date local branch up the the GitHub repo, and submit a PR to `staging` using the format described in [Convential Commits v1.0.0](https://www.conventionalcommits.org/en/v1.0.0/)
6. Once the PR is approved, be sure to update the description with any adjustments and bulleted changes. Make sure the title adheres to the established conventions. Finally perform a "squash merge" to maintain a linear change history.
7. Next, the Quality Assurance (QA) assigned team members will review the changes in "staging" to validate there are no breaking changes, the update does what is expected, and everything functions as it should.
8. Once the QA team has cleared the changes, they will submit the change to be included in the next upcoming tagged `release`.

## QA Process and Release Tagging

When a set of validated changes are needing to be pushed into production, the following process ensures that the change log is kept up-to-date and accurate.

1. The QA member tasked with making the release will submit a tagged PR into `main` from the `staging` branch, following the guidelines established in the [Production Release Guide](production-release-guide.md)
2. Once all tests have passed, and the PR has been signed-off (approved) by 2 other team members, the PR may be squash merged into the `main` branch. This will kick off an update to the production server and a Discord server announcement in the `change-log` channel.

(This list does not seek to be exhaustive, but it does aim to be concise and relatively complete. If you see something that could be improved, or that needs to be documented, please edit this doc and submit a PR into the `main` branch.)