<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

PointerEventSink is a Flutter widget that exposes a continuous flow of raw PointerEvents to a child via BuildContext.

## Installation

`flutter pub add pointer_event_sink && flutter pub get`

## Usage

Simply wrap your consuming widget with the `PointerEventSink` – that's it!

```dart
import 'package:flutter/material.dart';
import 'package:pointer_event_sink/pointer_event_sink.dart';
import '../widgets/basic_example_widget.dart';

class BasicExampleScreen extends StatelessWidget {
  const BasicExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PointerEventSink(BasicExampleWidget()),
          ),
        ],
      ),
    );
  }
}

```

Once your consuming widget is wrapped, PointerEvents are now exposed via `PointerDetails.of(context)` inside that widget's `build` method.

```dart
import 'package:flutter/material.dart';
import 'package:pointer_event_sink/pointer_event_sink.dart' show PointerDetails;

class BasicExampleWidget extends StatelessWidget {
  const BasicExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(child: Text(PointerDetails.of(context).toString()));
  }
}

```

To test out this basic example, run the app in the `/examples` directory.

## Additional information

This package is a work in progress - info on use cases, roadmap, and contributing guidelines will be published at a later time.

<!-- TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more. -->
