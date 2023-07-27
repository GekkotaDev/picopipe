/// Utility class providing pipelines within Dart.
class Pipe<T> {
  final T _value;

  /// The initial starting value of the pipeline.
  Pipe(this._value);

  /// End the pipeline to receive the final value.
  T call() => _value;

  /// Pipe the output of the previous [node] as the input for the given [node].
  /// Chained calls of the [to] method should have static type safety.
  Pipe<R> to<R>(R Function(T v) node) => Pipe(node(_value));
}
