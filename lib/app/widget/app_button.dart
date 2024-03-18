import 'package:budget_buddy/app/data/colors.dart';
import 'package:budget_buddy/app/utils/text_style.dart';
import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String title;
  final Widget? icon;
  final double? buttonWidth;
  final bool enabled;
  final Color? buttonColor;
  final Color? textColor;
  final EdgeInsets? padding;
  final double? minwidthh;
  final double? minlength;
  final double? verticalPaddingg;
  final double? elevation;
  final double? radiusb;
  final double? textSize;

  final Color? borderclr;
  final FocusNode? focusNode;
  final bool? animation;

  const AppButton({
    Key? key,
    this.buttonWidth,
    required this.title,
    this.buttonColor,
    this.radiusb,
    this.borderclr,
    this.minlength,
    this.minwidthh,
    this.textSize,
    this.enabled = true,
    required this.onPressed,
    this.icon,
    this.verticalPaddingg,
    this.textColor,
    this.elevation,
    this.padding,
    this.focusNode,
    this.animation = true,
  }) : super(key: key);

  @override
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 350),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );

    // Register the observer
    WidgetsBinding.instance.addObserver(this);

    // Start the animation when the widget is first built
    if (widget.animation == true) {
      _startAnimation();
    }
  }

  @override
  void dispose() {
    // Remove the observer
    WidgetsBinding.instance.removeObserver(this);

    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // Start the animation every time the screen is opened
    if (widget.animation == true) {
      if (state == AppLifecycleState.resumed) {
        _startAnimation();
      }
    }
  }

  void _startAnimation() {
    _controller.forward().then((_) {
      _controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.all(20.0),
      child: ButtonTheme(
        minWidth: widget.buttonWidth == 0.0 ? 0.0 : 40,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return SlideTransition(
              position: _offsetAnimation,
              child: Transform.scale(
                scale: Tween<double>(
                  begin: 1.0,
                  end: 0.9,
                )
                    .animate(
                      CurvedAnimation(
                        parent: _controller,
                        curve: Curves.linear,
                      ),
                    )
                    .value,
                child: ElevatedButton(
                  focusNode: widget.focusNode,
                  onPressed: widget.enabled
                      ? () {
                          widget.onPressed?.call();
                          _controller.forward().then((_) {
                            _controller.reverse();
                          });
                        }
                      : null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      widget.buttonColor == null
                          ? widget.enabled
                              ? AppColors.primary
                              : AppColors.primary.withOpacity(0.5)
                          : widget.enabled
                              ? widget.buttonColor
                              : widget.buttonColor!.withOpacity(0.5),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: widget.radiusb == null
                            ? BorderRadius.circular(8)
                            : BorderRadius.circular(widget.radiusb!),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: widget.borderclr == null
                            ? Colors.transparent
                            : widget.borderclr!,
                      ),
                    ),
                    minimumSize:
                        widget.minwidthh == null && widget.minlength == null
                            ? MaterialStateProperty.all(const Size(146, 56))
                            : MaterialStateProperty.all(
                                Size(widget.minwidthh!, widget.minlength!),
                              ),
                    elevation: MaterialStateProperty.all(widget.elevation ?? 0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      widget.icon == null ? const SizedBox() : widget.icon!,
                      Expanded(
                        child: Text(
                          widget.title,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: AppTextStyle.mediumStyle(
                            fontSize: widget.textSize ?? 15,
                            color: widget.textColor == null
                                ? AppColors.white
                                : widget.textColor!,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
