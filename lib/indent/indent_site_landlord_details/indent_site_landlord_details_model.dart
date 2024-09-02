import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/landlordform/landlordform_widget.dart';
import 'indent_site_landlord_details_widget.dart'
    show IndentSiteLandlordDetailsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndentSiteLandlordDetailsModel
    extends FlutterFlowModel<IndentSiteLandlordDetailsWidget> {
  ///  Local state fields for this page.

  int? istate;

  int? iDistrict;

  int? iCity;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for landlordform component.
  late LandlordformModel landlordformModel;
  // Stores action output result for [Backend Call - API (DOADetailsstepSECONDworddoc)] action in Button widget.
  ApiCallResponse? updateDOADdeatils2;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? please;

  @override
  void initState(BuildContext context) {
    landlordformModel = createModel(context, () => LandlordformModel());
    landlordformModel.landoardNameTextControllerValidator =
        _formTextFieldValidator1;
    landlordformModel.percentTextControllerValidator = _formTextFieldValidator2;
    landlordformModel.addressTextControllerValidator = _formTextFieldValidator3;
    landlordformModel.pincodeTextControllerValidator = _formTextFieldValidator4;
    landlordformModel.contactNameTextControllerValidator =
        _formTextFieldValidator5;
    landlordformModel.emailidTextControllerValidator = _formTextFieldValidator6;
    landlordformModel.chequefieldTextControllerValidator =
        _formTextFieldValidator7;
    landlordformModel.lLchequefieldTextControllerValidator =
        _formTextFieldValidator8;
    landlordformModel.bankAccountNumberTextControllerValidator =
        _formTextFieldValidator9;
    landlordformModel.bankBranchTextControllerValidator =
        _formTextFieldValidator10;
    landlordformModel.panNumberTextControllerValidator =
        _formTextFieldValidator11;
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

    if (val.length < 10) {
      return 'Please fill full contact';
    }
    if (val.length > 10) {
      return 'Only 10 Digit';
    }
    if (!RegExp(
            '(?!.*@outlook\\.com|.*@gmail\\.com|.*@yahoo\\.com|.*@yahoo\\.in|.*@yahoo\\.co.in|.*hitachi-payments\\.com)(\\w[\\w\\.]*@\\w+\\.[\\w\\.]+)')
        .hasMatch(val)) {
      return 'Please  use vaild Email Id';
    }
    return null;
  }

  String? _formTextFieldValidator7(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator8(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator9(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator10(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator11(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }
}
