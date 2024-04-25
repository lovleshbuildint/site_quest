import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'open_site_details_widget.dart' show OpenSiteDetailsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpenSiteDetailsModel extends FlutterFlowModel<OpenSiteDetailsWidget> {
  ///  Local state fields for this page.

  int? idevicetypes;

  int? isitetypes;

  int? iprojecttypes;

  int? ilisttypes;

  int? ishoptypes;

  int? icashdevicetypes;

  int? ichasdevicemovementcategorys;

  int? isitevisitedbys;

  int? isitevisitedbynames;

  int? isecondsitevisitedbynames;

  int? isiteddeps;

  int? iTisTypes;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for Sitetype widget.
  String? sitetypeValue;
  FormFieldController<String>? sitetypeValueController;
  // State field(s) for CashDevice widget.
  String? cashDeviceValue;
  FormFieldController<String>? cashDeviceValueController;
  // State field(s) for CashDeviceMovement widget.
  String? cashDeviceMovementValue;
  FormFieldController<String>? cashDeviceMovementValueController;
  // State field(s) for TisType widget.
  String? tisTypeValue;
  FormFieldController<String>? tisTypeValueController;
  // State field(s) for ProjectType widget.
  String? projectTypeValue;
  FormFieldController<String>? projectTypeValueController;
  // State field(s) for BusinessType widget.
  String? businessTypeValue;
  FormFieldController<String>? businessTypeValueController;
  // State field(s) for StrategyDropDwon widget.
  String? strategyDropDwonValue;
  FormFieldController<String>? strategyDropDwonValueController;
  // State field(s) for POIList widget.
  String? pOIListValue;
  FormFieldController<String>? pOIListValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for Circle widget.
  String? circleValue;
  FormFieldController<String>? circleValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for RBICategory widget.
  String? rBICategoryValue;
  FormFieldController<String>? rBICategoryValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for DropDown widget.
  String? dropDownValue7;
  FormFieldController<String>? dropDownValueController7;
  // State field(s) for DropDown widget.
  String? dropDownValue8;
  FormFieldController<String>? dropDownValueController8;
  // State field(s) for DropDown widget.
  String? dropDownValue9;
  FormFieldController<String>? dropDownValueController9;
  // State field(s) for DropDown widget.
  String? dropDownValue10;
  FormFieldController<String>? dropDownValueController10;
  // Stores action output result for [Backend Call - API (Update DOAdetailsfirst)] action in Button widget.
  ApiCallResponse? apiResultq6m;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();
  }
}
