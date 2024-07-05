import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'nearestatm_widget.dart' show NearestatmWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NearestatmModel extends FlutterFlowModel<NearestatmWidget> {
  ///  Local state fields for this component.

  int? hitachiATM;

  int? atmStatus;

  ///  State fields for stateful widgets in this component.

  // State field(s) for ATMID widget.
  FocusNode? atmidFocusNode;
  TextEditingController? atmidTextController;
  String? Function(BuildContext, String?)? atmidTextControllerValidator;
  // State field(s) for ATMName widget.
  String? aTMNameValue;
  FormFieldController<String>? aTMNameValueController;
  // State field(s) for ATMSTatus widget.
  FormFieldController<String>? aTMSTatusValueController;
  // State field(s) for HitachiATM widget.
  String? hitachiATMValue;
  FormFieldController<String>? hitachiATMValueController;
  // State field(s) for DistanceKM widget.
  FocusNode? distanceKMFocusNode;
  TextEditingController? distanceKMTextController;
  String? Function(BuildContext, String?)? distanceKMTextControllerValidator;
  // State field(s) for Direction widget.
  FocusNode? directionFocusNode;
  TextEditingController? directionTextController;
  String? Function(BuildContext, String?)? directionTextControllerValidator;
  // State field(s) for AvgApproxTxns-Day widget.
  FocusNode? avgApproxTxnsDayFocusNode;
  TextEditingController? avgApproxTxnsDayTextController;
  String? Function(BuildContext, String?)?
      avgApproxTxnsDayTextControllerValidator;
  // State field(s) for AvgApproxTotal-Day widget.
  FocusNode? avgApproxTotalDayFocusNode;
  TextEditingController? avgApproxTotalDayTextController;
  String? Function(BuildContext, String?)?
      avgApproxTotalDayTextControllerValidator;
  // State field(s) for AvgOnus widget.
  FocusNode? avgOnusFocusNode;
  TextEditingController? avgOnusTextController;
  String? Function(BuildContext, String?)? avgOnusTextControllerValidator;
  // State field(s) for AvgOffus widget.
  FocusNode? avgOffusFocusNode;
  TextEditingController? avgOffusTextController;
  String? Function(BuildContext, String?)? avgOffusTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    atmidFocusNode?.dispose();
    atmidTextController?.dispose();

    distanceKMFocusNode?.dispose();
    distanceKMTextController?.dispose();

    directionFocusNode?.dispose();
    directionTextController?.dispose();

    avgApproxTxnsDayFocusNode?.dispose();
    avgApproxTxnsDayTextController?.dispose();

    avgApproxTotalDayFocusNode?.dispose();
    avgApproxTotalDayTextController?.dispose();

    avgOnusFocusNode?.dispose();
    avgOnusTextController?.dispose();

    avgOffusFocusNode?.dispose();
    avgOffusTextController?.dispose();
  }

  /// Additional helper methods.
  String? get aTMSTatusValue => aTMSTatusValueController?.value;
}
