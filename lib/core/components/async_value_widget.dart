import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class AsyncValueWidget<T> extends StatelessWidget {
  /// A widget that listens to an [AsyncValue] and rebuilds when the state changes.
  const AsyncValueWidget({
    super.key,
    required this.value,
    required Widget Function(T data) this.data,
    required Widget Function(Object error) this.error,
    required Widget Function() this.loading,
    this.skipError = false,
    this.skipLoadingOnRefresh = false,
    this.skipLoadingOnReload = false,
  }) : builder = null;

  /// A widget that listens to an [AsyncValue] and rebuilds when the state changes.
  /// Custom builder function that allows you to build the widget based on the state.
  const AsyncValueWidget.builder({
    super.key,
    required this.value,
    required Widget Function(BuildContext context, AsyncValue<T> data) this.builder,
  })  : data = null,
        error = null,
        loading = null,
        skipError = false,
        skipLoadingOnRefresh = false,
        skipLoadingOnReload = false;

  final AsyncValue<T> value;
  final Widget Function(T data)? data;
  final Widget Function(Object error)? error;
  final Widget Function()? loading;
  final bool skipError;
  final bool skipLoadingOnRefresh;
  final bool skipLoadingOnReload;
  final Widget Function(BuildContext context, AsyncValue<T> data)? builder;

  @override
  Widget build(BuildContext context) {
    if (builder != null) return builder!.call(context, value);
    return value.when(
      data: (d) => data!(d),
      loading: () => loading!(),
      error: (e, _) => error!(e),
      skipError: skipError,
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      skipLoadingOnReload: skipLoadingOnReload,
    );
  }
}
