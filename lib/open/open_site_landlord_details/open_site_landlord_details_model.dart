import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/landlordform/landlordform_widget.dart';
import 'open_site_landlord_details_widget.dart'
    show OpenSiteLandlordDetailsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpenSiteLandlordDetailsModel
    extends FlutterFlowModel<OpenSiteLandlordDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for landlordform component.
  late LandlordformModel landlordformModel;
  // Stores action output result for [Backend Call - API (DOADetailsstepSECONDworddoc)] action in Button widget.
  ApiCallResponse? updateDOADdeatilssecondwordSite;

  @override
  void initState(BuildContext context) {
    landlordformModel = createModel(context, () => LandlordformModel());
  }

  @override
  void dispose() {
    landlordformModel.dispose();
  }
}
