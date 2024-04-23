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
  // Stores action output result for [Backend Call - API (master)] action in MainPage widget.
  ApiCallResponse? apiResultksz;
  // Stores action output result for [Backend Call - API (Get Project Type)] action in MainPage widget.
  ApiCallResponse? apiresultgetprojecttype;
  // Stores action output result for [Backend Call - API (Get Cash Device Movement CategoryForSiteEvaluation)] action in MainPage widget.
  ApiCallResponse? cashdevicemovementcatreponse;
  // Stores action output result for [Backend Call - API (get shop type site)] action in MainPage widget.
  ApiCallResponse? getshoptypesiteresponse;
  // Stores action output result for [Backend Call - API (circle)] action in MainPage widget.
  ApiCallResponse? circlereponse;
  // Stores action output result for [Backend Call - API (tis)] action in MainPage widget.
  ApiCallResponse? tisreponse;
  // Stores action output result for [Backend Call - API (GetSite TypeFor SiteEvaluation )] action in MainPage widget.
  ApiCallResponse? siteTypeEvaluationResponse;
  // Stores action output result for [Backend Call - API (get Cash DeviceApi)] action in MainPage widget.
  ApiCallResponse? getcashdeviceapiresponse;
  // Stores action output result for [Backend Call - API (staregty)] action in MainPage widget.
  ApiCallResponse? staregtyreponse;
  // Stores action output result for [Backend Call - API (GetPOITypeForSiteEvaluation)] action in MainPage widget.
  ApiCallResponse? getPoiTypeForSiteEvaluationResponse;
  // Stores action output result for [Backend Call - API (RBI)] action in MainPage widget.
  ApiCallResponse? rBIResponse;
  // Stores action output result for [Backend Call - API (getsitevisiteddbydeptAPI)] action in MainPage widget.
  ApiCallResponse? getsitevisiteedbydeptapiresponse;
  // Stores action output result for [Backend Call - API (getSecondSiteVisiters)] action in MainPage widget.
  ApiCallResponse? getsecondsitevisiters;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
