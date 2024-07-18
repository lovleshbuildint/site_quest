import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/commercial_advance/commercial_advance_widget.dart';
import 'indent_site_commercial_widget.dart' show IndentSiteCommercialWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndentSiteCommercialModel
    extends FlutterFlowModel<IndentSiteCommercialWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for commercial_advance component.
  late CommercialAdvanceModel commercialAdvanceModel;
  // Stores action output result for [Backend Call - API (DOADetailsstepTHIRDworddoc)] action in Button widget.
  ApiCallResponse? tDOADetailsThirdWordAdvance;
  // Stores action output result for [Backend Call - API (DOADetailsstepTHIRDworddoc)] action in Button widget.
  ApiCallResponse? dOADetailsThirdWordsecur;

  @override
  void initState(BuildContext context) {
    commercialAdvanceModel =
        createModel(context, () => CommercialAdvanceModel());
    commercialAdvanceModel.advanceRentAmountRENTTextControllerValidator =
        _formTextFieldValidator1;
    commercialAdvanceModel
            .totalAdvanceAmountRentOrSecurityMonthsPaidTextControllerValidator =
        _formTextFieldValidator2;
    commercialAdvanceModel.advanceAmountAdvanceTextControllerValidator =
        _formTextFieldValidator3;
    commercialAdvanceModel.balanceAmountAdvanceTextControllerValidator =
        _formTextFieldValidator4;
    commercialAdvanceModel.securityRentRentPerMonthsTextControllerValidator =
        _formTextFieldValidator5;
    commercialAdvanceModel.totalSecurityDepositTextControllerValidator =
        _formTextFieldValidator6;
    commercialAdvanceModel.advanceSDAmountSecurityTextControllerValidator =
        _formTextFieldValidator7;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commercialAdvanceModel.dispose();
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

  String? _formTextFieldValidator5(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator6(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator7(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }
}
