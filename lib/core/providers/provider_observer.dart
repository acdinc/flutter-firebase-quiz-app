import 'dart:developer' as developer;

import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppProviderObserver extends ProviderObserver {
  @override
  void didAddProvider(
    ProviderBase<dynamic> provider,
    Object? value,
    ProviderContainer container,
  ) =>
      developer.log(
        '"${provider.name ?? provider.runtimeType} --> $value',
        name: 'Provider added',
      );

  @override
  void providerDidFail(
    ProviderBase<dynamic> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) =>
      developer.log(
        '"${provider.name ?? provider.runtimeType} --> $error',
        name: 'Provider failed',
      );

  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) =>
      developer.log(
        '"${provider.name ?? provider.runtimeType} --> $newValue',
        name: 'Provider updated',
      );

  @override
  void didDisposeProvider(
    ProviderBase<dynamic> provider,
    ProviderContainer container,
  ) =>
      developer.log(
        '"${provider.name ?? provider.runtimeType}',
        name: 'Provider disposed',
      );
}
