# Rick and Morty API App

This is a Flutter application that consumes the public Rick and Morty REST API and displays character information in a clean, responsive interface.

## Overview

The project demonstrates core Flutter development practices, including REST API integration, JSON parsing, asynchronous data loading, reusable UI components, and responsive layout construction. It is built around fetching character data from the public Rick and Morty API and presenting that data in a card-based grid.

## Features

- Fetch Rick and Morty characters from the public REST API
- Display characters in a grid
- Character images
- Character names
- Species
- Status indicators
- Loading state
- Error handling
- Dark-themed interface

## Technology Stack

- Flutter
- Dart
- `http` package
- Material Design
- Rick and Morty API

## Project Structure

The application is organized into a small set of primary files and folders:

- `lib/main.dart` — application entry point and root widget
- `lib/screens/characters_page.dart` — main screen that fetches data and renders the UI
- `lib/services/api_service.dart` — API request logic for fetching character data
- `lib/models/character_model.dart` — model used to represent character data from the API
- `lib/widgets/character_card.dart` — reusable card widget for each character entry
- `test/widget_test.dart` — widget test covering the loading state

## API Integration

The application sends a GET request to:

`https://rickandmortyapi.com/api/character`

The JSON `results` collection is converted into `Character` model objects, and those objects are then displayed by the UI.

## Getting Started

Prerequisites:

- Flutter SDK installed
- A device or emulator available for running the app

```bash
git clone https://github.com/s16aj/rick-morty-api-app.git
cd rick-morty-api-app
flutter pub get
flutter run
```

## Testing and Code Quality

```bash
flutter test
flutter analyze
```

The repository currently passes its widget test and Flutter analyzer checks.

## Project Purpose

This project demonstrates practical Flutter development and REST API consumption in a compact, portfolio-ready application focused on fetching and displaying character data from a public API.
