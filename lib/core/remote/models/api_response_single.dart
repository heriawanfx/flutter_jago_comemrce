class ApiResponseSingle<T> {
  final bool? success;
  final String? message;
  final T? data;

  ApiResponseSingle._({
    required this.success,
    required this.message,
    required this.data,
  });

  bool get isSuccess => success == true;
  bool get isError => message?.isNotEmpty == true;
  String get errorMessage => message ?? 'Error Occured';

  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'message': message,
      'data': data,
    };
  }

  factory ApiResponseSingle.fromMap(
    Map<String, dynamic> map,
    Function(Map<String, dynamic>) modelMapper,
  ) {
    return ApiResponseSingle._(
      success: map['success'] as bool,
      message: map['message'] as String?,
      data: map["data"] != null
          ? modelMapper(map["data"] as Map<String, dynamic>) as T?
          : null,
    );
  }
}
