import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Triple Tech Titans API Group Code

class TripleTechTitansAPIGroup {
  static String getBaseUrl() =>
      'https://ttt-backend-api-31f48e9b7e2b.herokuapp.com';
  static Map<String, String> headers = {};
  static LoginAuthCall loginAuthCall = LoginAuthCall();
  static RefreshTokenCall refreshTokenCall = RefreshTokenCall();
  static LogoutCall logoutCall = LogoutCall();
  static RegisterUserCall registerUserCall = RegisterUserCall();
  static GetUsersCall getUsersCall = GetUsersCall();
  static CreateUserCall createUserCall = CreateUserCall();
  static GetUserByUUIDCall getUserByUUIDCall = GetUserByUUIDCall();
  static UpdateUserFullyCall updateUserFullyCall = UpdateUserFullyCall();
  static DeleteUserCall deleteUserCall = DeleteUserCall();
  static UpdateUserPartiallyCall updateUserPartiallyCall =
      UpdateUserPartiallyCall();
  static GetLocationsCall getLocationsCall = GetLocationsCall();
  static GetLocationByUUIDCall getLocationByUUIDCall = GetLocationByUUIDCall();
  static GetRecentUserLocationsCall getRecentUserLocationsCall =
      GetRecentUserLocationsCall();
  static ShareLocationCall shareLocationCall = ShareLocationCall();
  static GetEmergenciesCall getEmergenciesCall = GetEmergenciesCall();
  static GetEmergencyByUUIDCall getEmergencyByUUIDCall =
      GetEmergencyByUUIDCall();
  static UpdateEmergencyAlertFullyCall updateEmergencyAlertFullyCall =
      UpdateEmergencyAlertFullyCall();
  static UpdateEmergencyAlertPartiallyCall updateEmergencyAlertPartiallyCall =
      UpdateEmergencyAlertPartiallyCall();
  static GetEmergencyStatusesCall getEmergencyStatusesCall =
      GetEmergencyStatusesCall();
  static CreateEmergencyStatusCall createEmergencyStatusCall =
      CreateEmergencyStatusCall();
  static GetEmergenciesByStatusCall getEmergenciesByStatusCall =
      GetEmergenciesByStatusCall();
  static UpdateEmergencyStatusFullyCall updateEmergencyStatusFullyCall =
      UpdateEmergencyStatusFullyCall();
  static DeleteEmergencyStatusCall deleteEmergencyStatusCall =
      DeleteEmergencyStatusCall();
  static UpdateEmergencyStatusPartiallyCall updateEmergencyStatusPartiallyCall =
      UpdateEmergencyStatusPartiallyCall();
  static CreateEmergencyCall createEmergencyCall = CreateEmergencyCall();
  static GetAssignmentsCall getAssignmentsCall = GetAssignmentsCall();
  static CreateAssignmentCall createAssignmentCall = CreateAssignmentCall();
  static GetAssignmentStatusCall getAssignmentStatusCall =
      GetAssignmentStatusCall();
  static CreateAssignmentStatusCall createAssignmentStatusCall =
      CreateAssignmentStatusCall();
  static GetAssignmentByUUIDCall getAssignmentByUUIDCall =
      GetAssignmentByUUIDCall();
  static UpdateAssignmentFullyCall updateAssignmentFullyCall =
      UpdateAssignmentFullyCall();
  static DeleteAssignmentCall deleteAssignmentCall = DeleteAssignmentCall();
  static UpdateAssignmentPartiallyCall updateAssignmentPartiallyCall =
      UpdateAssignmentPartiallyCall();
  static GetNotificationsCall getNotificationsCall = GetNotificationsCall();
  static GetNotificationByUUIDCall getNotificationByUUIDCall =
      GetNotificationByUUIDCall();
  static GetNotificationByUserCall getNotificationByUserCall =
      GetNotificationByUserCall();
  static CreateNotificationCall createNotificationCall =
      CreateNotificationCall();
  static MarkNotificationAsReadCall markNotificationAsReadCall =
      MarkNotificationAsReadCall();
  static GetAuditLogsCall getAuditLogsCall = GetAuditLogsCall();
  static GetAuditLogByUUIDCall getAuditLogByUUIDCall = GetAuditLogByUUIDCall();
  static GetAuditLogsByUserCall getAuditLogsByUserCall =
      GetAuditLogsByUserCall();
  static CreateAuditLogCall createAuditLogCall = CreateAuditLogCall();
}

class LoginAuthCall {
  Future<ApiCallResponse> call({
    String? studentNumber = '',
    String? password = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "student_number": "$studentNumber",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login (Auth)',
      apiUrl: '$baseUrl/api/v1/auth/login/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  String? userStudentNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.student_number''',
      ));
  String? authAccessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access''',
      ));
  String? authRefreshToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.refresh''',
      ));
  String? userFirstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.first_name''',
      ));
  String? userLastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.last_name''',
      ));
  String? loginResponseDetail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RefreshTokenCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "student_number": "",
  "password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Refresh Token',
      apiUrl: '$baseUrl/api/v1/auth/refresh/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogoutCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? refresh = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "refresh": "$refresh"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Logout',
      apiUrl: '$baseUrl/api/v1/auth/logout/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterUserCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "student_number": "",
  "email": "",
  "password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register User',
      apiUrl: '$baseUrl/api/v1/auth/register/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsersCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Users',
      apiUrl: '$baseUrl/api/v1/users',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUserCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "student_number": "",
  "email": "",
  "password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create User',
      apiUrl: '$baseUrl/api/v1/users',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserByUUIDCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get User by UUID',
      apiUrl: '$baseUrl/api/v1/users/$uuid',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserFullyCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "student_number": "",
  "email": "",
  "first_name": "",
  "last_name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User Fully',
      apiUrl: '$baseUrl/api/v1/users/$uuid',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUserCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete User',
      apiUrl: '$baseUrl/api/v1/users/$uuid',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserPartiallyCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "student_number": "",
  "email": "",
  "first_name": "",
  "last_name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User Partially',
      apiUrl: '$baseUrl/api/v1/users/$uuid',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetLocationsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Locations',
      apiUrl: '$baseUrl/api/v1/locations',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetLocationByUUIDCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Location by UUID',
      apiUrl: '$baseUrl/api/v1/locations/$uuid',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? locationToLocateLatitude(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.latitude''',
      ));
  double? locationToLocateLongitude(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.longitude''',
      ));
  String? userToLocateId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_detail.id''',
      ));
}

class GetRecentUserLocationsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Recent User Locations',
      apiUrl: '$baseUrl/api/v1/locations/recent/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ShareLocationCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "user": "",
  "latitude": 0,
  "longitude": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Share Location',
      apiUrl: '$baseUrl/api/v1/locations/create-or-update/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEmergenciesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Emergencies',
      apiUrl: '$baseUrl/api/v1/emergencies',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEmergencyByUUIDCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Emergency by UUID',
      apiUrl: '$baseUrl/api/v1/emergencies/$uuid',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? locationToLocate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.location''',
      ));
  String? userToLocateStudentNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.student_number''',
      ));
}

class UpdateEmergencyAlertFullyCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "user_id": "",
  "location": "",
  "alert_type": "",
  "description": "",
  "status": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Emergency Alert Fully',
      apiUrl: '$baseUrl/api/v1/emergencies/update/$uuid',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateEmergencyAlertPartiallyCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "user_id": "",
  "location": "",
  "alert_type": "",
  "description": "",
  "status": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Emergency Alert Partially',
      apiUrl: '$baseUrl/api/v1/emergencies/update/$uuid',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEmergencyStatusesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Emergency Statuses',
      apiUrl: '$baseUrl/api/v1/emergencies/status',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateEmergencyStatusCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "status_name": "",
  "description": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Emergency Status',
      apiUrl: '$baseUrl/api/v1/emergencies/status',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEmergenciesByStatusCall {
  Future<ApiCallResponse> call({
    int? statusId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Emergencies by Status',
      apiUrl: '$baseUrl/api/v1/emergencies/status/$statusId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateEmergencyStatusFullyCall {
  Future<ApiCallResponse> call({
    int? statusId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "status_name": "",
  "description": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Emergency Status Fully',
      apiUrl: '$baseUrl/api/v1/emergencies/status/$statusId',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteEmergencyStatusCall {
  Future<ApiCallResponse> call({
    int? statusId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Emergency Status',
      apiUrl: '$baseUrl/api/v1/emergencies/status/$statusId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateEmergencyStatusPartiallyCall {
  Future<ApiCallResponse> call({
    int? statusId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "status_name": "",
  "description": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Emergency Status Partially',
      apiUrl: '$baseUrl/api/v1/emergencies/status/$statusId',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateEmergencyCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "user_id": "",
  "location": "",
  "description": "",
  "status": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Emergency',
      apiUrl: '$baseUrl/api/v1/emergencies/create/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAssignmentsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Assignments',
      apiUrl: '$baseUrl/api/v1/assignments',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? assignmentList(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  List<String>? assignmentIds(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? assignmentEmergencyIds(dynamic response) => (getJsonField(
        response,
        r'''$[:].emergency''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? assignmentStaffIds(dynamic response) => (getJsonField(
        response,
        r'''$[:].assigned_staff''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? assignmentAssignedTimestamps(dynamic response) => (getJsonField(
        response,
        r'''$[:].assigned_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? assignmentStatusIds(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class CreateAssignmentCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "emergency": "",
  "assigned_staff": "",
  "status": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Assignment',
      apiUrl: '$baseUrl/api/v1/assignments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAssignmentStatusCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Assignment Status',
      apiUrl: '$baseUrl/api/v1/assignments/status',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic assignmentStatusList(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  List<int>? assignmentStatusIds(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? assignmentStatusNames(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? assignmentStatusDescriptions(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CreateAssignmentStatusCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "status_name": "",
  "description": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Assignment Status',
      apiUrl: '$baseUrl/api/v1/assignments/status',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAssignmentByUUIDCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Assignment by UUID',
      apiUrl: '$baseUrl/api/v1/assignments/$uuid',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAssignmentFullyCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "emergency": "",
  "assigned_staff": "",
  "status": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Assignment Fully',
      apiUrl: '$baseUrl/api/v1/assignments/$uuid',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAssignmentCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Assignment',
      apiUrl: '$baseUrl/api/v1/assignments/$uuid',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAssignmentPartiallyCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "emergency": "",
  "assigned_staff": "",
  "status": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Assignment Partially',
      apiUrl: '$baseUrl/api/v1/assignments/$uuid',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetNotificationsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Notifications',
      apiUrl: '$baseUrl/api/v1/notifications',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetNotificationByUUIDCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Notification by UUID',
      apiUrl: '$baseUrl/api/v1/notifications/$uuid',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetNotificationByUserCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Notification by User',
      apiUrl: '$baseUrl/api/v1/notifications/user/$uuid',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNotificationCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "id": "",
  "user": "",
  "emergency": "",
  "message": "",
  "is_read": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Notification',
      apiUrl: '$baseUrl/api/v1/notifications/create',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MarkNotificationAsReadCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Mark Notification as Read',
      apiUrl: '$baseUrl/api/v1/notifications/mark-read/$uuid',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAuditLogsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Audit Logs',
      apiUrl: '$baseUrl/api/v1/audit-logs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAuditLogByUUIDCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Audit Log by UUID',
      apiUrl: '$baseUrl/api/v1/audit-logs/$uuid',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAuditLogsByUserCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Audit Logs by User',
      apiUrl: '$baseUrl/api/v1/audit-logs/user/$uuid',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAuditLogCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TripleTechTitansAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "user": "",
  "action": "",
  "ip_address": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Audit Log',
      apiUrl: '$baseUrl/api/v1/audit-log',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Triple Tech Titans API Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
