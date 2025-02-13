<!-- Template by Evgenii Shiliaev - Licensed under CC BY 4.0 -->

# Security Policy

This document outlines the security policy for the **{{REPO_OWNER}}/{{REPO_NAME}}** repository
and provides instructions for reporting vulnerabilities.

## Supported Versions

I actively maintain and provide security updates for the following versions:

| Version                                        | Supported                         |
| ---------------------------------------------- | --------------------------------- |
| [`{{LATEST_VERSION}}`][{{LATEST_VERSION}}]     | ✅ Actively supported             |
| [`{{PREVIOUS_VERSION}}`][{{PREVIOUS_VERSION}}] | ✅ Supported with limited updates |
| Older versions                                 | ❌ Not supported                  |

If your project is using an unsupported version, I recommend upgrading to the latest version
to benefit from security updates and fixes.

For non-software repositories (e.g., documentation or templates), version-specific risks are not applicable.
However, any discovered vulnerabilities should still be reported promptly.

## Reporting a Vulnerability

If you discover a security vulnerability in this repository:

1. **Private Disclosure via Email**
   Please send an email to [{{REPORT_EMAIL}}][{{REPORT_EMAIL}}] with the following details:

   - A detailed description of the vulnerability.
   - Steps to reproduce the issue.
   - Affected versions (if applicable).
   - Any suggested fixes or workarounds.

2. **Private Security Advisory on GitHub**
   Alternatively, you can submit a report via GitHub Security Advisories:
   - Navigate to the repository's [Security Advisories][security-advisories].
   - Click **Create security advisory** and follow the instructions.

I aim to respond to vulnerability reports within **{{RESPONSE_TIME}} hours**
and provide a resolution or update within **{{RESOLUTION_TIME}} days**.

## For Further Inquiries

For any additional questions or concerns about this security policy,
please feel free to contact me at [{{CONTACT_EMAIL}}][{{CONTACT_EMAIL}}].

---

This document is based on a template by [Evgenii Shiliaev][evgenii-shiliaev-github],
licensed under [CC BY 4.0][jekwwer-markdown-docs-kit-license]. All additional content is licensed under [LICENSE][LICENSE].

---

© Evgenii Shiliaev | Licensed under [CC BY 4.0][jekwwer-markdown-docs-kit-license]

[LICENSE]: LICENSE
[evgenii-shiliaev-github]: https://github.com/Jekwwer
[jekwwer-markdown-docs-kit-license]: https://github.com/Jekwwer/markdown-docs-kit/blob/main/LICENSE
[security-advisories]: {{SECURITY_URL}}
[{{CONTACT_EMAIL}}]: mailto:{{CONTACT_EMAIL}}
[{{LATEST_VERSION}}]: https://github.com/{{REPO_OWNER}}/{{REPO_NAME}}/tree/{{LATEST_VERSION}}
[{{PREVIOUS_VERSION}}]: https://github.com/{{REPO_OWNER}}/{{REPO_NAME}}/tree/{{PREVIOUS_VERSION}}
[{{REPORT_EMAIL}}]: mailto:{{REPORT_EMAIL}}
