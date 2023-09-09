import 'pagination_meta.dart';

class ApiResponse<T> {
  final bool? success;
  final String? message;
  final List<T>? data;
  final PaginationMeta? meta;

  ApiResponse._({
    required this.success,
    required this.message,
    required this.data,
    required this.meta,
  });

  bool get isSuccess => success == true;
  bool get isError => message?.isNotEmpty == true;
  String get errorMessage => message ?? 'Error Occured';
  List<T> get getDataList => data ?? [];

  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'message': message,
      'data': data,
      'meta': meta,
    };
  }

  factory ApiResponse.fromMap(
    Map<String, dynamic> map,
    Function(Map<String, dynamic> data) modelMapper,
  ) {
    return ApiResponse._(
      success: map['success'] as bool?,
      message: map['message'] as String?,
      data: map["data"] != null
          ? List<T>.from(
              (map["data"] as List<dynamic>).map(
                (data) => modelMapper(data as Map<String, dynamic>),
              ),
            )
          : [],
      meta: map['meta'] as PaginationMeta?,
    );
  }
}
