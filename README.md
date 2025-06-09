# Folder structure

## Repository model

- All documentation lives in a single monorepo, separate from the application code.
- This enforces a clear boundary between source code and documentation content.

## Root-level organization

- Each product or project area has its own root-level folder.
- These folders correspond 1:1 with entries on the landing page of `docs.uipath.com`.
- Each guide type is a sub-folder under the product root level folder (e.g., Orchestrator API guide, user guide, etc.).

## Folder contents

### Product folders

- Contain full documentation hierarchy and `.md`/`.mdx` content files.
- Include a local `assets/` folder for images and reusable files specific to that product.

### Global assets folder

- Located at the root of the repo.
- Holds cross-product reusable content: images, code snippets, etc.

# Branches 

## Develop branch

- Shared workspace for ongoing content work across all products and projects.
- May be unstable or incomplete, not intended for publishing.
- CI/CD pipelines should not build or deploy from this branch.

## Cloud release branches

- One release branch per product per sprint.
- **Naming convention:** `product/release/sXXX` (e.g., `orchestrator/release/s170`).
- These branches are used to publish to (we will have one sprint branch for each):
  - Cloud Commercial
  - Cloud Public Sector
  - Cloud Dedicated
- Conditional content (`DOCS_ENV`) is used to control environment-specific visibility without duplicating content.

> **Question:** What does the sprint number represent (the documentation sprint or the engineering sprint)?

## On-premises release branches

- Forked from an agreed-upon cloud release branch at a milestone.
- **Naming convention:** `product/release/YYYY.MM` (e.g., `orchestrator/release/2025.10`).
- One branch per product per on-prem version for Automation Suite.
- Standalone product docs for web products fork from the previous on-premises release branch since there is no active development there (e.g., `orchestrator/release/2024.10` → `2025.10`).

## Work branches

- Temporary branches for feature work, bug fixes, or unmerged future content.
- **Naming convention:** `feat-<description>` or `hotfix-<description>`
- **Examples:**
  - `feat-api-rate-limits`
  - `hotfix-public-sector-wrong-paths`
- These branches are never published directly. Authors raise PRs into `develop`.

# Flows 

## Forward branch integration (merging features)

- Used when integrating feature work into its intended future target branch (e.g., from `feat-x` to `develop`, and from there into `release/s172`).
- Always develop and merge features into `develop`.
- Release branches are cut from `develop` at the sprint boundary.
- If needed, cherry-pick from `develop` into `release/sXXX`, not the other way around.

## Backporting (porting to older release branches)

- Backporting refers to the process of taking a change and applying it to an older release branch (e.g., `release/2023.10`).
- Always do the work against `develop`. This ensures changes are future-compatible and integrated with the mainline.
- After validation on `develop`, cherry-pick or manually port the relevant subset to older release branches in descending order of relevance (e.g., `release/2024.10`, then `release/2023.10`, etc.).
- Backporting is selective. You must isolate only the changes that are relevant, compatible, and safe to introduce in the older context, typically for:
  - Long-term support obligations
  - Critical fixes for on-premises versions
  - Compliance or customer-specific patches

# Feature flags

- Not used.
- Feature flags in application code allow future features to be deployed hidden. This is overkill for docs and introduces bloat.
- To delay publishing of existing documentation:
  - Keep docs changes on a `feat-*` or `hotfix` branch.
  - Do not merge into `develop` or a release branch until the content is publishable.
- The risk of conflicts increases the further ahead the work is. Merge cautiously.

# MDX components and syntax

## Example 1: Disclaimer  

&lt;Disclaimer&gt;
  This documentation will be obsolete before you finish reading it.
&lt;/Disclaimer&gt;

## Example 2: Condition

&lt;Condition if="mac"&gt;
  On macOS, run:

## Example 3: Variable

Your API base URL is: <Variable name="API_BASE_URL" />.

Replace <Variable name="API_BASE_URL" /> with the value your admin failed to give you.

## Example 4: Snippets

1. Create your snippet file. Put the reusable content in its own .mdx file. For example `docs/snippets/warning.mdx`

&lt;Disclaimer&gt;
  This disclaimer is reusable. Ignore at your own risk.
&lt;/Disclaimer&gt;

2. Import and use the snippet

In any .mdx file where you want to reuse that content:

`import Warning from '../snippets/warning.mdx'`
