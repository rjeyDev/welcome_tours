import 'package:equatable/equatable.dart';

abstract class HttpResponse extends Equatable {
  final dynamic data;
  final int? statusCode;
  final String? statusMessage;

  const HttpResponse(this.data, this.statusCode, this.statusMessage);
  @override
  List<Object?> get props => [data, statusCode, statusMessage];
}

class SuccessResponse extends HttpResponse {
  const SuccessResponse({required dynamic data, int? statusCode, String? statusMessage}) : super(data, statusCode, statusMessage);
}

class FailResponse extends HttpResponse {
  const FailResponse({String statusMessage = "", int code = 0}) : super(null, code, statusMessage);

  bool get notInternetConnection => statusCode == 0;
}
