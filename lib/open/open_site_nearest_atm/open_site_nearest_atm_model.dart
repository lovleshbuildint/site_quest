import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/nearestatm/nearestatm_widget.dart';
import 'open_site_nearest_atm_widget.dart' show OpenSiteNearestAtmWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpenSiteNearestAtmModel
    extends FlutterFlowModel<OpenSiteNearestAtmWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for nearestatm component.
  late NearestatmModel nearestatmModel;
  // Stores action output result for [Backend Call - API (UpdatenearestATM)] action in Button widget.
  ApiCallResponse? openSiteUpdateNearestATM;

  @override
  void initState(BuildContext context) {
    nearestatmModel = createModel(context, () => NearestatmModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nearestatmModel.dispose();
  }
}
