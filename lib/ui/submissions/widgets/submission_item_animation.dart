import "package:flutter/material.dart";

class SubmissionItemAnimation extends StatelessWidget {
  const SubmissionItemAnimation({super.key, required this.animation, required this.child});

  final Animation<double> animation;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final forward = animation.isForwardOrCompleted;

    return SizeTransition(
      axis: Axis.vertical,
      sizeFactor: animation.drive(TweenSequence([
        TweenSequenceItem(
          tween: Tween(begin: 0.0, end: 1.0).chain(CurveTween(
            curve: forward ? Easing.standardDecelerate : Easing.standardDecelerate,
          )),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: ConstantTween(1.0),
          weight: 2,
        ),
      ])),
      child: SlideTransition(
        position: animation.drive(TweenSequence([
          TweenSequenceItem(
            tween: ConstantTween(Offset(0.2, 0.0)),
            weight: 1,
          ),
          TweenSequenceItem(
            tween: Tween(begin: Offset(0.2, 0.0), end: Offset(0.0, 0.0)).chain(CurveTween(
              curve: forward ? Easing.standardDecelerate : Easing.standardAccelerate,
            )),
            weight: 2,
          ),
        ])),
        child: FadeTransition(
          opacity: animation.drive(TweenSequence([
            TweenSequenceItem(
              tween: ConstantTween(0.0),
              weight: 1,
            ),
            TweenSequenceItem(
              tween: Tween(begin: 0.0, end: 1.0).chain(CurveTween(
                curve: forward ? Easing.standardDecelerate : Easing.standardAccelerate,
              )),
              weight: 2,
            ),
          ])),
          child: child,
        ),
      ),
    );
  }
}
