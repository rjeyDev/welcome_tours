import 'package:equatable/equatable.dart';

class Snapshot<T> extends Equatable {
  final T? data;
  final bool internetConnectionError;
  final bool badRequest;
  final bool authError;
  final String textError;

  bool get hasError => textError != '';
  bool get hasData => data != null;

  factory Snapshot.copy(Snapshot ref) {
    return Snapshot<T>(data: ref.data, internetConnectionError: ref.internetConnectionError, badRequest: ref.badRequest, textError: ref.textError);
  }

  const Snapshot({this.data, this.internetConnectionError = false, this.authError = false, this.badRequest = false, this.textError = ''});

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [data, internetConnectionError, badRequest, authError];
}
