# Resource Dependencies

Every Robot test file may depend on reusable keywords
defined in Resource folder.

Before converting any test:

1. Read the test file.
2. Identify all custom keywords used.
3. Search Resource folder for keyword definitions.
4. Convert keyword into reusable Playwright method.
5. Create Page Object methods.
6. Reuse methods across tests.

Do not convert test cases without first converting
dependent keywords.