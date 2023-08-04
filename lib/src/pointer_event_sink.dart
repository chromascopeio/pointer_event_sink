import 'package:flutter/widgets.dart'
    show
        Widget,
        StatefulWidget,
        InheritedNotifier,
        ValueNotifier,
        Listener,
        PointerEvent,
        PointerUpEvent,
        BuildContext,
        State;

part './pointer_event_controller.dart';

/// Nests a [child] within a [Listener] that receives notifications from [PointerDetails].
class PointerEventSink extends StatefulWidget {
  const PointerEventSink(this.child, {super.key});

  /// The [PointerEvent] consuming widget.
  final Widget child;

  @override
  State<PointerEventSink> createState() => _PointerEventSinkState();
}

class _PointerEventSinkState extends State<PointerEventSink> {
  final PointerEventController _pointerctl =
      PointerEventController(const PointerUpEvent());

  @override
  Widget build(BuildContext context) {
    return PointerDetails(
      notifier: _pointerctl,
      child: Listener(
        child: widget.child,
        onPointerDown: (PointerEvent details) {
          _pointerctl.update(details);
        },
        onPointerMove: (PointerEvent details) {
          _pointerctl.update(details);
        },
        onPointerUp: (PointerEvent details) {
          _pointerctl.update(details);
        },
        onPointerHover: (PointerEvent details) {
          _pointerctl.update(details);
        },
        onPointerCancel: (PointerEvent details) {
          _pointerctl.update(details);
        },
      ),
    );
  }

  @override
  void dispose() {
    _pointerctl.dispose();
    super.dispose();
  }
}
