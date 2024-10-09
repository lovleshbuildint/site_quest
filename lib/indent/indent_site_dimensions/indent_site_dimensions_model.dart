import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/sitedimentions/sitedimentions_widget.dart';
import 'indent_site_dimensions_widget.dart' show IndentSiteDimensionsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndentSiteDimensionsModel
    extends FlutterFlowModel<IndentSiteDimensionsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (DOADetailsstepfour)] action in indent_site_dimensions widget.
  ApiCallResponse? dOADFour;
  // Model for sitedimentions component.
  late SitedimentionsModel sitedimentionsModel;
  // Stores action output result for [Backend Call - API (UpdateDOADetailsfour)] action in Button widget.
  ApiCallResponse? dOADetailsFour;

  @override
  void initState(BuildContext context) {
    sitedimentionsModel = createModel(context, () => SitedimentionsModel());
    sitedimentionsModel.totalShopAreaTextControllerValidator =
        _formTextFieldValidator1;
    sitedimentionsModel.totalAreaOfferedTextControllerValidator =
        _formTextFieldValidator2;
    sitedimentionsModel.carpetAreaTextControllerValidator =
        _formTextFieldValidator3;
    sitedimentionsModel.shopDepthTextControllerValidator =
        _formTextFieldValidator4;
    sitedimentionsModel.shopWidthTextControllerValidator =
        _formTextFieldValidator5;
    sitedimentionsModel.shopHeightTextControllerValidator =
        _formTextFieldValidator6;
    sitedimentionsModel.totalFrontageTextControllerValidator =
        _formTextFieldValidator7;
    sitedimentionsModel.frontageOfferedTextControllerValidator =
        _formTextFieldValidator8;
    sitedimentionsModel.singageWidthTextControllerValidator =
        _formTextFieldValidator9;
    sitedimentionsModel.singageHeightTextControllerValidator =
        _formTextFieldValidator10;
    sitedimentionsModel.noofHoursTextControllerValidator =
        _formTextFieldValidator11;
  }

  @override
  void dispose() {
    sitedimentionsModel.dispose();
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
