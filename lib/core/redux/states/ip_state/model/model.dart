import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';

part 'model.freezed.dart';

@Freezed()
class IpState with _$IpState {
  const factory IpState({
    required Result<String> ip,
    required Result<int> count,
  }) = _IpState;

  //initial factory method
  factory IpState.initial() =>
      const IpState(ip: Result.none(), count: Result.none());
}

class UpdateIpStateAction {
  final Result<String>? ip;
  final Result<int>? count;

  const UpdateIpStateAction({this.ip, this.count});
}
