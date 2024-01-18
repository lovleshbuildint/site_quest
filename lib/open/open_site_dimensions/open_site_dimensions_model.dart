import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/sitedimentions/sitedimentions_widget.dart';
import 'open_site_dimensions_widget.dart' show OpenSiteDimensionsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpenSiteDimensionsModel
    extends FlutterFlowModel<OpenSiteDimensionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sitedimentions component.
  late SitedimentionsModel sitedimentionsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sitedimentionsModel = createModel(context, () => SitedimentionsModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sitedimentionsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
