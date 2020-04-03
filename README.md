# google_place

A Flutter plugin that provides a [Google Place API](https://developers.google.com/places/web-service/intro).

## Preview

The Places API is a service that returns information about places using HTTP requests. Places are defined within this API as establishments, geographic locations, or prominent points of interest.

The following place requests are available:

1. [Place Search](https://developers.google.com/places/web-service/search) returns a list of places based on a user's location or search string.
2. [Place Details](https://developers.google.com/places/web-service/details) returns more detailed information about a specific place, including user reviews.
3. [Place Photos](https://developers.google.com/places/web-service/photos) provides access to the millions of place-related photos stored in Google's Place database.
4. [Place Autocomplete](https://developers.google.com/places/web-service/autocomplete) automatically fills in the name and/or address of a place as users type.
5. [Query Autocomplete](https://developers.google.com/places/web-service/query) provides a query prediction service for text-based geographic searches, returning suggested queries as users type.

## Usage

To use this plugin, add **_google_place_** as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages).

## Getting Started

- Get an API key at [https://cloud.google.com/maps-platform/](https://cloud.google.com/maps-platform/).
  - Go to Google Developers Console.
  - Choose the project that you want to enable Google Place on.

## Sample Usage

```dart
var googlePlace = GooglePlace("Your-Key");
var risult = await googlePlace.autocomplete.get("1600 Amphitheatre");
```
