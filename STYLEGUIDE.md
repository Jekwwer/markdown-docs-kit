# Style Guide

This document outlines the style guide for **jekwwer/markdown-docs-kit**.
It covers commit message formatting, coding conventions, repository structure,
and other aspects detailed in [Scope][SCOPE].
Adhering to these guidelines ensures a consistent and readable project.

## Introduction

### Purpose

This guide standardizes coding and documentation practices to ensure consistency, enhance readability,
and support effective collaboration.

### Audience

This style guide is intended for:

- **Developers and Contributors:** Those writing code or documentation for the project.
- **Maintainers:** Individuals responsible for reviewing and merging contributions.
- **Reviewers:** Participants in code reviews to ensure adherence to standards.

### Scope

This document covers:

- **Repository Structure:** Directory layout, file naming conventions, and configuration file details.
- **Naming Conventions:** Standards for variables, constants, functions, and file/directory names.
- **Code Formatting and Style:** Guidelines on indentation, line length, brace styles, comments, EditorConfig settings,
  and linting/formatting tools.
- **Commit Message Conventions:** Formatting and structure for commit messages.
- **Branching and Versioning:**Guidelines for managing branches and version numbers.
- **Testing and Quality Assurance:** Methods for testing and ensuring code quality.
- **Documentation:** Standards for creating and maintaining project documentation.
- **Dependency and Build Management:** Guidelines for handling project dependencies and builds.
- **Additional Best Practices:** Other practices to improve overall code quality and project maintainability.

## Project Overview

### Project Goals

This project provides reusable documentation files and an automated deployment script,
streamlining the process of updating and deploying documentation.

### Technology Stack

Building on the development environment from [jekwwer-markdown-workspace][jekwwer-markdown-workspace],
this project primarily uses Markdown.
It employs MkDocs with the Material theme to serve, build, and deploy HTML documentation.
Additional tools include:

- **check:links:** `find . -name '*.md' -not -path './node_modules/*' | xargs markdown-link-check`
- **check:spelling:** `cspell '**/*.md' --gitignore --cache`
- **format:code:** `prettier --write --config .prettierrc .`
- **format:check:** `prettier --check --config .prettierrc .`
- **generate:toc:** `node scripts/generate-toc.js`
- **lint:markdown:** `markdownlint '**/*.md'`
- **docs:serve:** `mkdocs serve`
- **docs:build:** `mkdocs build`
- **docs:deploy:** `mkdocs gh-deploy`
- **release:** `semantic-release`

### Target Audience

This project targets developers and end users who require robust Markdown templates for their repositories.

## Repository Structure

### Directory Layout

```plaintext
/ (root)                                # repository root
├── .devcontainer                       ├── # devcontainer-related configurations
│   └── devcontainer.json               │   └── # devcontainer setup
├── .github                             ├── # GitHub-related configurations
│   ├── ISSUE_TEMPLATE                  │   ├── # issue templates
│   │   └── *                           │   │   └── # all files in the folder
│   ├── PULL_REQUEST_TEMPLATE           │   ├── # pull request templates
│   │   └── *                           │   │   └── # all files in the folder
│   ├── workflows                       │   ├── # GitHub workflows
│   │   ├── deploy.yml                  │   │   ├── # deployment workflow
│   │   └── release.yml                 │   │   └── # release workflow
│   ├── dependabot.yml                  │   ├── # Dependabot configuration
│   ├── FUNDING.yml                     │   ├── # funding configuration
│   └── PULL_REQUEST_TEMPLATE.md        │   ├── # default pull request template
├── docs                                ├── # documentation files
│   └── index.md                        │   └── # main documentation index
├── scripts                             ├── # utility scripts
│   └── generate-toc.js                 │   └── # script to generate TOC
├── templates                           ├── # documentation templates
│   ├── .github                         │   ├── # GitHub templates
│   │   ├── ISSUE_TEMPLATE              │   │   ├── # issue templates
│   │   │   └── *                       │   │   │   └── # all files in the folder
│   │   ├── PULL_REQUEST_TEMPLATE       │   │   ├── # pull request templates
│   │   │   └── *                       │   │   │   └── # all files in the folder
│   │   ├── FUNDING.yml                 │   │   ├── # funding configuration template
│   │   └── PULL_REQUEST_TEMPLATE.md    │   │   └── # default pull request template
│   ├── CODE_OF_CONDUCT.md              │   ├── # code of conduct template
│   ├── config.yml                      │   ├── # template placeholders configuration
│   ├── CONTRIBUTING.md                 │   ├── # contributing guidelines template
│   ├── README.md                       │   ├── # project README template
│   ├── SCHOOL_PROJECT_README.md        │   ├── # school project README template
│   ├── SECURITY.md                     │   ├── # security guidelines template
│   └── STYLEGUIDE.md                   │   └── # style guide template
├── .editorconfig                       ├── # editor configuration
├── .gitignore                          ├── # files to ignore in Git
├── .markdownlintignore                 ├── # markdown lint ignore rules
├── .markdownlint.json                  ├── # markdown linting configuration
├── .pre-commit-config.yaml             ├── # pre-commit hook configuration
├── .prettierrc                         ├── # Prettier configuration
├── .releaserc.js                       ├── # semantic release configuration
├── CHANGELOG.md                        ├── # changelog
├── CODE_OF_CONDUCT.md                  ├── # code of conduct
├── CONTRIBUTING.md                     ├── # contributing guidelines
├── cspell.json                         ├── # spell checking configuration
├── deploy.sh                           ├── # deployment script
├── LICENSE                             ├── # main license (CC BY 4.0)
├── MIT-LICENSE                         ├── # MIT license (from jekwwer/markdown-workspace)
├── mkdocs.yml                          ├── # MkDocs configuration
├── package-lock.json                   ├── # npm lock file
├── package.json                        ├── # npm package configuration
├── README.md                           ├── # project README
├── SECURITY.md                         ├── # security information
└── STYLEGUIDE.md                       └── # style guide
```

### File Naming Conventions

The repository uses naming styles tailored to each file type:

- **Documentation Files:**
  Key files (e.g., `CHANGELOG.md`, `CODE_OF_CONDUCT.md`, `CONTRIBUTING.md`, `README.md`, `SECURITY.md`) are named using
  **SCREAMING_SNAKE_CASE** (uppercase with underscores).

- **Configuration Files:**
  Files that configure tools (e.g., `cspell.json`, `.editorconfig`, `mkdocs.yml`, `package.json`, `package-lock.json`,
  `.pre-commit-config.yaml`, `.prettierrc`, `.releaserc.js`) are consistently named in lowercase.

- **Scripts and Shell Files:**
  Executable scripts (e.g., `deploy.sh` and files in the `scripts` directory like `generate-toc.js`) use lowercase—often
  in **kebab-case**—to enhance readability.

- **GitHub and Workflow Files:**
  Files in the `.github` directory (e.g., `dependabot.yml`, `FUNDING.yml`, and
  templates under `ISSUE_TEMPLATE`/`PULL_REQUEST_TEMPLATE`) follow the naming provided by their respective templates.
  This mix of uppercase (e.g., `BUG_REPORT.md`) and lowercase (e.g., `config.yml`) is maintained for proper GitHub
  integration.

- **Template Files:**
  Files in the `templates` directory mirror the naming conventions of the production files they replace.

### Directory Naming Conventions

- **General Naming:**
  Use lowercase letters. For multi-word names, use kebab-case (e.g., `node-modules`, `source-files`).
  Choose names that clearly indicate the directory's content or purpose (e.g., `docs` for documentation,
  `scripts` for executables, `templates` for reusable templates).

- **Special Directories:**
  Directories prefixed with a dot (e.g., `.github`, `.devcontainer`) indicate special roles and should remain unchanged.

### Configuration Files

Key configuration files in the repository include:

- **.gitignore:** Excludes files and directories from version control.
- **.editorconfig:** Defines coding styles across editors.
- **.markdownlint.json** and **.markdownlintignore:** Establish Markdown linting rules and exclusions.
- **.pre-commit-config.yaml:** Specifies pre-commit hooks.
- **.prettierrc:** Contains formatting rules.
- **.releaserc.js:** Configures the semantic release process and versioning.
- **cspell.json:** Sets spelling rules for consistency.
- **mkdocs.yml:** Configures MkDocs for building and deploying documentation.
- **package.json:** Contains project metadata, scripts, and dependency definitions.
- **package-lock.json:** Locks dependency versions to ensure consistent installations.

### Assets and Resources

For this project:

- **Documentation Assets:** Managed within the `docs` directory.
- **Templates:** Stored in the `templates` folder.

## Naming Conventions

### Variables

- **Shell Scripts:**
  Use **SCREAMING_SNAKE_CASE** (e.g., `MY_VARIABLE`).
- **JavaScript:**
  Use **camelCase** (e.g., `myVariable`).

### Constants

- **Shell Scripts:**
  Although shell scripts lack a native constant mechanism, use **SCREAMING_SNAKE_CASE**
  for values that should remain unchanged (e.g., `DEFAULT_TIMEOUT`).
- **JavaScript:**
  Use **camelCase** (e.g., `defaultTimeout`).

### Functions/Methods

- **General Guideline:**
  Function and method names should be descriptive verbs that indicate their action.
- **Shell Scripts:**
  Use **snake_case** (e.g., `initialize_app`, `build_project`).
- **JavaScript:**
  Use **camelCase** (e.g., `initializeApp`).

### Markdown References

- **Reference-Style Links:**
  Use reference-style links for clarity. For example:

  ```markdown
  [info][link]

  [link]: https://example.com
  ```

- **Local References:**
  For links to repository-related documents (e.g., CONTRIBUTING.md or CODE_OF_CONDUCT.md) or internal sections,
  use **SCREAMING_SNAKE_CASE** for link identifiers and omit the file extension for documents.
  For example:

  ```markdown
  See our [Code of Conduct][CODE_OF_CONDUCT].

  [CODE_OF_CONDUCT]: CODE_OF_CONDUCT.md
  ```

  And for internal sections:

  ```markdown
  See [File Naming Conventions][FILE_NAMING_CONVENTIONS].

  [FILE_NAMING_CONVENTIONS]: #file-naming-conventions
  ```

  **Note:** Local references should always appear at the top and be sorted alphabetically. For example:

  ```markdown
  [FILE_NAMING_CONVENTIONS]: #file-naming-conventions
  [SECURITY]: SECURITY.md
  [external-link]: https://example.com
  ```

- **External Links:**
  For links that reference external resources, use **kebab-case** for link identifiers. For example:

  ```markdown
  [info][external-link]

  [external-link]: https://example.com
  ```

  **Note:** External references should be sorted alphabetically and always appear below local references. For example:

  ```markdown
  [SECURITY]: SECURITY.md
  [external-link]: https://example.com
  ```

### Files

- See [File Naming Conventions][FILE_NAMING_CONVENTIONS].

## Code Formatting and Style

These settings are enforced by the `.editorconfig` and `.prettierrc` configurations.

### Indentation and Spacing

- **General:**
  Use **2 spaces** per indentation level throughout the project. Tabs are not permitted.

### Line Length

- **Code Files:**
  Limit lines to a maximum of **88 characters**.
- **Markdown Files:**
  For Markdown (`*.md`), allow up to **120 characters** per line.

### Braces and Control Structures

- **JavaScript:**
  Follow Prettier’s defaults:
  - Place opening braces on the same line as the control statement.
  - Always use braces for control structures (e.g., `if`, `for`, `while`), even if optional.
- **Shell Scripts:**
  Maintain clarity with consistent spacing and indentation.
  While shell scripting doesn’t have a formal brace style, use indentation to denote control structures
  and code blocks clearly.

### Comments and Documentation

- **Inline Comments:**
  Use concise inline comments on the same line or directly above the code they explain.
- **Block Comments:**
  Reserve block comments for describing larger sections of logic or complex code. For JavaScript,
  consider using JSDoc-style comments for documenting functions.
- **General Guidance:**
  All comments should enhance clarity and avoid redundancy with well-named functions and variables.
  Comments should not exceed the maximum line length.

### EditorConfig

- **Purpose:**
  The `.editorconfig` file ensures consistent coding styles across all editors by specifying:
  - **Indentation:** 2 spaces (no tabs)
  - **Line Endings:** Unix-style (`lf`)
  - **Charset:** UTF-8
  - **Max Line Length:** 88 characters for code (120 for Markdown)
  - **Final Newline:** Enforced
  - **Trailing Whitespace:** Trimmed (with specified exceptions)
- **Note:**
  Contributors should use an editor that supports EditorConfig to automatically apply these settings.

### Linting and Formatting Tools

- **Prettier:**
  Formats code based on the configuration in `.prettierrc`:
  - Enforces semicolons, single quotes, trailing commas, and a print width of 88 characters (except 120 for Markdown).
- **Markdownlint:**
  Applies consistent style rules to Markdown files as configured in `.markdownlint.json` and `.markdownlintignore`.
- **Pre-commit Hooks:**
  The `.pre-commit-config.yaml` is set up to run various checks, including formatting and linting, before commits.

## Commit Message Conventions

Use the following template for commit messages. It aligns with best practices and the Conventional Commits standard,
providing essential details about changes.

### Template Structure

```plaintext
<type>(<scope>): <description>

<detailed description>

[FILES ADDED]
 - <list of newly added files>

[FILES MODIFIED]
 - <list of updated files>

[FILES REMOVED]
 - <list of removed files>

[DEPENDENCIES ADDED]
 - <list of newly added dependencies>

[DEPENDENCIES UPDATED]
 - <list of updated dependencies>

[DEPENDENCIES REMOVED]
 - <list of removed dependencies>

[FEATURES/CHANGES]
 - <list of new features, updates, or changes>

[TECHNIQUES]
 - <details about methods, tools, or approaches used>

[BREAKING CHANGE]
 - <description of breaking changes and user adaptation details>

[PURPOSE]
 - <reason for the change or issue being addressed>

[IMPACT]
 - <impact on the project, users, or performance>

[FIXES/CLOSES/RESOLVES]
 - #<list of related issue numbers>

[REFERENCES]
 - <links to documentation, code reviews, or other resources>
```

### Template Fields

- **`<type>`:** Specifies the type of change. Common types include:
  - `init`: Initial commit.
  - `feat`: A new feature.
  - `fix`: A bug fix.
  - `security`: Security-related changes (e.g., vulnerability fixes, input validation improvements).
  - `deps`: Updates to project dependencies.
  - `docs`: Documentation changes.
  - `style`: Code formatting or styling adjustments that do not affect functionality.
  - `refactor`: Code restructuring without altering functionality.
  - `perf`: Performance improvements.
  - `test`: Adding or updating tests.
  - `chore`: Maintenance tasks such as updating dependencies or build processes.
- **`<scope>`:** _(Optional)_ Specifies the part of the codebase affected.
- **`<description>`:** A concise, imperative summary of the change.
- **`<detailed description>`:** _(Optional)_ A comprehensive explanation of the change.
- **`[FILES ADDED/MODIFIED/REMOVED]`:** Lists the files affected by the commit.
- **`[DEPENDENCIES ADDED/UPDATED/REMOVED]`:** _(if applicable)_ Details any changes to project dependencies.
- **`[FEATURES/CHANGES]`:** Describes new features, updates, or significant changes.
- **`[TECHNIQUES]`:** _(Optional)_ Describes methods, tools, or approaches used.
- **`[BREAKING CHANGE]`:** _(if applicable)_ Specifies any breaking changes and necessary user adaptations.
- **`[PURPOSE]`:** Explains the rationale behind the change.
- **`[IMPACT]`:** Describes the impact on the project, users, or performance.
- **`[FIXES/CLOSES/RESOLVES]`:** _(if applicable)_ References related issues or tasks (e.g., `#123`).
- **`[REFERENCES]`:** _(if applicable)_ Links to documentation, code reviews, or other resources.

### Example Commit Message

```plaintext
feat(auth): add OAuth2 login support

Implemented OAuth2 login functionality, allowing users to authenticate with Google and GitHub.

[FILES ADDED]
 - src/auth/oauth2.js
 - src/auth/oauth2.test.js

[FILES MODIFIED]
 - src/auth/index.js

[DEPENDENCIES ADDED]
 - google-auth-library
 - @octokit/auth

[FEATURES/CHANGES]
 - Added OAuth2 authentication for Google and GitHub.
 - Improved error handling for authentication flows.

[PURPOSE]
 - Enhance security and provide seamless third-party login support.

[IMPACT]
 - Simplifies user authentication and improves overall security.

[FIXES]
 - #123

[REFERENCES]
 - OAuth2 Documentation: https://example.com/oauth2
```

## Branching and Versioning

We use a trunk-based strategy with **Semantic Release** for automated versioning and changelog generation.

### Branching Strategy

Branch names should follow these conventions:

- **Feature branches:** `feature/<short-description>` (e.g., `feature/add-login`)
- **Bugfix branches:** `bugfix/<short-description>` (e.g., `bugfix/fix-auth-error`)
- **Pre-release branches:** Use `next`, `beta`, or `alpha` (optional)
- **Main branch:** `main`

### Versioning Strategy

We follow **Semantic Versioning (SemVer)** in the format **`MAJOR.MINOR.PATCH`**:

- **MAJOR:** For incompatible API changes.
- **MINOR:** For new, backward-compatible features.
- **PATCH:** For backward-compatible bug fixes.

Semantic Release automatically manages versioning based on commit messages.

### Merging Guidelines

- **Rebase (Preferred):**
  Use GitHub’s **Rebase and Merge** option to maintain a clean, linear commit history.
- **Merge (Exceptions):**
  Use the regular merge option for larger branches with multiple contributors
  when preserving individual commits is necessary.
- **Squash:**
  Generally discouraged as it loses individual commit details. If used,
  ensure the pull request title follows the Conventional Commits format.

### Pull Request Guidelines

For detailed pull request guidelines, see [Submitting Pull Requests][SUBMITTING_PULL_REQUESTS] from CONTRIBUTING.md.

## Testing and Quality Assurance

This repository does not include automated tests since its primary deliverables are Markdown document templates.
Quality is maintained through manual reviews and adherence to established style guidelines and linting tools.

## Documentation

### Inline Documentation

- **Shell Scripts:**
  Use clear, concise comments to explain non-obvious logic or commands.
  Place comments above complex code blocks to aid understanding.
- **JavaScript:**
  Use JSDoc-style comments for functions and methods.
  Document parameters, return values, and any exceptions to clarify functionality.

### External Documentation

- **Repository Documentation:**
  The root-level `README.md` provides an overview, installation instructions, usage examples,
  and contribution guidelines.
  Additional repository documents such as `CONTRIBUTING.md`, `STYLEGUIDE.md`, `SECURITY.md`,
  and `LICENSE` are also maintained at the repository root.

- **Additional Docs:**
  Other external documentation is maintained in the `docs/` directory and is deployed via MkDocs to GitHub Pages.

### Documentation Tools and Best Practices

#### Tools

- **MkDocs:**
  External documentation is generated with MkDocs. The configuration is stored in the root-level `mkdocs.yml`,
  and the content is in the `docs/` directory.

#### Versioning Documentation

- Documentation versioning is not implemented yet but will be managed using MkDocs in alignment with project releases.

#### Consistency and Updates

- Update documentation alongside code changes.
- Contributors should update docs when introducing new features or modifying existing functionality.

#### Style and Tone

- Maintain a semi-formal tone appropriate for a tech-oriented audience.
- Use clear, precise language and consistent formatting throughout.

#### Contribution Guidelines

- Documentation contributions follow the same process as code changes—submit pull requests for review
  according to the contribution guidelines.

## Dependency and Build Management

### Dependency Handling

- The project inherits dependency management from the parent **markdown-workspace** repository via `package.json`
  and `package-lock.json`.
- These files may be synced fully or partially with the parent template as needed.
- **Dependabot** is configured to monitor and update dependencies for npm packages, GitHub Actions, and Docker.

### Build Scripts

- There are no build scripts for the templates.
- External documentation build commands are defined in `package.json`:
  - `"docs:serve": "mkdocs serve"`: Serve documentation locally.
  - `"docs:build": "mkdocs build"`: Build the documentation.
  - `"docs:deploy": "mkdocs gh-deploy"`: Deploy documentation (restricted to maintainers).

### Environment Configuration

- The repository does not include any `.env` files.
- Follow best practices for environment configuration if you choose to use them.

## Additional Best Practices

### Security and Privacy

- Avoid exposing sensitive information in logs or error messages.
- Regularly review dependencies for security vulnerabilities.

### Error Handling and Logging

- Implement robust error handling (e.g., use try/catch in JavaScript and proper exit codes in shell scripts).
- Use structured logging to capture context without exposing sensitive data.
- Document error codes and messages for easier troubleshooting.

### Code Organization and Maintenance

- Keep the codebase clean and modular to facilitate understanding and future extensions.
- Regularly review and refactor code to eliminate redundancy.
- Use design patterns where appropriate to improve clarity and reusability.

## Conclusion

### Continuous Improvement

This document is a living resource that should evolve with the project.
As new best practices emerge or project requirements change, please update the guide to keep it relevant and effective.

### Feedback and Updates

Your input is valuable. If you have suggestions for improvements, clarifications, or additional guidelines,
please reach out to the maintainers or submit an [issue][issues]. For contributing guidelines,
refer to [CONTRIBUTING.md][CONTRIBUTING]; for security concerns, see [SECURITY.md][SECURITY];
for discussions, consult the project's [discussion board][discussions]
or contact the project owner at [evgenii.shiliaev@jekwwer.com][evgenii.shiliaev@jekwwer.com].

---

This document is based on a template by [Evgenii Shiliaev][evgenii-shiliaev-github], licensed under [CC BY 4.0][jekwwer-markdown-docs-kit-license].
All additional content is licensed under [MIT][MIT_LICENSE].

[CONTRIBUTING]: CONTRIBUTING.md
[FILE_NAMING_CONVENTIONS]: #file-naming-conventions
[MIT_LICENSE]: MIT-LICENSE
[SCOPE]: #scope
[SECURITY]: SECURITY.md
[SUBMITTING_PULL_REQUESTS]: CONTRIBUTING.md#Submitting-Pull-Requests
[discussions]: https://github.com/Jekwwer/markdown-docs-kit/discussions
[evgenii-shiliaev-github]: https://github.com/Jekwwer
[evgenii.shiliaev@jekwwer.com]: mailto:evgenii.shiliaev@jekwwer.com
[issues]: https://github.com/Jekwwer/markdown-docs-kit/issues
[jekwwer-markdown-docs-kit-license]: https://github.com/Jekwwer/markdown-docs-kit/blob/main/LICENSE
[jekwwer-markdown-workspace]: https://github.com/Jekwwer/markdown-workspace
