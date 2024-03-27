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
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for landlordform component.
  late LandlordformModel landlordformModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    landlordformModel = createModel(context, () => LandlordformModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    landlordformModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
