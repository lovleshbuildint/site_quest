import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/commercial_advance/commercial_advance_widget.dart';
import 'open_site_commercial_widget.dart' show OpenSiteCommercialWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpenSiteCommercialModel
    extends FlutterFlowModel<OpenSiteCommercialWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for commercial_advance component.
  late CommercialAdvanceModel commercialAdvanceModel;
  // Stores action output result for [Backend Call - API (DOADetailsstepTHIRDworddoc)] action in Button widget.
  ApiCallResponse? tDOADetailsThirdWordAdvance;

  @override
  void initState(BuildContext context) {
    commercialAdvanceModel =
        createModel(context, () => CommercialAdvanceModel());
  }

  @override
  void dispose() {
    commercialAdvanceModel.dispose();
  }
}
