import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shohdotdev_template/core/redux/app/models/redux_state.dart';

part 'model.freezed.dart';

@Freezed()
class IpState with _$IpState {
  const factory IpState({
    required ReduxState<String> ip,
  }) = _IpState;

  //initial factory method
  factory IpState.initial() => const IpState(ip: ReduxStateInitial());
}

class UpdateIpStateAction {
  final ReduxState<String>? ip;

  const UpdateIpStateAction({this.ip});
}
