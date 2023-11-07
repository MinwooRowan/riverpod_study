// Package imports:

// Project imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_code_hooks/config/logger.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase<Object?> provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    logger.i(
        '[Porovider Logger]: ${provider.name ?? provider.runtimeType} didUpdateProvider / pv: $previousValue / nv: $newValue');
  }

  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value,
      ProviderContainer container) {
    logger.i(
        '[Porovider Logger]: ${provider.name ?? provider.runtimeType} didAddProvider / value : $value');
  }

  @override
  void didDisposeProvider(
      ProviderBase<Object?> provider, ProviderContainer container) {
    logger.i(
        '[Porovider Logger]: ${provider.name ?? provider.runtimeType} didDisposeProvider');
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    logger.e(
        '[Porovider Logger]: ${provider.name ?? provider.runtimeType} threw $error at $stackTrace');
  }
}
