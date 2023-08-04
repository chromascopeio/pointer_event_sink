import 'package:flutter/material.dart';
import 'package:pointer_event_sink/pointer_event_sink.dart' show PointerDetails;

class BasicExampleWidget extends StatelessWidget {
  const BasicExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(child: Text(PointerDetails.of(context).toString()));
  }
}
