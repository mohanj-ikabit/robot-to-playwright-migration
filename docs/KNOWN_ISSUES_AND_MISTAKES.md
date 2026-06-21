# Known Issues

## Issue 1

Strict Mode Violations

Reason:
Multiple elements matched same locator.

Fix:
Use exact locator strategy.

Avoid:
Always use unique locator.

---

## Issue 2

Missing loginData.json

Reason:
File path incorrect.

Fix:
Move file to test-data folder.

Avoid:
Keep all data inside test-data.

---

## Issue 3

Navigation Redirects

Reason:
Application redirects after login.

Fix:
Wait for correct URL.

Avoid:
Validate URL before proceeding.

---

## Issue 4

Missing Upload Files

Reason:
Image/PDF not available.

Fix:
Store inside test-data/uploads.

Avoid:
Never hardcode local paths.

---

## Issue 5

Dynamic Elements

Reason:
Elements loaded asynchronously.

Fix:
Use Playwright auto waits.

Avoid:
Never use waitForTimeout.