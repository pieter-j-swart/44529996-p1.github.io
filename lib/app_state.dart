import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _authAccessToken = '';
  String get authAccessToken => _authAccessToken;
  set authAccessToken(String value) {
    _authAccessToken = value;
  }

  String _authRefreshToken = '';
  String get authRefreshToken => _authRefreshToken;
  set authRefreshToken(String value) {
    _authRefreshToken = value;
  }

  String _userFirstName = '';
  String get userFirstName => _userFirstName;
  set userFirstName(String value) {
    _userFirstName = value;
  }

  String _userLastName = '';
  String get userLastName => _userLastName;
  set userLastName(String value) {
    _userLastName = value;
  }

  String _userStudentNumber = '';
  String get userStudentNumber => _userStudentNumber;
  set userStudentNumber(String value) {
    _userStudentNumber = value;
  }

  bool _isErrorLogin = false;
  bool get isErrorLogin => _isErrorLogin;
  set isErrorLogin(bool value) {
    _isErrorLogin = value;
  }

  bool _isErrorLogout = false;
  bool get isErrorLogout => _isErrorLogout;
  set isErrorLogout(bool value) {
    _isErrorLogout = value;
  }

  String _logoutResponseMessage = '';
  String get logoutResponseMessage => _logoutResponseMessage;
  set logoutResponseMessage(String value) {
    _logoutResponseMessage = value;
  }

  String _loginResponseDetail = '';
  String get loginResponseDetail => _loginResponseDetail;
  set loginResponseDetail(String value) {
    _loginResponseDetail = value;
  }

  String _loginStatusCode = '';
  String get loginStatusCode => _loginStatusCode;
  set loginStatusCode(String value) {
    _loginStatusCode = value;
  }

  String _logoutStatusCode = '';
  String get logoutStatusCode => _logoutStatusCode;
  set logoutStatusCode(String value) {
    _logoutStatusCode = value;
  }

  String _userId = '';
  String get userId => _userId;
  set userId(String value) {
    _userId = value;
  }

  bool _isEmergencyAssigned = false;
  bool get isEmergencyAssigned => _isEmergencyAssigned;
  set isEmergencyAssigned(bool value) {
    _isEmergencyAssigned = value;
  }

  List<dynamic> _assignmentList = [];
  List<dynamic> get assignmentList => _assignmentList;
  set assignmentList(List<dynamic> value) {
    _assignmentList = value;
  }

  void addToAssignmentList(dynamic value) {
    assignmentList.add(value);
  }

  void removeFromAssignmentList(dynamic value) {
    assignmentList.remove(value);
  }

  void removeAtIndexFromAssignmentList(int index) {
    assignmentList.removeAt(index);
  }

  void updateAssignmentListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    assignmentList[index] = updateFn(_assignmentList[index]);
  }

  void insertAtIndexInAssignmentList(int index, dynamic value) {
    assignmentList.insert(index, value);
  }

  List<dynamic> _userAssignmentList = [];
  List<dynamic> get userAssignmentList => _userAssignmentList;
  set userAssignmentList(List<dynamic> value) {
    _userAssignmentList = value;
  }

  void addToUserAssignmentList(dynamic value) {
    userAssignmentList.add(value);
  }

  void removeFromUserAssignmentList(dynamic value) {
    userAssignmentList.remove(value);
  }

  void removeAtIndexFromUserAssignmentList(int index) {
    userAssignmentList.removeAt(index);
  }

  void updateUserAssignmentListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    userAssignmentList[index] = updateFn(_userAssignmentList[index]);
  }

  void insertAtIndexInUserAssignmentList(int index, dynamic value) {
    userAssignmentList.insert(index, value);
  }

  List<dynamic> _assignmentStatusList = [];
  List<dynamic> get assignmentStatusList => _assignmentStatusList;
  set assignmentStatusList(List<dynamic> value) {
    _assignmentStatusList = value;
  }

  void addToAssignmentStatusList(dynamic value) {
    assignmentStatusList.add(value);
  }

  void removeFromAssignmentStatusList(dynamic value) {
    assignmentStatusList.remove(value);
  }

  void removeAtIndexFromAssignmentStatusList(int index) {
    assignmentStatusList.removeAt(index);
  }

  void updateAssignmentStatusListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    assignmentStatusList[index] = updateFn(_assignmentStatusList[index]);
  }

  void insertAtIndexInAssignmentStatusList(int index, dynamic value) {
    assignmentStatusList.insert(index, value);
  }

  List<String> _assignmentStatusIds = [];
  List<String> get assignmentStatusIds => _assignmentStatusIds;
  set assignmentStatusIds(List<String> value) {
    _assignmentStatusIds = value;
  }

  void addToAssignmentStatusIds(String value) {
    assignmentStatusIds.add(value);
  }

  void removeFromAssignmentStatusIds(String value) {
    assignmentStatusIds.remove(value);
  }

  void removeAtIndexFromAssignmentStatusIds(int index) {
    assignmentStatusIds.removeAt(index);
  }

  void updateAssignmentStatusIdsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    assignmentStatusIds[index] = updateFn(_assignmentStatusIds[index]);
  }

  void insertAtIndexInAssignmentStatusIds(int index, String value) {
    assignmentStatusIds.insert(index, value);
  }

  List<String> _assignmentStatusNames = [];
  List<String> get assignmentStatusNames => _assignmentStatusNames;
  set assignmentStatusNames(List<String> value) {
    _assignmentStatusNames = value;
  }

  void addToAssignmentStatusNames(String value) {
    assignmentStatusNames.add(value);
  }

  void removeFromAssignmentStatusNames(String value) {
    assignmentStatusNames.remove(value);
  }

  void removeAtIndexFromAssignmentStatusNames(int index) {
    assignmentStatusNames.removeAt(index);
  }

  void updateAssignmentStatusNamesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    assignmentStatusNames[index] = updateFn(_assignmentStatusNames[index]);
  }

  void insertAtIndexInAssignmentStatusNames(int index, String value) {
    assignmentStatusNames.insert(index, value);
  }

  List<String> _assignmentStatusDescriptions = [];
  List<String> get assignmentStatusDescriptions =>
      _assignmentStatusDescriptions;
  set assignmentStatusDescriptions(List<String> value) {
    _assignmentStatusDescriptions = value;
  }

  void addToAssignmentStatusDescriptions(String value) {
    assignmentStatusDescriptions.add(value);
  }

  void removeFromAssignmentStatusDescriptions(String value) {
    assignmentStatusDescriptions.remove(value);
  }

  void removeAtIndexFromAssignmentStatusDescriptions(int index) {
    assignmentStatusDescriptions.removeAt(index);
  }

  void updateAssignmentStatusDescriptionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    assignmentStatusDescriptions[index] =
        updateFn(_assignmentStatusDescriptions[index]);
  }

  void insertAtIndexInAssignmentStatusDescriptions(int index, String value) {
    assignmentStatusDescriptions.insert(index, value);
  }

  String _assignmentStatusCode = '';
  String get assignmentStatusCode => _assignmentStatusCode;
  set assignmentStatusCode(String value) {
    _assignmentStatusCode = value;
  }

  LatLng? _locationmarker = const LatLng(-26.712272304542797, 27.10981333783249);
  LatLng? get locationmarker => _locationmarker;
  set locationmarker(LatLng? value) {
    _locationmarker = value;
  }

  List<LatLng> _locationmarkers = [
    const LatLng(-26.715, 27.1025),
    const LatLng(-26.765, 27.1825)
  ];
  List<LatLng> get locationmarkers => _locationmarkers;
  set locationmarkers(List<LatLng> value) {
    _locationmarkers = value;
  }

  void addToLocationmarkers(LatLng value) {
    locationmarkers.add(value);
  }

  void removeFromLocationmarkers(LatLng value) {
    locationmarkers.remove(value);
  }

  void removeAtIndexFromLocationmarkers(int index) {
    locationmarkers.removeAt(index);
  }

  void updateLocationmarkersAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    locationmarkers[index] = updateFn(_locationmarkers[index]);
  }

  void insertAtIndexInLocationmarkers(int index, LatLng value) {
    locationmarkers.insert(index, value);
  }

  LatLng? _destinationLocation = const LatLng(0, 0);
  LatLng? get destinationLocation => _destinationLocation;
  set destinationLocation(LatLng? value) {
    _destinationLocation = value;
  }

  String _routeDistance = '';
  String get routeDistance => _routeDistance;
  set routeDistance(String value) {
    _routeDistance = value;
  }

  String _routeDuration = '';
  String get routeDuration => _routeDuration;
  set routeDuration(String value) {
    _routeDuration = value;
  }

  bool _emergencySelected = false;
  bool get emergencySelected => _emergencySelected;
  set emergencySelected(bool value) {
    _emergencySelected = value;
  }

  bool _emergencyAssigned = false;
  bool get emergencyAssigned => _emergencyAssigned;
  set emergencyAssigned(bool value) {
    _emergencyAssigned = value;
  }

  String _emergencyIdToLocate = '';
  String get emergencyIdToLocate => _emergencyIdToLocate;
  set emergencyIdToLocate(String value) {
    _emergencyIdToLocate = value;
  }

  String _assignmentIdToLocate = '';
  String get assignmentIdToLocate => _assignmentIdToLocate;
  set assignmentIdToLocate(String value) {
    _assignmentIdToLocate = value;
  }

  String _emergencyStatusCode = '';
  String get emergencyStatusCode => _emergencyStatusCode;
  set emergencyStatusCode(String value) {
    _emergencyStatusCode = value;
  }

  String _locationToLocate = '';
  String get locationToLocate => _locationToLocate;
  set locationToLocate(String value) {
    _locationToLocate = value;
  }

  String _userToLocateStudentNumber = '';
  String get userToLocateStudentNumber => _userToLocateStudentNumber;
  set userToLocateStudentNumber(String value) {
    _userToLocateStudentNumber = value;
  }

  String _locationToLocateLatitude = '';
  String get locationToLocateLatitude => _locationToLocateLatitude;
  set locationToLocateLatitude(String value) {
    _locationToLocateLatitude = value;
  }

  String _locationToLocateLongitude = '';
  String get locationToLocateLongitude => _locationToLocateLongitude;
  set locationToLocateLongitude(String value) {
    _locationToLocateLongitude = value;
  }

  String _userToLocateId = '';
  String get userToLocateId => _userToLocateId;
  set userToLocateId(String value) {
    _userToLocateId = value;
  }

  String _locationStatusCode = '';
  String get locationStatusCode => _locationStatusCode;
  set locationStatusCode(String value) {
    _locationStatusCode = value;
  }
}
