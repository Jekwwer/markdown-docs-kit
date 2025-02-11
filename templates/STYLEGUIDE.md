<!-- Template by Evgenii Shiliaev - Licensed under CC BY 4.0 -->

# Style Guide

This document outlines the style guide for **{{REPO_OWNER}}/{{REPO_NAME}}**.
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
- _[Optional: Additional audience members, e.g., project managers or QA specialists.]_

### Scope

This document covers:

- **Repository Structure:** Directory layout, file naming conventions, and configuration file details.
- **Naming Conventions:** Standards for variables, constants, functions, and file/directory names.
- **Code Formatting and Style:** Guidelines on indentation, line length, brace styles, comments, EditorConfig settings,
  and linting/formatting tools.
- **Commit Message Conventions:** Formatting and structure for commit messages.
- **Branching and Versioning:** Guidelines for managing branches and version numbers.
- **Testing and Quality Assurance:** Methods for testing and ensuring code quality.
- **Documentation:** Standards for creating and maintaining project documentation.
- **Dependency and Build Management:** Guidelines for handling project dependencies and builds.
- **Additional Best Practices:** Other practices to improve overall code quality and project maintainability.
- _[Optional: Add or remove sections as needed.]_

## Project Overview

### Project Goals

_[ADD PROJECT GOALS: Provide a brief description of the main objectives of the project.]_
For example, "This project aims to..."

### Technology Stack

_[ADD TECHNOLOGY STACK: List the primary technologies, frameworks, and tools used.]_
For example, "Built using [Technology A], [Technology B], and [Tool C]."

### Target Audience

_[ADD TARGET AUDIENCE: Describe who will benefit from this project.]_
For example, "This project targets developers, end users, and/or specific stakeholders."

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
├── LICENSE                             ├── # main license (e.g., MIT)
├── mkdocs.yml                          ├── # MkDocs configuration
├── package-lock.json                   ├── # npm lock file
├── package.json                        ├── # npm package configuration
├── README.md                           ├── # project README
├── SECURITY.md                         ├── # security information
├── STYLEGUIDE.md                       └── # style guide
└── [ADD_OR_REMOVE: Additional directories or files as needed]
```

### File Naming Conventions

_[ADD_TEXT: Provide an overview of the file naming conventions used in the repository.]_
For example, specify if documentation files use SCREAMING_SNAKE_CASE, configuration files are in lowercase,
and scripts use kebab-case.

### Directory Naming Conventions

_[ADD_TEXT: Describe the conventions for naming directories.]_
For example, specify that directory names should be in lowercase, use kebab-case for multi-word names,
and clearly indicate their purpose (e.g., `docs` for documentation, `scripts` for executables).

### Configuration Files

_[ADD_TEXT: List and describe the key configuration files in the repository.]_
For example, .gitignore, .editorconfig, mkdocs.yml, package.json and explain their purpose.

### Assets and Resources

_[ADD_TEXT: Explain how static assets and resources (e.g., images, fonts) are organized in the repository.]_
For example, mention that assets should be stored in dedicated directories such as `/assets` or `/resources`
and any specific conventions to follow.

## Naming Conventions

### Variables

_[ADD_TEXT: Provide guidelines for variable naming, including any language-specific conventions.]_
For example, SCREAMING_SNAKE_CASE for shell scripts, camelCase for JavaScript.

### Constants

_[ADD_TEXT: Provide guidelines for constant naming, including examples and language-specific conventions.]_
For example, SCREAMING_SNAKE_CASE for shell scripts, camelCase for JavaScript.

### Functions/Methods

_[ADD_TEXT: Provide guidelines for naming functions and methods.]_
Specify that names should be descriptive verbs and note the preferred styles
(e.g., snake_case for shell scripts, camelCase for JavaScript).

### Classes/Types

_[ADD_OR_REMOVE: If using classes or types in your project.]_
Provide naming conventions here (e.g., PascalCase for class names). If not applicable, remove this section.

### Files

_[ADD_TEXT: Include any additional file naming conventions that apply to your project.]_

- See [File Naming Conventions][FILE_NAMING_CONVENTIONS].

## Code Formatting and Style

_[ADD_TEXT: Provide an overview of the project's code formatting and style guidelines.]_
For example, include any configuration files and enforcement tools.

### Indentation and Spacing

_[ADD_TEXT: Specify the indentation style and any spacing rules that must be followed in the code.]_

### Line Length

_[ADD_TEXT: Define the maximum line length for code files and note any exceptions for different file types.]_

### Braces and Control Structures

_[ADD_TEXT: Describe the guidelines for placing braces and structuring control statements.]_
For example, for JavaScript, placing opening braces on the same line as the control statement
and always using braces even for single-line statements.

### Comments and Documentation

_[ADD_TEXT: Outline best practices for commenting and documenting code.]_
Include inline comments, block comments and the use of documentation tools (e.g., JSDoc for JavaScript functions).

### EditorConfig

_[ADD_TEXT: Explain how EditorConfig is used to enforce consistent coding styles across editors.]_
Highlight key settings defined in the `.editorconfig` file.

### Linting and Formatting Tools

_[ADD_TEXT: List and describe the linting and formatting tools used in the project]_
For example, Prettier, ESLint, Markdownlint.
Include configuration details and integration into the development workflow (such as pre-commit hooks).

## Commit Message Conventions

_[ADD_TEXT: Provide an overview of the commit message conventions for this project.]_
For example, mention whether you follow Conventional Commits or a custom format.

### Template Structure

_[ADD_TEXT: Describe the commit message template structure.]_
For example, outline that a commit message should have a header in the format `<type>(<scope>): <description>`,
followed by an optional detailed description and additional sections such as `[FILES ADDED]`, `[DEPENDENCIES ADDED]`,
etc.

### Template Fields

_[ADD_TEXT: Explain each field in the commit message template.]_
For example, define what `<type>` should represent (e.g., `feat`, `fix`, `chore`),
what `<scope>` should refer to, and what to include in the detailed description and optional sections.

### Example Commit Message

_[ADD_TEXT: Provide an example commit message to illustrate the proper format.]_
Include sample values for type, scope, description, and any optional sections.

## Branching and Versioning

_[ADD_TEXT: Provide an overview of the branching and versioning strategy for this project.]_

### Branching Strategy

_[ADD_TEXT: Describe the branching strategy used by the project.]_
Include information on branch naming conventions
(e.g., `main`, `feature/<short-description>`, `bugfix/<short-description>`, etc.) and guidelines for creating
and merging branches.

### Versioning Strategy

_[ADD_TEXT: Explain the versioning strategy (e.g., Semantic Versioning: `MAJOR.MINOR.PATCH`).]_
Describe how versioning is determined—whether manually or automatically (e.g., via Semantic Release).

### Merging Guidelines

_[ADD_TEXT: Provide guidelines on merging strategies.]_
For example, explain the preferred method (e.g., rebase and merge) and any exceptions
(e.g., when to use merge commits or squash merging).

### Pull Request Guidelines

_[ADD_TEXT: Describe the pull request process.]_
Include instructions on how to create, review, and merge pull requests,
and reference any related contribution guidelines or documents (e.g., link to CONTRIBUTING.md).

## Testing and Quality Assurance

_[ADD_TEXT: Provide an overview of the testing and quality assurance approach for this project.]_
Explain why testing is important for maintaining quality.

### Automated Testing

_[ADD_TEXT: Describe the automated testing strategy.]_
Include details on which frameworks or tools are used (e.g., Jest, Mocha, etc.),
where tests are located, and how to run them.

### Manual Testing

_[ADD_TEXT: Outline any manual testing procedures.]_
Describe guidelines for exploratory testing, user acceptance testing, or any other manual processes if applicable.

### Quality Assurance Processes

_[ADD_TEXT: Detail the quality assurance practices in place.]_
This may include code reviews, continuous integration, static analysis, and other QA measures.

### Test Coverage and Reporting

_[ADD_TEXT: Explain the expectations for test coverage.]_
Mention tools used for tracking coverage (e.g., Istanbul, Codecov)
and describe how test reports are generated and reviewed.

### Additional Testing and QA Guidelines

_[ADD_TEXT: Provide any additional guidelines related to testing and quality assurance.]_
This might include performance testing, environment setup for tests, or any best practices specific to your project.

## Documentation

### Inline Documentation

_[ADD_TEXT: Provide guidelines for inline documentation.]_
For example, specify how to comment code in shell scripts and JavaScript
(e.g., "Use clear comments above complex code blocks, and for JavaScript, utilize JSDoc-style comments for functions").

### External Documentation

_[ADD_TEXT: Describe where external documentation should reside.]_
For example, in the root README, CONTRIBUTING.md, and other repository documents,
as well as additional documentation in the `docs/` directory.

### Documentation Tools and Best Practices

#### Tools

_[ADD_TEXT: List and describe any documentation tools or generators used in the project.]_
For example, MkDocs, JSDoc, or Sphinx, along with configuration details or usage guidelines.

#### Versioning Documentation

_[ADD_TEXT: Explain how documentation versions are managed, if applicable.]_
For example, versioning documentation alongside code releases or using a specific tool to handle versioned docs.

#### Consistency and Updates

_[ADD_TEXT: Provide best practices for keeping documentation up to date]_
For example, reviewing documentation during code reviews and synchronizing updates with code changes.

#### Style and Tone

_[ADD_TEXT: Define the preferred writing style and tone for documentation]_
For example, semi-formal, technical, concise, with consistent formatting standards.

#### Contribution Guidelines

_[ADD_TEXT: Outline the process for contributing to documentation.]_
Describe how to submit changes, reference CONTRIBUTING.md, and detail any review procedures for documentation updates.

## Dependency and Build Management

### Dependency Handling

_[ADD_TEXT: Provide an overview of how dependencies are managed in the project.]_
For example, mention if dependencies are listed in package.json, yarn.lock, or another file,
and describe any processes or tools (e.g., Dependabot) used for dependency updates.

### Build Scripts

_[ADD_TEXT: Describe the build scripts or commands used in the project.]_
For example, explain how to build, test, and deploy the project (e.g., using npm scripts, mkdocs commands, etc.).

### Environment Configuration

_[ADD_TEXT: Explain how environment configurations are managed.]_
For example, specify if `.env` files are used, detail any configuration management tools,
or note if environment configuration is minimal or not applicable.

## Additional Best Practices

### Security and Privacy

_[ADD_TEXT: Provide guidelines on security and privacy best practices.]_
For example, include recommendations for secure coding practices, input validation, handling sensitive data,
and ensuring secure communication (e.g., using HTTPS).

### Error Handling and Logging

_[ADD_TEXT: Outline best practices for error handling and logging.]_
For example, explain how to implement robust error handling using try/catch blocks (in JavaScript),
proper exit codes (in shell scripts), and the use of structured logging to capture context
while avoiding exposure of sensitive information.

### Code Organization and Maintenance

_[ADD_TEXT: Describe best practices for organizing code and ensuring maintainability.]_
For example, discuss modular design, regular code refactoring, adherence to design patterns,
and keeping the codebase clean and well-documented.

## Conclusion

### Continuous Improvement

This document is a living resource that should evolve with the project.
As new best practices emerge or project requirements change, please update the guide to keep it relevant and effective.

### Feedback and Updates

Your input is valuable. If you have suggestions for improvements, clarifications, or additional guidelines,
please reach out to the maintainers or submit an [issue][issues]. For contributing guidelines,
refer to [CONTRIBUTING.md][CONTRIBUTING]; for security concerns, see [SECURITY.md][SECURITY];
for discussions, consult the project's [discussion board][discussions]
or contact the project owner at [{{CONTACT_EMAIL}}][{{CONTACT_EMAIL}}].

---

This document is based on a template by [Evgenii Shiliaev][evgenii-shiliaev-github],
licensed under [CC BY 4.0][jekwwer-markdown-docs-kit-license]. All additional content is licensed under [LICENSE][LICENSE].

---

© Evgenii Shiliaev | Licensed under [CC BY 4.0][jekwwer-markdown-docs-kit-license]

[CONTRIBUTING]: CONTRIBUTING.md
[FILE_NAMING_CONVENTIONS]: #file-naming-conventions
[LICENSE]: LICENSE
[SCOPE]: #scope
[SECURITY]: SECURITY.md
[discussions]: {{DISCUSSIONS_URL}}
[evgenii-shiliaev-github]: https://github.com/Jekwwer
[{{CONTACT_EMAIL}}]: mailto:{{CONTACT_EMAIL}}
[issues]: {{ISSUES_URL}}
[jekwwer-markdown-docs-kit-license]: https://github.com/Jekwwer/markdown-docs-kit/blob/main/LICENSE
