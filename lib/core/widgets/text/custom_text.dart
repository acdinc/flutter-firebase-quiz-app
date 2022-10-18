import 'package:flutter/widgets.dart';

import '../../utils/extensions/build_context_extensions.dart';

class CustomText extends Text {
  CustomText.homeAppBarTitle(super.text, BuildContext context, {super.key})
      : super(
          style: context.textTheme.headline5!.copyWith(
            fontWeight: FontWeight.w600,
            color: context.primaryColor,
          ),
        );

  CustomText.topicCardText(String text, BuildContext context, {super.key})
      : super(
          text.replaceAll(r'\n', '\n'),
          maxLines: 2,
          softWrap: true,
          textAlign: TextAlign.center,
          style: context.textTheme.caption,
        );

  CustomText.quizCardQuizNo(int index, BuildContext context, {super.key})
      : super(
          '${index < 10 ? 0 : ''}${index + 1}',
          style: context.textTheme.headlineMedium?.copyWith(
            color: context.theme.disabledColor.withOpacity(0.1),
          ),
        );

  CustomText.quizCardQuizTitle(super.text, BuildContext context, {super.key})
      : super(style: context.textTheme.subtitle1);

  CustomText.topicDetailsTitle(String text, BuildContext context, {super.key})
      : super(text.replaceAll(r'\n', ' '), style: context.textTheme.headline6);

  CustomText.topicDetailsSubTitle(super.text, BuildContext context, {super.key})
      : super(style: context.textTheme.caption);
}
