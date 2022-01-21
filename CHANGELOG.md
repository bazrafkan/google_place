# CHANGELOG

## [0.4.7] - 2022-01-22

- Reformatting code

## [0.4.6] - 2022-01-21

- Fix bug for Locationbias object

## [0.4.5] - 2022-01-21

- Reformatting code

## [0.4.4] - 2022-01-21

- Added support for more proxy URI's, 
- Added tests & manually tested with http://cors-anywhere.herokuapp.com
- GooglePlace::proxyUrl can now be formatted as [https:// || http://]host[:<port>][/<path>][?<url-param-name>=]
- Update README file

## [0.4.3] - 2021-07-25

- Add get json output

## [0.4.2] - 2021-07-22

- Fix for standard dart VM and remove dart:ui lib
- Add web implementation
- Update README file

## [0.4.1] - 2021-07-21

- Fix bug for radius parameter in search
- Add ability to pass custom headers in requests
- Add region parameter in autocomplete
- Update dependency
- Update README file

## [0.4.0] - 2021-03-11

- Add null-safety

## [0.3.3] - 2020-08-23

- Add some commands
- Code refactor
- Update dependency

## [0.3.2] - 2020-06-30

- Fix bug for location parameter in autocomplete and query autocomplete
- Update dependency

## [0.3.1] - 2020-05-08

- Update pubspec file in example
- Update README file in example

## [0.3.0] - 2020-04-08

- Fix bug for place photos parameters
- Update description for methods
- Update CONTRIBUTING and README files

## [0.2.7] - 2020-04-07

- Update pubspec file

## [0.2.6] - 2020-04-05

- Update README file

## [0.2.5] - 2020-04-05

- Fix bug for double variables

## [0.2.4] - 2020-04-05

- Fix bug for component item in models and autocomplete
- Add bounds item in models and geometry

## [0.2.3] - 2020-04-04

- Update pubspec file

## [0.2.2] - 2020-04-03

- Fix bug when http not respond

## [0.2.1] - 2020-04-03

- Add Details page in example

## [0.2.0] - 2020-04-03

- Change structure code

## [0.1.0] - 2020-04-03

- Add example project and fix bug

## [0.0.2] - 2020-04-03

- Fix warning in pubspec file

## [0.0.1] - 2020-04-02

- The initial release supports all google place api requests
  - Place Search returns a list of places based on a user's location or search string.
  - Place Details returns more detailed information about a specific place, including user reviews.
  - Place Photos provides access to the millions of place-related photos stored in Google's Place database.
  - Place Autocomplete automatically fills in the name and/or address of a place as users type.
  - Query Autocomplete provides a query prediction service for text-based geographic searches, returning suggested queries as users type.
