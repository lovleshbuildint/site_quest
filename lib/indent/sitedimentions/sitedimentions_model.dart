import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'sitedimentions_widget.dart' show SitedimentionsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SitedimentionsModel extends FlutterFlowModel<SitedimentionsWidget> {
  ///  Local state fields for this component.

  String? shapeSignage;

  String? vsat;

  String? acOduSpace;

  String? powerAvailability;

  String? totemPole;

  String? rampAvailability;

  int? shopType;

  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for totalShopArea widget.
  FocusNode? totalShopAreaFocusNode;
  TextEditingController? totalShopAreaTextController;
  String? Function(BuildContext, String?)? totalShopAreaTextControllerValidator;
  // State field(s) for TotalAreaOffered widget.
  FocusNode? totalAreaOfferedFocusNode;
  TextEditingController? totalAreaOfferedTextController;
  String? Function(BuildContext, String?)?
      totalAreaOfferedTextControllerValidator;
  // State field(s) for CarpetArea widget.
  FocusNode? carpetAreaFocusNode;
  TextEditingController? carpetAreaTextController;
  String? Function(BuildContext, String?)? carpetAreaTextControllerValidator;
  // State field(s) for ShopDepth widget.
  FocusNode? shopDepthFocusNode;
  TextEditingController? shopDepthTextController;
  String? Function(BuildContext, String?)? shopDepthTextControllerValidator;
  // State field(s) for ShopWidth widget.
  FocusNode? shopWidthFocusNode;
  TextEditingController? shopWidthTextController;
  String? Function(BuildContext, String?)? shopWidthTextControllerValidator;
  // State field(s) for ShopHeight widget.
  FocusNode? shopHeightFocusNode;
  TextEditingController? shopHeightTextController;
  String? Function(BuildContext, String?)? shopHeightTextControllerValidator;
  // State field(s) for TotalFrontage widget.
  FocusNode? totalFrontageFocusNode;
  TextEditingController? totalFrontageTextController;
  String? Function(BuildContext, String?)? totalFrontageTextControllerValidator;
  // State field(s) for frontageOffered widget.
  FocusNode? frontageOfferedFocusNode;
  TextEditingController? frontageOfferedTextController;
  String? Function(BuildContext, String?)?
      frontageOfferedTextControllerValidator;
  // State field(s) for SingageWidth widget.
  FocusNode? singageWidthFocusNode;
  TextEditingController? singageWidthTextController;
  String? Function(BuildContext, String?)? singageWidthTextControllerValidator;
  // State field(s) for singageHeight widget.
  FocusNode? singageHeightFocusNode;
  TextEditingController? singageHeightTextController;
  String? Function(BuildContext, String?)? singageHeightTextControllerValidator;
  // State field(s) for LShapeSingage widget.
  String? lShapeSingageValue;
  FormFieldController<String>? lShapeSingageValueController;
  // State field(s) for Vsat widget.
  String? vsatValue;
  FormFieldController<String>? vsatValueController;
  // State field(s) for AcODUSpace widget.
  String? acODUSpaceValue;
  FormFieldController<String>? acODUSpaceValueController;
  // State field(s) for PowerAvailability widget.
  String? powerAvailabilityValue;
  FormFieldController<String>? powerAvailabilityValueController;
  // State field(s) for NoofHours widget.
  FocusNode? noofHoursFocusNode;
  TextEditingController? noofHoursTextController;
  String? Function(BuildContext, String?)? noofHoursTextControllerValidator;
  // State field(s) for TotemPole widget.
  String? totemPoleValue;
  FormFieldController<String>? totemPoleValueController;
  // State field(s) for RampAvailability widget.
  String? rampAvailabilityValue;
  FormFieldController<String>? rampAvailabilityValueController;
  // State field(s) for NoteForProject-TIS widget.
  FocusNode? noteForProjectTISFocusNode;
  TextEditingController? noteForProjectTISTextController;
  String? Function(BuildContext, String?)?
      noteForProjectTISTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    totalShopAreaFocusNode?.dispose();
    totalShopAreaTextController?.dispose();

    totalAreaOfferedFocusNode?.dispose();
    totalAreaOfferedTextController?.dispose();

    carpetAreaFocusNode?.dispose();
    carpetAreaTextController?.dispose();

    shopDepthFocusNode?.dispose();
    shopDepthTextController?.dispose();

    shopWidthFocusNode?.dispose();
    shopWidthTextController?.dispose();

    shopHeightFocusNode?.dispose();
    shopHeightTextController?.dispose();

    totalFrontageFocusNode?.dispose();
    totalFrontageTextController?.dispose();

    frontageOfferedFocusNode?.dispose();
    frontageOfferedTextController?.dispose();

    singageWidthFocusNode?.dispose();
    singageWidthTextController?.dispose();

    singageHeightFocusNode?.dispose();
    singageHeightTextController?.dispose();

    noofHoursFocusNode?.dispose();
    noofHoursTextController?.dispose();

    noteForProjectTISFocusNode?.dispose();
    noteForProjectTISTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
