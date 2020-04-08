# Contributing to the google_place package

Thank you for your interest in contributing to the **_google_place_** package! I love receiving contributions, and your work helps quality of this package. This doc will walk you through the easiest way to make a change and have it submitted to the **_google_place_** package.

## Developer workflow

The easiest workflow for adding a feature/fixing a bug is to test it out on the example app in this repo.

### Environment

1. Fork the **_google_place_** repo on github.
2. Clone your fork of the **_google_place_** repo.
3. Build and run the example app in example/lib/main.dart (from the example/ directory, use \$ flutter run).

### Development

1. Make the changes to your local copy of the **_google_place_** package, testing the changes in the example app.
2. Write a unit test for your change, if possible, in one of the files in test/.
3. Update the CHANGELOG.md with a new version number, and a description of the change you're making.
4. Update the version: in the pubspec.yaml file to your new version.

### Review

1. Make sure all the existing tests are passing by using the following command (from the root of the project): \$ flutter test test/.
2. Make sure the repo is formatted using \$ flutter format ..
3. Create a PR to merge the branch on your fork into **_google_place/master_**.
4. Add bazrafkan as reviewers on the PR. I will take a look and add any comments. When the PR is ready to be merged, I will merge it and update the package on pub.dev!
