class Data<T> {
  final T data;

  const Data(this.data);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data<T> && other.data == data;
  }

  @override
  int get hashCode => data.hashCode;

  @override
  String toString() => 'Data(data: $data)';
}

///Successful operation without data
class VoidData extends Data<void> {
  const VoidData() : super(null);
}
