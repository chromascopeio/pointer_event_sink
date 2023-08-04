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

class PointerEventSink extends StatefulWidget {
  const PointerEventSink(this.child, {super.key});
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



















/// PointerEventSink benefits:
/// 
/// - Lightweight, zero dependencies
/// - Simple to use API surface
/// - Platform agnostic 
/// - Better suited for physical pointer device drawing (ex: iPad pencil)
/// 
/// LucidCanvas benefits:
/// 
/// - Make it interactive with PointerEventSink - but only if you want.
/// - Use the vanilla Flutter CustomPaint API to draw - no wrappers.
/// - Build scenes declaratively by encapsulating atomic paint operations within discete entities.
/// - Create rich user experiences by attaching familiar event handlers to your entities.
/// 
/// LucidCanvas makes painting more semantic while enabling the rich interactive experiences that one would expect from a widget.
/// When it comes to painting, it is unopinionated - it provides building blocks for organizing your code without imposing use of 
/// an alternative painting API.po