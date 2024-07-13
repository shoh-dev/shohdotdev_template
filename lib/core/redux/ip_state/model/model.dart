import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';

part 'model.freezed.dart';

@Freezed()
class IpState with _$IpState {
  const factory IpState({
    required Result<String> ip,
  }) = _IpState;

  //initial factory method
  factory IpState.initial() => const IpState(ip: Result.none());
}

class UpdateIpStateAction {
  final Result<String>? ip;

  const UpdateIpStateAction({this.ip});
}
