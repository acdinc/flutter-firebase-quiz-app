import 'package:flutter/material.dart';

import '../../utils/gen/assets.gen.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.lottie.loadingCircleColorful.lottie();
  }
}
