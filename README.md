# play-with-dartlang
Dart based Counter App example.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

### How to setup

#### Setup dart

```bash
# Install dart-lang
brew tap dart-lang/dart
brew install dart

# Install stagehand(Project generator)
pub global activate stagehand

# Generate web files.
# Already done it for you :)
# stagehand web-simple

# Install dependencies
pub get

# Start web
webdev serve

# Build for production
webdev build

# Start production server(by serve(Node.js server that does serving static files))
cd build && npx serve -l 4000
```
