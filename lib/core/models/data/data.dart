import 'package:equatable/equatable.dart';

class Data<T> extends Equatable {
  final T data;

  const Data(this.data);

  @override
  List<Object> get props => [data as Object];
}

///Successful operation without data
class Void extends Data<void> {
  const Void() : super(null);
}
