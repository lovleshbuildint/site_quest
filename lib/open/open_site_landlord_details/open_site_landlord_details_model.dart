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

  final formKey = GlobalKey<FormState>();
  // Model for landlordform component.
  late LandlordformModel landlordformModel;
  // Stores action output result for [Backend Call - API (DOADetailsstepSECONDworddoc)] action in Button widget.
  ApiCallResponse? updateDOADdeatilssecondwordSite;

  @override
  void initState(BuildContext context) {
    landlordformModel = createModel(context, () => LandlordformModel());
    landlordformModel.alernativenumberTextControllerValidator =
        _formTextFieldValidator1;
    landlordformModel.emailidTextControllerValidator = _formTextFieldValidator2;
    landlordformModel.faxTextControllerValidator = _formTextFieldValidator3;
  }

  @override
  void dispose() {
    landlordformModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'Please fill full contact number';
    }
    if (val.length > 10) {
      return 'Only 10 Digit';
    }

    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            '(?!.*@outlook\\.com|.*@gmail\\.com|.*@yahoo\\.com|.*@yahoo\\.in|.*@yahoo\\.co.in|.*hitachi-payments\\.com)(\\w[\\w\\.]*@\\w+\\.[\\w\\.]+)')
        .hasMatch(val)) {
      return 'Please Use Vaild EMail Id';
    }
    return null;
  }

  String? _formTextFieldValidator3(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }
    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }

    return null;
  }
}
