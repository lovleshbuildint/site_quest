import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:badges/badges.dart' as badges;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (RBI)] action in MainPage widget.
  ApiCallResponse? rbiresponse;
  // Stores action output result for [Backend Call - API (GetSite TypeFor SiteEvaluation )] action in MainPage widget.
  ApiCallResponse? getsitetypeforsiteevaluationresponse;
  // Stores action output result for [Backend Call - API (get Cash DeviceApi)] action in MainPage widget.
  ApiCallResponse? getcashdeviceapi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
