import 'package:flutter/cupertino.dart';
import 'package:share_plus/share_plus.dart';

mixin ShareManager {
  Future<void> share(BuildContext context, String text) async {
    // need to add to work on iPads
    final box = context.findRenderObject() as RenderBox?;

    await Share.share(
      text,
      subject: text,
      sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
    );
  }
}
