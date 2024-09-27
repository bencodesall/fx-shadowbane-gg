# Production Pull Request Specification

Below are the details of formatting for use in PR titles and descriptions that needs to be used when creating approvals for all Pull Requests into the `production` branch. If you are unclear about anything below, please reach out to the technical lead before approving the reqeust (PR).

## PR Formatting

It is important to follow the exact formatting outlined in the template. There are two main parts to the formatting: title and description (body) Here are some of the more important parts to follow:

1. **Title**

    The title **MUST** be exactly as follows:

    - Opening parenthesis `(` followed by the word `release:`
    - A single blank space character
    - The **EXACT** "release version tag" which will be attached to the PR. Be sure to double-check this. Copy and paste it, instead of typing it out. This ensures accuracy.
    - Closing parenthesis `)` followed by a colon `:` and another blank space.
    - The date, in ISO underscore format (i.e., ), on which the release tag was generated. NOT TODAY'S DATE. You should be able to get this from the date the PR was requested.
    - A blank space, followed by a dash `-`, followed by a blank space.
    - A short but descriptive title that broadly captures the areas of change.
    - A blank line between the title and the beginning of the body of the PR comment. (*NOTE: you don't need to do this if you are editing the PR within the GitHub interface. The title is a separate field.)

    **For example:**

    ```plaintext
    (release: v2.0.1234): 2024_01_23 - Updates and fixes to various plugin configs
    ```

2. **Description**

    - The description **MUST** have three sections titled as follows:
      - Release Overview
      - Specific Changes
      - Disposition Refs
    - Each heading of the body **MUST** open with two octothorps (`##`) followed by a single whitespace, then followed with the heading text.
    - There **MUST** be a single blank space between all headings, paragraphs, and lists.

    **Disposition References (Refs)**

    These entries are important for automation processes around ticketing, issue tracking, and other metrics.

    The "Disposition Reference(s)" should be a single pre-defined word and a reference id, encolsed in square brackets. There can be multiple entries on separate lines. The type of entry may repeat. For example:

    ```plaintext
    [ticket 123456]
    [ticket 123457]
    [issue 42]
    [issue 43]
    [dev bencodesall]
    [dev somegithubuser]
    [approver prodteammembergithubid]
    ```

## Production PR Template

Below is an example of the described formatting rules. Feel free to use the textfile [production-pr-template.txt](production-pr-template.txt) as a copy-paste reference if you like. Just remember that, in GitHub's UI, the title and description are two separate fields.

```plaintext
(release: <release-version-tag>): <YYYY_mm_dd> - <brief-descriptive-title>

## Release Overview

A brief paragraph outlining, in broad overview, changes at a very high level. Don't get into rabbit-trails, or "in the weeds", about details. The details should go in the "Changes" sub-section. This section should be as short as possible, while highlighting the entire set of general areas of change.

## Specific Changes

- <change 01> - Brief detail of the specific change
- <change 02> - Brief detail of another specific change
  - Additional sub-bullets if deemed necessary.
- <change 03> - Keep it brief.

## Disposition Refs

[issue 1]
[ticket 1]
[dev ghusername]
```
