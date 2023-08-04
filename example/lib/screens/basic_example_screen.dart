import 'package:flutter/material.dart';
import 'package:pointer_event_sink/pointer_event_sink.dart' show PointerEventSink;
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
