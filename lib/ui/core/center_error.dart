import "package:flutter/material.dart";

import "../../i18n/strings.g.dart";

class CenterError extends StatelessWidget {
  const CenterError(this.error, {super.key});

  final Object error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(tr.common.errorOccurred(message: error.toString())),
      ),
    );
  }
}
