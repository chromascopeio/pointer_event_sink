A Flutter widget that exposes a continuous flow of raw PointerEvents to a child's BuildContext.

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

