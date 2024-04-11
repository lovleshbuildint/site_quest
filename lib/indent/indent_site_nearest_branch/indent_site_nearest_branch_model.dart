import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/nearestbranch/nearestbranch_widget.dart';
import 'indent_site_nearest_branch_widget.dart'
    show IndentSiteNearestBranchWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndentSiteNearestBranchModel
    extends FlutterFlowModel<IndentSiteNearestBranchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for nearestbranch component.
  late NearestbranchModel nearestbranchModel;
  // Stores action output result for [Backend Call - API (UpdateDOADetailsfive)] action in Button widget.
  ApiCallResponse? apiResult3hi;

  @override
  void initState(BuildContext context) {
    nearestbranchModel = createModel(context, () => NearestbranchModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nearestbranchModel.dispose();
  }
}
