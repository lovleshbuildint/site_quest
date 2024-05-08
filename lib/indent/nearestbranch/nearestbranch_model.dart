import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'nearestbranch_widget.dart' show NearestbranchWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NearestbranchModel extends FlutterFlowModel<NearestbranchWidget> {
  ///  Local state fields for this component.

  int? cRACoverage;

  ///  State fields for stateful widgets in this component.

  // State field(s) for CRACoverage widget.
  String? cRACoverageValue;
  FormFieldController<String>? cRACoverageValueController;
  // State field(s) for CRAAgency widget.
  String? cRAAgencyValue;
  FormFieldController<String>? cRAAgencyValueController;
  // State field(s) for BranchSOLID widget.
  FocusNode? branchSOLIDFocusNode;
  TextEditingController? branchSOLIDTextController;
  String? Function(BuildContext, String?)? branchSOLIDTextControllerValidator;
  // State field(s) for NearestBranchstext widget.
  FocusNode? nearestBranchstextFocusNode;
  TextEditingController? nearestBranchstextTextController;
  String? Function(BuildContext, String?)?
      nearestBranchstextTextControllerValidator;
  // State field(s) for distanceNearestBranch widget.
  FocusNode? distanceNearestBranchFocusNode;
  TextEditingController? distanceNearestBranchTextController;
  String? Function(BuildContext, String?)?
      distanceNearestBranchTextControllerValidator;
  // State field(s) for VideoURL widget.
  FocusNode? videoURLFocusNode;
  TextEditingController? videoURLTextController;
  String? Function(BuildContext, String?)? videoURLTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    branchSOLIDFocusNode?.dispose();
    branchSOLIDTextController?.dispose();

    nearestBranchstextFocusNode?.dispose();
    nearestBranchstextTextController?.dispose();

    distanceNearestBranchFocusNode?.dispose();
    distanceNearestBranchTextController?.dispose();

    videoURLFocusNode?.dispose();
    videoURLTextController?.dispose();
  }
}
