import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (RBInew)] action in MainPage widget.
  ApiCallResponse? rbiresponse;
  // Stores action output result for [Backend Call - API (GetSite TypeFor SiteEvaluation )] action in MainPage widget.
  ApiCallResponse? getsitetypeforsiteevaluationresponse;
  // Stores action output result for [Backend Call - API (get Cash DeviceApi)] action in MainPage widget.
  ApiCallResponse? getcashdeviceapi;
  // Stores action output result for [Backend Call - API (Get Project Type)] action in MainPage widget.
  ApiCallResponse? getProjecTypeResponse;
  // Stores action output result for [Backend Call - API (Get Cash Device Movement CategoryForSiteEvaluation)] action in MainPage widget.
  ApiCallResponse? getCashDeviceMovementCategoryResponse;
  // Stores action output result for [Backend Call - API (get shop type site)] action in MainPage widget.
  ApiCallResponse? getShopTypeSiteResponse;
  // Stores action output result for [Backend Call - API (staregty)] action in MainPage widget.
  ApiCallResponse? straegtyResponse;
  // Stores action output result for [Backend Call - API (circle)] action in MainPage widget.
  ApiCallResponse? circelResponse;
  // Stores action output result for [Backend Call - API (tis)] action in MainPage widget.
  ApiCallResponse? tisResponse;
  // Stores action output result for [Backend Call - API (GetPOITypeForSiteEvaluation)] action in MainPage widget.
  ApiCallResponse? poiType;
  // Stores action output result for [Backend Call - API (City)] action in MainPage widget.
  ApiCallResponse? cityresponse;
  // Stores action output result for [Backend Call - API (getsitevisiteddbydeptAPI)] action in MainPage widget.
  ApiCallResponse? getsitevisitedbydeptapiresponse;
  // Stores action output result for [Backend Call - API (ListSites)] action in MainPage widget.
  ApiCallResponse? listsitesresponse;
  // Stores action output result for [Backend Call - API (SecondSiteVisitersNEW)] action in MainPage widget.
  ApiCallResponse? secondsiteVisiterNew;
  // Stores action output result for [Backend Call - API (getsitevisiteddbydeptAPI)] action in MainPage widget.
  ApiCallResponse? apiResultsitevisitedbydept;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
