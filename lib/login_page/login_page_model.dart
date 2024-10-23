import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldStudentNumber widget.
  FocusNode? textFieldStudentNumberFocusNode;
  TextEditingController? textFieldStudentNumberTextController;
  String? Function(BuildContext, String?)?
      textFieldStudentNumberTextControllerValidator;
  // State field(s) for TextFieldPassword widget.
  FocusNode? textFieldPasswordFocusNode;
  TextEditingController? textFieldPasswordTextController;
  late bool textFieldPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldPasswordTextControllerValidator;
  // Stores action output result for [Backend Call - API (Login (Auth))] action in Button widget.
  ApiCallResponse? apiResultcku;
  InstantTimer? getAssignmentsInterval;

  @override
  void initState(BuildContext context) {
    textFieldPasswordVisibility = false;
  }

  @override
  void dispose() {
    textFieldStudentNumberFocusNode?.dispose();
    textFieldStudentNumberTextController?.dispose();

    textFieldPasswordFocusNode?.dispose();
    textFieldPasswordTextController?.dispose();

    getAssignmentsInterval?.cancel();
  }
}
