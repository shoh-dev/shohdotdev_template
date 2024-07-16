import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@Freezed()
class IpState with _$IpState {
  const factory IpState({
    required String ip,
    required int test,
  }) = _IpState;

  //initial factory method
  factory IpState.initial() => const IpState(ip: "", test: 0);
}
