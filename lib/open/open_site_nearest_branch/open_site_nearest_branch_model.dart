import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/nearestbranch/nearestbranch_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'open_site_nearest_branch_widget.dart' show OpenSiteNearestBranchWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpenSiteNearestBranchModel
    extends FlutterFlowModel<OpenSiteNearestBranchWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for nearestbranch component.
  late NearestbranchModel nearestbranchModel;
  // Stores action output result for [Backend Call - API (UpdateDOADetailsfive)] action in Button widget.
  ApiCallResponse? dOADetailsfive;

  @override
  void initState(BuildContext context) {
    nearestbranchModel = createModel(context, () => NearestbranchModel());
  }

  @override
  void dispose() {
    nearestbranchModel.dispose();
  }
}
