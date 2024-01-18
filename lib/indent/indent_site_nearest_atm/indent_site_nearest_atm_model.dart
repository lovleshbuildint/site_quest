import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/nearestatm/nearestatm_widget.dart';
import 'indent_site_nearest_atm_widget.dart' show IndentSiteNearestAtmWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndentSiteNearestAtmModel
    extends FlutterFlowModel<IndentSiteNearestAtmWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for nearestatm component.
  late NearestatmModel nearestatmModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nearestatmModel = createModel(context, () => NearestatmModel());
  }

  void dispose() {
    unfocusNode.dispose();
    nearestatmModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
