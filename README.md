# Welcome Tours


## Minimum requirements for running project
    Flutter version 3.24.x (maybe lower versions)
    Android Studio Java version 11
    Android Gradle Plugin 7.3.1

## Running project
In Terminal
> flutter pub get 

then
> flutter run

## Usage of packages
- get_it: dependency injection (DI)
- bloc + freezed: state management
- freezed, json_serializable: code generation
- cached_network_image: image caching
- dio: network requests (Rest API)

## File structure
Clean architecture
- assets: fonts, images
- application->data: local and remote configs such as -> Response handling, di, repository implementations
- application->domain: enums, models for converting JSON data into Dart Objects
- application->presentation: everything that user sees: ui components, screens
- application->presentation->bloc: state management for passing data between screens and changing their states synchronously
- core->ui_kit: texts styles, colors, simple widgets that are used regularly
- core->utils: functions for fast coding, also we can add some plugin implementations such as notifications, metrics, platform based plugins
- main.dart: where dart code starts running and initializing everything
