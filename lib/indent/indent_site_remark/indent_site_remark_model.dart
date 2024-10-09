import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'indent_site_remark_widget.dart' show IndentSiteRemarkWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndentSiteRemarkModel extends FlutterFlowModel<IndentSiteRemarkWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (DOADetailsstepfive)] action in indent_site_remark widget.
  ApiCallResponse? apiResultuyr;
  // State field(s) for Remark1 widget.
  FocusNode? remark1FocusNode;
  TextEditingController? remark1TextController;
  String? Function(BuildContext, String?)? remark1TextControllerValidator;
  // State field(s) for Remark2 widget.
  FocusNode? remark2FocusNode;
  TextEditingController? remark2TextController;
  String? Function(BuildContext, String?)? remark2TextControllerValidator;
  // State field(s) for Remark3 widget.
  FocusNode? remark3FocusNode;
  TextEditingController? remark3TextController;
  String? Function(BuildContext, String?)? remark3TextControllerValidator;
  // State field(s) for Remark4 widget.
  FocusNode? remark4FocusNode;
  TextEditingController? remark4TextController;
  String? Function(BuildContext, String?)? remark4TextControllerValidator;
  // State field(s) for Remark5 widget.
  FocusNode? remark5FocusNode;
  TextEditingController? remark5TextController;
  String? Function(BuildContext, String?)? remark5TextControllerValidator;
  // Stores action output result for [Backend Call - API (UpdateDOADetailsfive)] action in Button widget.
  ApiCallResponse? dOADeatilsfive;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    remark1FocusNode?.dispose();
    remark1TextController?.dispose();

    remark2FocusNode?.dispose();
    remark2TextController?.dispose();

    remark3FocusNode?.dispose();
    remark3TextController?.dispose();

    remark4FocusNode?.dispose();
    remark4TextController?.dispose();

    remark5FocusNode?.dispose();
    remark5TextController?.dispose();
  }
}
