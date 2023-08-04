part of './pointer_event_sink.dart';

class PointerEventController extends ValueNotifier<PointerEvent> {
  PointerEventController(super.value);

  void update(PointerEvent nextValue) => value = nextValue;
}

/// Injects [PointerEvent] updates into the subtree's [BuildContext] to be read via `PointerDetails.of(context)`.
class PointerDetails extends InheritedNotifier<PointerEventController> {
  const PointerDetails({
    super.key,
    super.notifier,
    required super.child,
  });

  static PointerEvent of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<PointerDetails>()!
        .notifier!
        .value;
  }
}
