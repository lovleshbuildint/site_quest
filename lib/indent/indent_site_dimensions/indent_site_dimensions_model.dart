import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/sitedimentions/sitedimentions_widget.dart';
import 'indent_site_dimensions_widget.dart' show IndentSiteDimensionsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndentSiteDimensionsModel
    extends FlutterFlowModel<IndentSiteDimensionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sitedimentions component.
  late SitedimentionsModel sitedimentionsModel;
  // Stores action output result for [Backend Call - API (UpdateDOADetailsfour)] action in Button widget.
  ApiCallResponse? dOADetailsFour;

  @override
  void initState(BuildContext context) {
    sitedimentionsModel = createModel(context, () => SitedimentionsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sitedimentionsModel.dispose();
  }
}
