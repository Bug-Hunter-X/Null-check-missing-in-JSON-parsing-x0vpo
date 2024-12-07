# Dart JSON Parsing: Handling Null Values

This repository demonstrates a common error in Dart when parsing JSON responses: failing to check for null values before accessing nested fields.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version that handles potential nulls gracefully.

**Problem:**
The original code directly accesses a nested field (`jsonResponse['data']['nestedField']`) without checking if either `jsonResponse['data']` or `nestedField` itself is null. This will throw an exception if either is null.

**Solution:**
The solution uses null-aware operators (`?.`) and null checks to safely access nested fields. This prevents exceptions and allows the code to handle the case where the nested field might be missing.