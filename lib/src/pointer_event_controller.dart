part of './pointer_event_sink.dart';

class PointerEventController extends ValueNotifier<PointerEvent> {
  PointerEventController(super.value);
  void update(PointerEvent nextValue) => value = nextValue;
}

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
