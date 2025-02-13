# Markdown Docs Kit

![GitHub Release](https://img.shields.io/github/v/release/Jekwwer/markdown-docs-kit?logo=github&link=https%3A%2F%2Fgithub.com%2FJekwwer%2Fmarkdown-docs-kit%2Freleases%2Flatest)
![GitHub Release Date](https://img.shields.io/github/release-date/Jekwwer/markdown-docs-kit?link=https%3A%2F%2Fgithub.com%2FJekwwer%2Fmarkdown-docs-kit%2Freleases%2Flatest)
![GitHub commits since latest release](https://img.shields.io/github/commits-since/Jekwwer/markdown-docs-kit/latest?link=https%3A%2F%2Fgithub.com%2FJekwwer%2Fmarkdown-docs-kit%2Freleases%2Flatest)
![Libraries.io dependency status for GitHub repo](https://img.shields.io/librariesio/github/Jekwwer/markdown-docs-kit?logo=librariesdotio&logoColor=%23FFFFFF)
![Issues](https://img.shields.io/github/issues/Jekwwer/markdown-docs-kit?logo=github&link=https%3A%2F%2Fgithub.com%2FJekwwer%2Fmarkdown-docs-kit%2Fissues)
![Maintained](https://img.shields.io/maintenance/yes/2025)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-blue.svg)

## Project Overview 🚀

This repository contains common documentation files that can be reused across multiple projects
to maintain consistency and streamline the setup process.

### Current Contents

- `.github/FUNDING.yml`: Information on funding options and sponsorship links.
- `.github/PULL_REQUEST_TEMPLATE.md`: Default pull request template for general contributions.
- `.github/PULL_REQUEST_TEMPLATE/*`: Templates for specific pull requests, such as `bugfix`, `docs`, and `feature`.
- `.github/ISSUE_TEMPLATE/*`: Templates for reporting bugs, requesting features, and asking questions.
- `CODE_OF_CONDUCT.md`: Standards for behavior within the community.
- `CONTRIBUTING.md`: Guidelines on how to contribute to the project.
- `README.md`: A general template for project README, outlining setup instructions, usage,
  and contribution guidelines.
- `SCHOOL_PROJECT_README.md`: A specialized README template for educational or school-related projects.
- `SECURITY.md`: Guidelines for securely reporting vulnerabilities and related contact details.
- `STYLEGUIDE.md`: Coding and documentation conventions for consistency and maintainability.

## License 🛡️

This repository is licensed under **Creative Commons Attribution 4.0 (CC BY 4.0)**
for the Markdown templates located in the [`templates`][TEMPLATES_DIR] directory.
You **must** provide attribution when using them (see [`LICENSE`][LICENSE]).

The development environment (scripts, configuration, and tooling) is based on
[markdown-workspace][jekwwer-markdown-workspace] and is licensed under **MIT** (see [`MIT-LICENSE`][MIT_LICENSE]).

## Prerequisites ⚙️

Make sure the following tools are installed on your system:

- `curl`
- `unzip`
- [`jq`][jq-web]
- [`yq`][yq-git]

## Usage 🛠️

### Run the Deployment Script

Execute the `deploy.sh` script to download the latest documentation and apply configurations:

```bash
bash deploy.sh --target <target_directory> [--config <path_to_config.yml>]
```

**Options:**

- `--target <target_directory>`: Specifies where the documentation will be deployed.
- `--config <path_to_config.yml>` _(optional)_: Path to a custom configuration file.
  Defaults to `config.yml` in the current directory.
- Additionally, you can override repository details using `--repo-owner` and `--repo-name` if necessary.

### Manual Setup (Optional)

If you prefer, manually clone the repository and copy the required documentation files:

```bash
git clone https://github.com/Jekwwer/markdown-docs-kit.git
```

Then customize the necessary files for your project.

### Example Deployment

To deploy documentation to a new repository:

```bash
bash deploy.sh --target ../my-new-repo
```

This will:

- Fetch the latest release.
- Replace placeholders using `config.yml`.
- Deploy files to `../my-new-repo`, maintaining the folder structure.

## Potential Future Documents 📜

This table serves as a reference for adding new documents to meet future project requirements as they arise.

| **Document Name**      | **Purpose**                                                                             |
| ---------------------- | --------------------------------------------------------------------------------------- |
| **ACKNOWLEDGMENTS.md** | Recognizes contributions from libraries, frameworks, or individuals.                    |
| **ARCHITECTURE.md**    | Offers an overview of the project’s structure and design decisions.                     |
| **BUILD.md**           | Instructions for building the project, including dependencies and troubleshooting.      |
| **CONFIG.md**          | Documents configuration options, environment variables, and setup instructions.         |
| **CONTRIBUTING.md**    | Guidelines for contributing to the project: coding standards, PRs, and issue reports.   |
| **CONVENTIONS.md**     | Describes naming patterns, coding standards, or folder structures for consistency.      |
| **DEPENDENCIES.md**    | Lists key dependencies and their versions for compatibility insights.                   |
| **FAQ.md**             | Answers frequently asked questions to save time and clarify common concerns.            |
| **GLOSSARY.md**        | Defines domain-specific terms and abbreviations for clarity.                            |
| **GOVERNANCE.md**      | Outlines roles, responsibilities, and decision-making processes for maintainers.        |
| **INSTALL.md**         | Detailed installation instructions for projects with complex setup requirements.        |
| **MIGRATION_GUIDE.md** | Helps users upgrade between major versions by detailing changes and migration steps.    |
| **ROADMAP.md**         | Provides insights into the project’s future direction and priorities.                   |
| **RELEASE.md**         | Instructions for managing and packaging project releases.                               |
| **SUPPORT.md**         | Provides resources for getting help, including forums, FAQs, or troubleshooting guides. |
| **TESTING.md**         | Explains testing frameworks, setup, and commands for running tests.                     |
| **TODO.md**            | Lists future plans, pending features, or unresolved issues for transparency.            |
| **USAGE.md**           | Advanced usage examples, command-line options, or API details.                          |

## Contributing 👥

Contributions are welcome! Please read the [Contributing Guidelines][CONTRIBUTING] and check the [Issues][issues] page.

## Contact 📬

For questions, reach out via [evgenii.shiliaev@jekwwer.com][evgenii.shiliaev@jekwwer.com] or open an [issue][issues].

---

### Notes

This repository is synchronized with the [Markdown Workspace][jekwwer-markdown-workspace],
currently at version [v1.6.0][jekwwer-markdown-workspace-v1.6.0].
The repository serves as a development foundation for working on markdown documentation effectively.

---

This document is based on a template by [Evgenii Shiliaev][evgenii-shiliaev-github], licensed under [CC BY 4.0][jekwwer-markdown-docs-kit-license].
All additional content is licensed under [MIT][MIT_LICENSE].

[CONTRIBUTING]: CONTRIBUTING.md
[LICENSE]: LICENSE
[MIT_LICENSE]: MIT-LICENSE
[TEMPLATES_DIR]: templates/
[evgenii-shiliaev-github]: https://github.com/Jekwwer
[evgenii.shiliaev@jekwwer.com]: mailto:evgenii.shiliaev@jekwwer.com
[issues]: https://github.com/Jekwwer/markdown-docs-kit/issues
[jekwwer-markdown-docs-kit-license]: https://github.com/Jekwwer/markdown-docs-kit/blob/main/LICENSE
[jekwwer-markdown-workspace]: https://github.com/Jekwwer/markdown-workspace
[jekwwer-markdown-workspace-v1.6.0]: https://github.com/Jekwwer/markdown-workspace/tree/v1.6.0
[jq-web]: https://stedolan.github.io/jq
[yq-git]: https://github.com/mikefarah/yq
