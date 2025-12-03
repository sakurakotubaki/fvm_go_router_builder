import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bool_future.g.dart';

@Riverpod(keepAlive: true)
Future<bool> boolFuture(Ref ref) async {
  return true;
}