import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/nearestbranch/nearestbranch_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'indent_site_nearest_branch_widget.dart'
    show IndentSiteNearestBranchWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndentSiteNearestBranchModel
    extends FlutterFlowModel<IndentSiteNearestBranchWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (DOADetailsstepfive)] action in indent_site_nearest_branch widget.
  ApiCallResponse? apiResultuyr;
  // Model for nearestbranch component.
  late NearestbranchModel nearestbranchModel;
  // Stores action output result for [Backend Call - API (UpdateDOADetailsfive)] action in Button widget.
  ApiCallResponse? dOADetailsfive;

  @override
  void initState(BuildContext context) {
    nearestbranchModel = createModel(context, () => NearestbranchModel());
    nearestbranchModel.distanceNearestBranchTextControllerValidator =
        _formTextFieldValidator;
  }

  @override
  void dispose() {
    nearestbranchModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }
}
