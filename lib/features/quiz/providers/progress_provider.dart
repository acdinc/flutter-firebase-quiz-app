import 'package:flutter_riverpod/flutter_riverpod.dart';

final progressProvider = StateProvider.autoDispose<double>((_) => 0);
