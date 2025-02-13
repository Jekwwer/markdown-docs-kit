<!-- Template by Evgenii Shiliaev - Licensed under CC BY 4.0 -->

# Contributing Guidelines

Thank you for considering contributing to **{{REPO_OWNER}}/{{REPO_NAME}}**!
Contributions help me improve and maintain the quality of this project.
Whether you're fixing a bug, proposing new features, or improving documentation, your efforts are greatly appreciated.

## Getting Started

1. **Fork the Repository**:

   - Click the "Fork" button on the top-right corner of the repository page to create your copy.

2. **Clone Your Fork**:

   ```bash
   git clone https://github.com/<YOUR_USERNAME>/{{REPO_NAME}}.git
   cd {{REPO_NAME}}
   ```

3. **Set Up Upstream Remote**:
   To keep your fork up-to-date with the original repository:

   ```bash
   git remote add upstream https://github.com/{{REPO_OWNER}}/{{REPO_NAME}}.git
   ```

4. **Install Dependencies** (if applicable):
   Follow the setup instructions in the [`README.md`][README].

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

## Testing and Quality Assurance

_[ADD_TEXT: Provide an overview of the testing and quality assurance approach for this project.]_
Explain why testing is important for maintaining quality.

## Proposing Changes

1. **Check for Existing Issues**:
   Before opening a new issue or pull request, see if it’s already discussed in
   [Issues][issues] or
   [Discussions][discussions].

2. **Create a Branch**:

   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make and Test Changes**:
   Keep changes consistent with our [`STYLEGUIDE.md`][STYLEGUIDE].

4. **Commit**:

   ```bash
   git add .
   git commit
   ```

5. **Push Your Branch**:

   ```bash
   git push origin feature/your-feature-name
   ```

6. **Open a Pull Request**:
   - Go to the original repository.
   - Click “Compare & pull request.”
   - Fill out the PR template, referencing relevant issues or discussions.

## Code of Conduct

By contributing, you agree to adhere to the [Code of Conduct][CODE_OF_CONDUCT].
Please read it to understand the expectations for behavior.

## Thank You

Your contributions make **{{REPO_OWNER}}/{{REPO_NAME}}** better.
I value your time and effort—thank you for contributing!

---

This document is based on a template by [Evgenii Shiliaev][evgenii-shiliaev-github], licensed under [CC BY 4.0][jekwwer-markdown-docs-kit-license].
All additional content is licensed under [LICENSE][LICENSE].

---

© Evgenii Shiliaev | Licensed under [CC BY 4.0][jekwwer-markdown-docs-kit-license]

[CODE_OF_CONDUCT]: CODE_OF_CONDUCT.md
[LICENSE]: LICENSE
[README]: README.md
[STYLEGUIDE]: STYLEGUIDE.md
[discussions]: {{DISCUSSIONS_URL}}
[evgenii-shiliaev-github]: https://github.com/Jekwwer
[issues]: {{ISSUES_URL}}
[jekwwer-markdown-docs-kit-license]: https://github.com/Jekwwer/markdown-docs-kit/blob/main/LICENSE
