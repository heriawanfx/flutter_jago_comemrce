import 'pagination_meta.dart';

class ApiResponse<T> {
  final bool? success;
  final String? message;
  final dynamic data;
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
  List<T> get getDataList {
    if (data is List?) {
      return (data ?? []) as List<T>;
    }
    return [];
  }

  T? get getData {
    if (data is T?) {
      return data as T?;
    }
    return null;
  }

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
      data: map['data'] != null
          ? map['data'] is List<dynamic>
              ? List<T>.from(
                  (map["data"] as List<dynamic>).map(
                    (data) => modelMapper(data as Map<String, dynamic>),
                  ),
                )
              : modelMapper(map["data"] as Map<String, dynamic>) as T?
          : null,
      meta: map['meta'] as PaginationMeta?,
    );
  }
}
