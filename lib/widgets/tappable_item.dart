import 'package:flutter/material.dart';

import '../theme/swatches.dart';

class TappableItem extends StatefulWidget {
  const TappableItem({required this.child, this.onTap, this.onDoubleTap, this.padding, this.margin, this.highlightColor, Key? key}) : super(key: key);

  final Function()? onTap;
  final Function()? onDoubleTap;
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? highlightColor;

  @override
  State<StatefulWidget> createState() => _TappableItemState();
}

class _TappableItemState extends State<TappableItem> {
  bool _hovered = false;

  Color? get _backgroundColor => _hovered ? widget.highlightColor ?? slate.shade800 : null;

  MouseCursor get _cursor => _hovered ? SystemMouseCursors.click : MouseCursor.defer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => widget.onTap?.call(),
        onDoubleTap: () => widget.onDoubleTap?.call(),
        child: MouseRegion(
            onEnter: (_) => setState(() {
                  _hovered = true;
                }),
            onExit: (_) => setState(() {
                  _hovered = false;
                }),
            cursor: _cursor,
            child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                decoration: BoxDecoration(color: _backgroundColor),
                padding: widget.padding,
                margin: widget.margin,
                child: widget.child)));
  }
}
