import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/nearestatm/nearestatm_widget.dart';
import 'indent_site_nearest_atm_widget.dart' show IndentSiteNearestAtmWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndentSiteNearestAtmModel
    extends FlutterFlowModel<IndentSiteNearestAtmWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for nearestatm component.
  late NearestatmModel nearestatmModel;
  // Stores action output result for [Backend Call - API (UpdatenearestATM)] action in Button widget.
  ApiCallResponse? updateNearestATM;

  @override
  void initState(BuildContext context) {
    nearestatmModel = createModel(context, () => NearestatmModel());

    nearestatmModel.atmidTextControllerValidator = _formTextFieldValidator1;
    nearestatmModel.distanceKMTextControllerValidator =
        _formTextFieldValidator2;
    nearestatmModel.directionTextControllerValidator = _formTextFieldValidator3;
    nearestatmModel.avgApproxTxnsDayTextControllerValidator =
        _formTextFieldValidator4;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nearestatmModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator3(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator4(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }
}
