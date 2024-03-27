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
  // Model for commercial_advance component.
  late CommercialAdvanceModel commercialAdvanceModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    commercialAdvanceModel =
        createModel(context, () => CommercialAdvanceModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commercialAdvanceModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
